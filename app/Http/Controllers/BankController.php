<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; 

use App\User;
use Illuminate\Support\Facades\Storage;
use App\Models\Artist;
use App\Models\Valyoux_access_tokens;
use App\Models\Notifications;
use Illuminate\Support\Facades\Mail;
use App\Mail\ValyouArtist;
use Twilio\Rest\Client;
use App\Models\Settings;
use App\Models\RevenueDetail;
use App\Models\Promotion;
use Illuminate\Support\Facades\DB;
use App\Models\PromotionDetails;
use App\Models\Wallet;
use App\Models\Admin_wallet;
use Illuminate\Support\Facades\Validator;

class BankController extends Controller
{
    
    public $successStatus = 200;
    public $errorStatus = 401;
    public function savePromotionData(Request $request){
        $id = auth()->user()->id;
        $current_artist = Artist::where('user_id', $id)->first();
       

        $wallet = auth()->user()->wallet;
        if($wallet > 0){
       
        if($request->promote_method == 'invester'){
            $getInvestorsId = $request->entity;
            $investors = explode(",", $getInvestorsId);
            $entity = json_encode($investors);
           
        } elseif($request->promote_method == 'email') {
            $getInvestorsId = $request->entity;
            $investors = explode(",", $getInvestorsId);
            $entity = json_encode($investors);
        } elseif($request->promote_method == 'number') {
            $getInvestorsId = $request->entity;
            $investors = explode(",", $getInvestorsId);
            $entity = json_encode($investors);
        }
        //  print_r(json_decode($entity));die;
        //
        $promotion = array(
            'song_id'=> $request->song_id,
            'type'=>$request->song_type,
            'budget'=>$request->promotion_pay,
            'reward'=>$request->promotion_pay,
            'promotion_type'=>$request->promote_type,
            'single_price'=>str_replace('$','',$request->each_promote_pay),
            'promote_method'=>$request->promote_method,
            'user_id'=>$id
        );
        $promotion = Promotion::create($promotion);
        
        // fees calculating and deduct amount from wallet
       
            $data_promote = Promotion::where('id',$promotion->id)->first();
            $promotion_fees = ($data_promote->budget / 100) * 100;
            $promote_amount = $data_promote->budget;
            $inc_fee_promote_total = $data_promote->budget + $promotion_fees;
            $newTotalAmount = $wallet - $inc_fee_promote_total;
            User::where('id', auth()->user()->id)->update(['wallet'=> $newTotalAmount]);
            // add amount of admin fees in admin wallet
            $admin = User::where('is_admin',1)->where('id',3)->first();
            $admin_wallet = User::where('id', $admin->id)->value('wallet');
            User::where('id', $admin->id)->update(['wallet'=> $admin_wallet + $promotion_fees]);
            
            // revenue artist company account
            $amount = $promotion_fees;
            RevenueDetail::insert(['amount' => $amount,'type'=>5,'admin_id'=>$admin->id,'created_at' => date("Y-m-d H:i:s", strtotime('now')),'updated_at' => date("Y-m-d H:i:s", strtotime('now'))]);
            $this->WalletAmountTransactionForAdmin(auth()->user()->id,3,$amount,null,$this->generateToken(),'USD',5);
            $this->walletTransaction(check_role(), auth()->user()->id, auth()->user()->id, null, $promote_amount, $this->generateToken(), 'Reserved VXD for promotion.', 5);
            $this->walletTransaction(check_role(), auth()->user()->id, 3, null, $promotion_fees, $this->generateToken(), 'Admin fees during purchase VXD for promotion.', 5);

            // notifications part send mail
            if($request->promote_method == "email" && $request->entity != ""){
				$promote_via_emails = json_decode($entity);
				
				// promote to potential customer via email
				foreach ($promote_via_emails as $item) {

                    $user_exist = User::where('email',$item)->first();
                    // dd($user_exist);die;
                    if(!empty($user_exist)){
                        $message = "The artist(".$current_artist->brand.") has invited you to listen to his song on Valyou X, you can earn $".$data_promote->single_price." when you stream it on Valyou X. <br> Please Watch (<a href=".url('/watch')." target='_blank'>Click to Open</a>).";
                    } else {
                        $message = "The artist(".$current_artist->brand.") has invited you to listen to his song on Valyou X, you can earn $".$data_promote->single_price." when you stream it on Valyou X. <br> Please Watch (<a href=".url('/register')." target='_blank'>Click to Open</a>) <br>.
                        Log in or Sign up to Valyou X Music app here to earning by listening to music and investing in artists you like."; 
                    }
					
					Mail::to($item)->send(new ValyouArtist($message));
					// Email finished

					$promotion_details = new PromotionDetails;
					$promotion_details->promotion_id = $promotion->id;
					// already have account in our app
					$promotion_details->entity_type = $request->promote_method;
					$promotion_details->entity = $item;
					$promotion_details->rewarded = 0;
					$promotion_details->people = $request->people_count;
					$promotion_details->save();
				}
			} elseif($request->promote_method == "invester" && $request->entity != ""){
                $promote_investors = json_decode($entity);
				// promote to investors in our app
				foreach ($promote_investors as $item) {
					$notification = new Notifications;
					$notification->notification_type = 6;
					$notification->from_user_id = $id;
					$notification->to_user_id = $item;
					$notification->artist_id = $current_artist->id;
					$notification->notification_text = "<a href=".url('/artist/videos',$current_artist->id)." style='color:#36454F;'>Music Artist (".$current_artist->brand."), invited you to watch (song name). You will earn ($".$promotion->single_price.") when you stream it on Valyou X. Clicking here to (<a href=".url('/artist/videos',$current_artist->id).">listen and earn</a>)</a>";
					// $notification->notification_text = "Please visit your play list. ".$current_artist->brand." suggest to watch video, you can earn money for VXD ".$request->each_promote_pay."$";
					$notification->save();

					$promotion_details = new PromotionDetails;
					$promotion_details->promotion_id = $promotion->id;
					// already have account in our app
					$promotion_details->entity_type = $request->promote_method;
					$promotion_details->entity = $item;
					$promotion_details->rewarded = 0;
                    $promotion_details->people = $request->people_count;
					$promotion_details->save();

				}
            } elseif($request->promote_method == "number" && $request->entity != ""){
               
                    $promote_via_sms = json_decode($entity);
                    // promote to potential customer via sms
                    foreach ($promote_via_sms as $item) {
                         // SMS sender
                         $receiverNumber = $item;
                         $user_exist = User::where('email',$item)->first();
                         // dd($user_exist);die;
                         if(!empty($user_exist)){
                             $message = "The artist(".$current_artist->brand.") has invited you to listen to his song on Valyou X, you can earn $".$data_promote->single_price." when you stream it on Valyou X. <br> Please Watch (<a href=".url('/watch')." target='_blank'>".url('/watch')."</a>).";
                         } else {
                             $message = "The artist(".$current_artist->brand.") has invited you to listen to his song on Valyou X, you can earn $".$data_promote->single_price." when you stream it on Valyou X. <br> Please Watch (<a href=".url('/register')." target='_blank'>".url('/artist/videos/26')."</a>) <br>.
                             Log in or Sign up to Valyou X Music app here to earning by listening to music and investing in artists you like."; 
                         }   
    

       
        
    }




}

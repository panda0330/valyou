<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ArtistController;
use App\Http\Controllers\VideoController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\BankController;
use App\Http\Controllers\BusinessController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
// Route::middleware('Auth')->group(function () {

// });

Route::group(['middleware' => 'auth:api'], function(){
    // artist data routes
    Route::get('/artistData',[ArtistController::class, 'artistData']);
    Route::get('/getArtist/{id}',[ArtistController::class, 'getArtist']);
    Route::get('/editArtist/{id}',[ArtistController::class, 'editArtist']);
    // videos data routes
    Route::get('/allVideosdata',[VideoController::class, 'allVideosdata']);
    Route::get('/getVideo/{id}',[VideoController::class, 'getVideo']);
    Route::get('/getAudio',[VideoController::class, 'getAudio']);

    Route::post('/replyComment',[VideoController::class, 'replyComment']);
    Route::get('/getCommentReplies',[VideoController::class, 'getCommentReplies']);
    Route::post('/deleteReply',[VideoController::class, 'deleteReply']);
    Route::post('/updateReply',[VideoController::class, 'updateReply']);
    Route::post('/like_reply',[VideoController::class, 'like_reply']);
    Route::post('/unlike_reply',[VideoController::class, 'unlike_reply']);
    // routes for notification
    Route::get('/notificationListing',[NotificationController::class, 'notificationListing']);
    Route::post('/storeNotification',[NotificationController::class, 'storeNotification']);
    Route::get('/notificationCount',[NotificationController::class, 'notificationCount']);


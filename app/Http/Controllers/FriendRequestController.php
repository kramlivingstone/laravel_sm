<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DB;
use Auth;

class FriendRequestController extends Controller
{
    function addFriend($id) {
    	$friend_requestor = Auth::user()->id;
    	// dd($id);
    	$friend_req = DB::table('friend_request')
    				  -> insert(
    				  	['from' => $friend_requestor,
    				  	 'to' => $id,
    				  	 'status' => 0]
    				  	);
    	return back();
    }

    function showRequests() {
    	$requests = DB::table('friend_request')
    	            -> join ('users', 'friend_request.from', '=','users.id')
    	       		->get();
    	dd($requests);
    }
}

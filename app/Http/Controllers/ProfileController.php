<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;


class ProfileController extends Controller
{

	function showProfiles() {
	    $users = User::where('id', '!=', Auth::id())->get();

	    return view ('pages/home', compact('users'));
	}

	function showUserProfile($id) {
		$userProfiles = User::find($id);

		return view('pages/profile', compact('userProfiles'));
	}
}

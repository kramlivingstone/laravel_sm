@extends("layouts.app")

@section("main_content")
	<div class="container">
		<div id="profile-panel" class="panel panel-default">
			<div class="panel-body text-center">
				<div class="row">
					<img id="profile-avatar" src="{{$userProfiles->avatar}}">
				</div>
				<div class="row">
					<label>{{$userProfiles->name}}</label>
				</div>
				@if (Auth::user()->id == $userProfiles->id)
				@else
				<div class="row">
					<button type="submit" class="btn btn-info"><i class="fa fa-plus"></i> Add Friend</button>
				</div>
				@endif
				<hr>
			</div>
		</div>
	</div>
@endsection
			
@section("title")
	{{ $userProfiles->name }}
@endsection 
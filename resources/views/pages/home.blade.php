@extends("layouts.app")

@section("main_content")
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>Friend Requests</h4>
			</div>
			<div class="panel-body">
	
			</div>
		</div>
	</div>
	<div class="col-md-6">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h4>People you may know</h4>
			</div>
			<div class="panel-body">
	@foreach($users as $user)
		<hr>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-6">
						<a href='{{ url("/profile/$user->id")}}'><img id="profile_pic" src="{{$user->avatar}}"></a>
					</div>
					<div class="col-md-6">
						<a id="profile-name" href='{{ url("/profile/$user->id")}}'>{{$user->name}}</a>
					</div>
					<div class="col-md-6">
					<form method="POST" action='{{ url("/add/$user->id")}}'>
					{{ csrf_field() }}
						<button class="btn btn-primary" type="submit">
							<i class="fa fa-plus"></i> Add Friend
						</button>
					</form>
					</div>
				</div>
			</div>
	@endforeach
			<hr>
			</div>
		</div>
	</div>
@endsection
			
@section("title")
	Add Friends List
@endsection 
@extends('layouts.app')

@section('content')
    {!!Form::open(['method' => 'post', 'action' => 'DemoController@makeTransaction', 'id' => 'sendForm', 'class' => 'form p-3'])!!}
        {{Form::text('organisation_id', '', ['class' => 'form-control mb-3', 'placeholder' => 'org id'])}}
        {{Form::text('amount', '', ['class' => 'form-control', 'placeholder' => 'amount'])}}
        {{Form::submit('Send', ['name' => 'send', 'class' => 'btn btn btn-primary my-3', 'id' => 'Send'])}}             
    {!!Form::close()!!}
@endsection
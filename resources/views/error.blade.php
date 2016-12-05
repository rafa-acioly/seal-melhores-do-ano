@extends('welcome')

@section('content')
    <span class="label-error">Erro: </span>
    <span class="label-message">
        @if(Session::has('status'))
            {{ session('status') }}
        @endif
    </span>
@endsection
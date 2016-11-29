@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">Detalhes - votação</div>
                    <div class="panel-body">
                        <div class="pull-right">
                            <a href="{{ route('dashboard') }}">
                                <button class="btn btn-info">
                                    Voltar
                                </button>
                            </a>
                        </div>
                        <table class="table">
                            <thead>
                            <tr>
                                <td>Nome</td>
                                <td>Email</td>
                                <td>Quantidade de votos</td>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($list as $rank)
                                <tr>
                                    <td>{{ $rank->name }}</td>
                                    <td>{{ $rank->email }}</td>
                                    <td>{{ $rank->{$key} }}</td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

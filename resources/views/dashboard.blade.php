@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Seal sistemas</div>
                    <div class="panel-body">
                        <div class="col-md-4">
                            <h2>Trabalho em equipe</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealsistemas['teamWork'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->teamWork }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailseal', ['categoria' => 'teamwork']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h2>Entrega de Resultados</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealsistemas['deliveryOfResult'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->deliveryOfResult }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailseal', ['categoria' => 'deliveryOfResult']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <h2>Pró-atividade</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealsistemas['proActivity'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->proActivity }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailseal', ['categoria' => 'proActivity']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">Seal telecom</div>
                    <div class="panel-body">
                        <div class="col-md-6">
                            <h2>Comprometimento</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealtelecom['commitment'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->commitment }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailsealtelecom', ['categoria' => 'commitment']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h2>Pró-atividade</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealtelecom['proActivity'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->proActivity }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailsealtelecom', ['categoria' => 'proActivity']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h2>Superação</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealtelecom['superation'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->superation }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailsealtelecom', ['categoria' => 'superation']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h2>Trabalho em equipe</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealtelecom['teamWork'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->teamWork }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailsealtelecom', ['categoria' => 'teamWork']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h2>Planejamento e Organização</h2>
                            <table class="table">
                                <thead>
                                <tr>
                                    <td>Nome</td>
                                    <td>Quantidade de votos</td>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($sealtelecom['planningAndOrganization'] as $rank)
                                    <tr>
                                        <td>{{ $rank->name }}</td>
                                        <td>{{ $rank->planningAndOrganization }}</td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div>
                                <a href="{{ route('detailsealtelecom', ['categoria' => 'planningAndOrganization']) }}">
                                    <button class="btn btn-info btn-sm pull-right">Ver todos</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
@endsection

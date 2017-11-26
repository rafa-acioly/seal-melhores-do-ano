<!doctype html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/bulma.css') }}">
    <link rel="stylesheet" href="{{ asset('css/vote.css') }}">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.5/sweetalert2.css">
    <title>Seal - Votação</title>
</head>
<body>
<main class="hero is-fullheight">
    <div class="hero-head">
        <div class="logos">
            <div class="logo">
                <img src="{{ asset('template/images/icon1.png') }}" alt="" class="image is-96x96">
            </div>
            <div class="logo">
                <img src="{{ asset('template/images/icon2.png') }}" alt="" class="image is-100x100">
            </div>
        </div>
    </div>
    <div class="hero-body">
        <div class="container">
            <div class="columns">
                <div class="column is-6 has-text-centered word-play">
                    <figure>
                        <img src="{{ asset('template/images/SEAL_TELECOM_PESQUISA_MELHORES_DO_ANO_2017_INTERFACE_VOTACAO_1920X1080P-04.png') }}" alt="" class="image">
                    </figure>
                </div>
                <div class="column is-6 has-text-centered">
                    <h1 class="title is-1">Escolha seu voto</h1>
                    <form action="/votacao/sealtelecom/enviar" method="post">
                        {!! csrf_field() !!}
                        <input type="hidden" value="{{ $voter }}" name="voter">

                        <div class="field is-horizontal">
                            <div class="field-body">
                                <div class="field is-narrow">
                                    <div class="control">
                                        <label for="" class="label">Comprometimento</label>
                                        <div class="select">
                                            <select name="commitment" required>
                                                <option value="" selected disabled>Selecione</option>
                                                @foreach($participants as $participant)
                                                    <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="field is-narrow">
                                    <div class="control">
                                        <label for="" class="label">Pró-atividade</label>
                                        <div class="select">
                                            <div class="select">
                                                <select name="proActivity" required>
                                                    <option value="" selected disabled>Selecione</option>
                                                    @foreach($participants as $participant)
                                                        <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="field is-narrow">
                                    <div class="control">
                                        <label for="" class="label">Superação</label>
                                        <div class="select">
                                            <select name="superation" required>
                                                <option value="" selected disabled>Selecione</option>
                                                @foreach($participants as $participant)
                                                    <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="field is-horizontal">
                            <div class="field-body">
                                <div class="field is-narrow">
                                    <div class="control">
                                        <label for="" class="label">Trabalho em equipe</label>
                                        <div class="select">
                                            <select name="teamWork" required>
                                                <option value="" selected disabled>Selecione</option>
                                                @foreach($participants as $participant)
                                                    <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="field is-narrow">
                                    <div class="control">
                                        <label for="" class="label">Planejamento e organização</label>
                                        <div class="select">
                                            <select name="planningAndOrganization" required>
                                                <option value="" selected disabled>Selecione</option>
                                                @foreach($participants as $participant)
                                                    <option value="{{ $participant->id }}">{{ $participant->name }} - {{ $participant->department }}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="field field-button">
                            <button class="button is-medium" type="submit">Enviar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="{!! asset('js/validation_vote_sealtelecom.js') !!}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.5/sweetalert2.min.js"></script>
</body>
</html>

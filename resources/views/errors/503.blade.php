<!DOCTYPE html>
<html>
    <head>
        <title>Seal - Melhores do ano - votação encerrada</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <style>
            @font-face {
                font-family: "Chunkfive";
                src: url("{{ asset('fonts/Chunkfive.otf') }}");
            }

            html, body {
                background-image: url("{{ asset('template/images/bg.png') }}");
                background-size: cover;
                background-position: center;
                color: #636b6f;
                /*font-family: 'Raleway', sans-serif;*/
                font-family: 'Chunkfive';
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
                color: white;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }
            
            .label-error {
                color: white;
            }
            
            .label-message {
                color: #be1e2d;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            <div class="content">
                <div class="title m-b-md">
                    <span class="label-error">Votação</span>
                    <span class="label-message">Encerrada.</span>
                </div>
            </div>
        </div>
    </body>
</html>

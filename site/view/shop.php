<?php include_once("head.php"); ?>

    <link rel="stylesheet" href="lib/owl-carousel/owl.carousel.css"> <!-- owlcarousel1 -->
    <link rel="stylesheet" href="lib/raty/jquery.raty.css">

    <script src="lib/angularjs/angular.min.js"></script>

<?php include_once("header.php"); ?>


<section ng-controller="section-controller">

    <div id="destaque-produtos-container" class="container">

        <div id="destaque-produtos">

            <div class="item" ng-repeat="produto in produtos">

                <div class="col-sm-6 col-imagem">
                    <a href="produto-{{produto.id_prod}}">
                        <img src="images/produtos/{{produto.foto_principal}}" alt="{{produto.nome_prod_longo}}">
                    </a>
                </div>

                <div class="col-sm-6 col-descricao">
                    <h2>{{produto.nome_prod_longo}}</h2>
                    <div class="box-valor">
                        <div class="text-noboleto text-arial-cinza">no boleto</div>
                        <div class="text-por text-arial-cinza">por</div>
                        <div class="text-reais text-roxo-shop">R$</div>
                        <div class="text-valor text-roxo-shop">{{produto.preco_promorcional}}</div>
                        <div class="text-valor-centavos text-roxo-shop">,{{produto.centavos}}</div>
                        <div class="text-parcelas text-arial-cinza">ou em até {{produto.parcelas}}x de R$ {{produto.parcela}}</div>
                        <div class="text-total text-arial-cinza">total a prazo R$ {{produto.total}}</div>
                    </div>

                    <a href="#" class="btn btn-comprar text-roxo-shop"><i class="fa fa-shopping-cart"></i> comprar agora</a>
                </div>

            </div>

        </div>

        <button type="button" id="btn-destaque-prev"><i class="fa fa-angle-left"></i></button>
        <button type="button" id="btn-destaque-next"><i class="fa fa-angle-right"></i></button>
    </div><!-- destaque-produtos-container -->

    <div id="promocoes" class="container">
        <div class="row">
            <div class="col-md-2">
                <div class="box-promocao box-1">
                    <p>escolha por desconto</p>
                </div>
            </div>
            <div class="col-md-10">
                <div class="row-fluid">
                    <div class="col-md-3">
                        <div class="box-promocao">
                            <div class="text-ate">até</div>
                            <div class="text-numero">40</div>
                            <div class="text-porcento">%</div>
                            <div class="text-off">off</div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box-promocao">
                            <div class="text-ate">até</div>
                            <div class="text-numero">60</div>
                            <div class="text-porcento">%</div>
                            <div class="text-off">off</div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box-promocao">
                            <div class="text-ate">até</div>
                            <div class="text-numero">80</div>
                            <div class="text-porcento">%</div>
                            <div class="text-off">off</div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="box-promocao">
                            <div class="text-ate">até</div>
                            <div class="text-numero">85</div>
                            <div class="text-porcento">%</div>
                            <div class="text-off">off</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- promocoes -->

    <div id="mais-buscados" class="container">

        <div class="row text-center title-default-roxo">
            <h2>os mais buscados</h2>
            <hr>
        </div>

        <div class="row">
            <div class="col-md-3" ng-repeat="produto in buscados">
                <div class="box-produtos-info">
                    <a href="produto-{{produto.id_prod}}">
                        <img src="images/produtos/{{produto.foto_principal}}" alt="{{produto.nome_prod_longo}}" class="produto-img">
                        <h3>{{produto.nome_prod_longo}}</h3>
                        <div class="estrelas" data-score="{{produto.media}}"></div>
                        <div class="text-qtd-reviews text-arial-cinza">({{produto.total_reviews}})</div>
                        <div class="text-valor text-roxo-shop">{{produto.preco_promorcional}}</div>
                        <div class="text-parcelado text-arial-cinza">ou {{produto.parcelas}}x de R$ {{produto.parcela}} a prazo</div>
                    </a>
                </div>
            </div>
        </div>

    </div><!-- mais-buscados -->

</section>

<?php include_once("footer.php"); ?>

<script src="lib/owl-carousel/owl.carousel.min.js"></script> <!-- owlcarousel1 -->
<script src="lib/raty/jquery.raty.js"></script>

<script>
    // angularjs
    angular.module("shop", []).controller("section-controller", function($scope, $http) {


        $scope.produtos = [];
        $scope.buscados = [];

        var initCarousel = function() {
            // owlcarousel1
            $("#destaque-produtos").owlCarousel({
                loop: true,
                autoPlay: 5000,
                items: 1,
                singleItem: true
            });

            var owlDestaque = $("#destaque-produtos").data('owlCarousel');

            $('#btn-destaque-prev').on("click", function() {
                owlDestaque.prev();
            });

            $('#btn-destaque-next').on("click", function() {
                owlDestaque.next();
            });
        };

        $http({
            method: 'GET',
            url: 'produtos'
        }).then(function successCallback(response) {

            $scope.produtos = response.data;
            setTimeout(initCarousel, 1000);

        }, function errorCallback(response) {

        });

        var initEstrelas = function() {
            // raty
            $('.estrelas').each(function() {
                $(this).raty({
                    cancelOff: 'lib/raty/images/cancel-off.png',
                    cancelOn: 'lib/raty/images/cancel-on.png',
                    starHalf: 'lib/raty/images/star-half.png',
                    starOff: 'lib/raty/images/star-off.png',
                    starOn: 'lib/raty/images/star-on.png',
                    score: parseFloat($(this).data("score"))
                });
            });
        };

        $http({
            method: 'GET',
            url: 'produtos-mais-buscados'
        }).then(function successCallback(response) {

            $scope.buscados = response.data;
            setTimeout(initEstrelas, 1000);

        }, function errorCallback(response) {

        });

    });
</script>
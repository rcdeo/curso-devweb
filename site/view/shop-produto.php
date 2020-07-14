<?php include_once("head.php"); ?>
<?php include_once("header.php"); ?>


<section>

    <div id="destaque-produtos-container" class="container">

        <div id="destaque-produtos">

            <div class="col-sm-6 col-imagem">
                <img src="images/produtos/<?=$produto['foto_principal']?>" alt="<?=$produto['nome_prod_longo']?>">
            </div>

            <div class="col-sm-6 col-descricao">
                <h2><?=$produto['nome_prod_longo']?></h2>
                <div class="box-valor">
                    <div class="text-noboleto text-arial-cinza">no boleto</div>
                    <div class="text-por text-arial-cinza">por</div>
                    <div class="text-reais text-roxo-shop">R$</div>
                    <div class="text-valor text-roxo-shop"><?=$produto['preco_promorcional']?></div>
                    <div class="text-valor-centavos text-roxo-shop">,<?=$produto['centavos']?></div>
                    <div class="text-parcelas text-arial-cinza">ou em até <?=$produto['parcelas']?>x de R$ <?=$produto['parcela']?></div>
                    <div class="text-total text-arial-cinza">total a prazo R$ <?=$produto['total']?></div>
                </div>

                <a href="carrinhoAdd-<?=$produto['id_prod']?>" class="btn btn-descricao-comprar text-roxo-shop">compre agora</a>
            </div>

        </div>

    </div><!-- destaque-produtos-container -->

</section>

<?php include_once("footer.php"); ?>
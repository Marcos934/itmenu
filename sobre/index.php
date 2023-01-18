<?php
ob_start();
session_cache_expire(60);
session_start();
require('../_app/Config.inc.php');
require('../_app/Mobile_Detect.php');
$detect = new Mobile_Detect;

$site = HOME;

$login = new Login(3);

if($login->CheckLogin()):
  $idusuar = $_SESSION['userlogin']['user_id'];
  $lerbanco->ExeRead('ws_empresa', "WHERE user_id = :idcliente", "idcliente={$idusuar}");

  if (!$lerbanco->getResult()):       
  else:
    foreach ($lerbanco->getResult() as $i):
      extract($i);
    endforeach;
    header("Location: {$site}{$nome_empresa_link}/sobre");
  endif;

else:
endif;
?>
<html lang="pt-br">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    
     <!-- GOOGLE WEB FONT -->
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,300,300italic' rel='stylesheet' type='text/css'>

  <!-- BASE CSS -->
  <link href="<?=$site;?>css/base.css" rel="stylesheet">

  <link href="<?=$site;?>css/suportewats.css" rel="stylesheet">

  <!-- SPECIFIC CSS -->
  <link href="<?=$site;?>css/morphext.css" rel="stylesheet">

  <!-- Radio and check inputs -->
  <link href="<?=$site;?>css/skins/square/grey.css" rel="stylesheet">
  <link href="<?=$site;?>css/ion.rangeSlider.css" rel="stylesheet">
  <link href="<?=$site;?>css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >
  <link href="<?=$site;?>css/icheck/icheck-material.css" rel="stylesheet">


  <!-- INCLUDE JQUARY -->
  <script src="<?=$site;?>js/jquery-2.2.4.min.js"></script>

  <link href="<?= $site; ?>css/x0popup-master/dist/x0popup.min.css" rel="stylesheet">
  <script src="<?= $site; ?>css/x0popup-master/dist/x0popup.min.js"></script>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.8.2/css/all.css'>
  <link href="<?= $site; ?>css/color_scheme.css" rel="stylesheet">
        <meta charset="utf-8" />
        <title><?=$texto['titulo_site_landing'];?></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <link rel="stylesheet" href="institucional3/css/bootstrap.min.css">
        <link rel="stylesheet" href="institucional3/css/owl.carousel.min.css">
        <link rel="stylesheet" href="institucional3/css/animate.min.css">
        <link rel="stylesheet" href="<?=$site;?>/cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/institucional3/css/all.min.css">
        <link rel="stylesheet" href="institucional3/css/jquery-ui.min.css">
        <link rel="stylesheet" href="institucional3/css/jquery.modal.min.css" />
        <link rel="stylesheet" href="fonts/millar/millar.css">
        <link rel="stylesheet" href="institucional3/css/zaptol2bed.css?v=1.8.12">
        <link rel="shortcut icon" type="image/png" href="institucional3/img/favicon.png" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <meta name="description" content="<?=$texto['descricao_site_landing'];?>">
        <meta name="keywords" content="<?=$texto['keywords_landing'];?>">
        <meta name="robots" content="index, follow">
        <meta name="revisit-after" content="1 day">
        <meta name="language" content="Portuguese">
        <meta name="generator" content="<?=$texto['nome_site_landing'];?>">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta property="og:type" content="website" />
        <meta property="og:url" content="<?=$site;?>" />
        <meta property="og:image" content="img/logo-marca.png" />
        <meta property="og:description" content="<?=$texto['descricao_site_landing'];?>" />
        
        
  
    </head>
		
    <body class="home blog">
        <!-- WhatsApp Flutuante -->
        <a href="https://api.whatsapp.com/send?phone=<?=$texto['telefoneAdministracaoVendas'];?>" target="_blank" class="whatsFlutua" data-toggle="tooltip" data-placement="right" title="Atendimento via WhatsApp."><i class="fab fa-whatsapp"></i></a> 
        
        <!-- Menu Responsivo -->
        <div class="menuResponsivo gradiente-padrao">
            <div class="logo">
                <a href="<?=$site;?>">
                    <img src="logo-marca.png" alt="<?=$texto['titulo_site_landing'];?> - <?=$texto['descricao_site_landing'];?>">
                </a>
            </div>
              <div class="menu">
                <ul>
                    <!-- monta via jquery -->
                </ul>
            </div>
        </div>
        <!-- Site -->
        <header>
            <div class="principal">
                <div class="container">
                    <div class="flutua">
                        <a href="https://api.whatsapp.com/send?phone=<?=$texto['telefoneAdministracaoVendas'];?>" class="whats"><i class="fab fa-whatsapp"></i><img src="https://image.flaticon.com/icons/png/128/1384/1384055.png" width="15px"> (11) 97176-0907</a>
                        <a href="tel:1140040101" class="fixo"><i class="icone-sac"></i><img src="institucional3/img/icone-sac.png" width="18px"> (11) 4004-0101</a>
                        <a href="<?=$site;?>login" class="login"><i class="fas fa-user-circle"></i><img src="institucional3/img/seta-button.png" width="15px"> Entrar</a>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-2 col-1">
                            <a href="<?=$site;?>">
                              <img src="institucional3/img/logo-marca.png" style="width:140px;" alt="">
                            </a>
                        </div>
                        <div class="col-md-7 col-6 menu">
                            <ul>
                                <li><a href="https://mercadocotia.site">Pagina Inicial</a><li>
                               <li><a href="<?=$site;?>termos">Termos e Condições</a><li>
                                       <li><a href="<?=$site;?>lojas">Parceiros</a></li>
                                        
                               
            </div>
        </header>
<section class="intro">
    <div class="container">
        <div class="row">
            <div class="col-md-7 wow slideInLeft">
                
                <ul>
                    <li>Sobre.</li>
                </ul>
                
                <h1>IT Menu</h1>
                
                <ul>
                    <li class="sem-taxa">Economize com comissões, aumente seu Lucro.</li>
                </ul>
           
        </div>
    </div>
</section>
<section class="video">
    <div class="container">
        <div class="row">
            <div class="col-md-12 conteudo owl wow fadeInRight">
                <h3>Sobre IT Menu Delivery.</h3>
                <p>A plataforma IT Menu Delivery foi desenvolvida para você criar seu <strong>cardápio ou catálogo on-line completo</strong> e receber seus <strong>pedidos via WhatsApp</strong>. Edite seu cardápio ou catálogo a qualquer momento direto do seu celular ou computador
                suhdahsashuoahsoua as´bdoás´dohaósuhd oshdioshdisaihdosa aisdisaudiusaiudiausodiuaiosudiusadiusaiduoiasudoisauidusiodau sdaudsaioudiousdi asudsaiud sdiosaudiouas diosaudiosauiodusi
                shdosahdhsahdsahudsaiudiusidu dusiudiusagdiuasiusad.</p>
            </div>
        </div>
    </div>
</section>

<section class="comece">
    <div class="container">
        <div class="texto">
            <h3>Faça o teste!</h3>
            <p>Faça um pedido em nosso cardápio de <strong>demonstração</strong> e veja como funciona.</p>
        </div>
        <a href="<?=$site;?>Demo" target="_blank">Ver Demonstração</a>
    </div>
</section>
<a name="recursos"></a>
<section class="porque gradiente-padrao">
    <div class="container">
        <div class="row">
            <div class="col-md-12 title">
                <h3>Tudo Pensado para seu Negócio</h3>
                <p>Veja tudo o que poderá oferecer ao seu Cliente.</p>
            </div>
        </div>
        <div class="row alinha">
            <div class="col-md-4 fadeInLeft wow left text-right">
                <div class="box">
                    <img src="institucional3/img/icone-sem-taxa.png">
                    <p>Não pagar <strong>nenhuma taxa</strong><br>sobre as vendas</p>
                </div>
				 <div class="box">
                    <img src="institucional3/img/icone-exclusividade.png">
                    <p>O usuário <strong>não precisa instalar</strong> nenhum aplicativo</p>
                </div>
                <div class="box">
                    <img src="institucional3/img/icone-facilidade.png">
                    <p>Automatize o recebimento <br>de <strong>pedidos via WhatsApp</strong></p>
                </div>
                <div class="box">
                    <img src="institucional3/img/icone-comodidade.png">
                    <p>Interface <strong>fácil e amigável</strong><br> para o cliente pedir</p>
                </div>                
            </div>
            <div class="col-md-4 center text-center">
                <img src="institucional3/img/celular-porque.png" class="fadeInUp wow">
            </div>
            <div class="col-md-4 fadeInRight wow right">
				<div class="box">
					<img src="institucional3/img/icone-editar.png">                    
                    <p><strong>Editar facilmente</strong> preço e produtos em tempo real</p>
                </div>
                <div class="box">
                   <img src="institucional3/img/icone-visibilidade.png">
                    <p>Adicionar <strong>variações e complementos</strong> de produtos</p>
                </div>
                <div class="box">
                    <img src="institucional3/img/icone-fidelizar.png">
                    <p><strong>Fidelizar</strong> os seus clientes</p>
                </div>
                <div class="box">
                    <img src="institucional3/img/icone-design.png">
                    <p>Seu site com sua marca e cores</p>
                </div>
            </div>
        </div>
    </div>
</section>

<a name="perguntas-frequentes"></a>
<section class="perguntas" id="duvidas">
    <div class="container">
        <div class="row">
            <div class="col-md-12 title">
                <h3>Ainda com Duvidas?</h3>
                <p>Rapidez para seu cliente, eficiência para seu negócio.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 offset-md-1 bloco fadeIn wow">
                <ul>
                    <li class="ativo">
                        <h5>O <?=$texto['titulo_site_landing'];?> funciona em qualquer seguimento comercial?</h5>
                        <h6>Sim, a versão on-line do catálogo ou cardápio só vai te trazer benefícios. Você pode vender qualquer produto pelo <?=$texto['titulo_site_landing'];?>.</h6>
                        <i class="fas fa-minus"></i>
                    </li>
                    <li>
                        <h5>Da para personalizar meu Catálogo ou Cardápio?</h5>
                        <h6 style="display:none">Sim, o layout são ajustáveis com a identidade da sua empresa.</h6>
                        <i class="fas fa-plus"></i>
                    </li>
                    <li>
                        <h5>Como faço para editar preços e produtos?</h5>
                        <h6 style="display:none">Através do painel administrativo é possível editar todos os itens do catálogo ou cardápio em tempo real, direto de seu celular ou computador.</h6>
                        <i class="fas fa-plus"></i>
                    </li>
                    <li>
                        <h5>O que eu preciso para usar o <?=$texto['titulo_site_landing'];?>?</h5>
                        <h6 style="display:none">O <?=$texto['titulo_site_landing'];?> foi feito para os emprendedores que precisam de um catálogo ou cardápio on-line com ótimos recursos e fácil acesso na internet.</h6>
                        <i class="fas fa-plus"></i>
                    </li>
                    <li>
                        <h5>Como faço para comprar?</h5>
                        <h6 style="display:none">Preencha o cadastro pelo site  clicando <a href="index.html">aqui</a>. A liberação do sistema ocorre imediatamente após a conclusão do seu cadastro. Você terá 30 dias para testar sem nenhum custo!</h6>
                        <i class="fas fa-plus"></i>
                    </li>
                    <li>
                        <h5>Preciso ter um site para criar meu cardápio?</h5>
                        <h6 style="display:none">Não! Nosso sistema tem tudo o que você precisa para exibir o seu cardápio on-line para os seus clientes.</h6>
                        <i class="fas fa-plus"></i>
                    </li>
					<button class="openMore"><i class="fas fa-plus"></i> Ver mais perguntas</button>
					<div class="continuacao" style="display:none">
						<li>
							<h5>Como clientes acessam meu cardápio?</h5>
							<h6 style="display:none">O seu cardápio é otimizado para ser aberto em qualquer plataforma e modelos de celulares. Através de um link exclusivo e acesso à Internet, qualquer usuário pode abrir seu cardápio on-line.</h6>
							<i class="fas fa-plus"></i>
						</li></div>
 </section>
      <footer>
          <div class="rodape gradiente-padrao">
              <div class="container">
                  <div class="row">
                      <div class="col-md-2 logo text-center">
                          <a href="<?=$site;?>"><img src="institucional3/img/logo-marca.png" style="width:84px;" alt="Cardápio de pedidos  via WhatsApp."></a>
                      </div>
                      <div class="col-md-10">
                          <div class="dados">
                      </div>
                      <div class="col-md-9">
                          <div class="dados">
                              <a href="tel:5511971760907" class="sac">Fale Conosco <strong>(11) 97176-0907</strong></a>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
          <div class="copyright">
           
              <div class="final">
				<div class="container">
					<p>&copy; 2021 - Copyright by IT Menu Delivery - Sua Solução de Negocio!
				</div>
			  </div>
          </div>
      </footer>
		<div class="telefone-mobile">
			<div class="container">
				<div class="row">
					<div class="col-4 whatsapp">
						<a href="https://api.whatsapp.com/send?phone=5511971760907" target="_blank">
							<i class="fab fa-whatsapp" aria-hidden="true"></i>
							<span>WhatsApp</span>
						</a>
						</div>
						<div class="col-4 contrates">
						<a href="https://mercadocotia.site/">
							<i class="fas fa-home" aria-hidden="true"></i>
							<span>Pagina Inicial</span>
							</a>
						</div>
						<div class="col-4 contratez">
						<a href="<?=$site;?>termos">
							<i class="far fa-address-book" aria-hidden="true"></i>
							<span>Termos e Condições</span>
						</a>
					</div>
				</div>
			</div>
		</div>
    </body>
    <script src="institucional3/js/jquery-3.4.0.min.js"></script>
    <script src="institucional3/js/jquery-ui.min.js"></script>
    <script src="institucional3/js/jquery.ui.touch-punch.min.js"></script>
    <script src="institucional3/js/jquery-scrollspy.min.js"></script>
    <script src="institucional3/js/jquery.mask.min.js"></script>
    <script src="institucional3/js/popper.min.js"></script>
    <script src="institucional3/js/bootstrap.bundle.min.js"></script>
    <script src="institucional3/js/owl.carousel.min.js"></script>
    <script src="institucional3/js/wow.min.js"></script>
    <script src="institucional3/js/typed.min.js"></script>
    <script src="institucional3/js/jquery.modal.min.js"></script>
    <script src="institucional3/js/common2bed.js?v=1.8.12"></script>
    <script src="institucional3/js/zaptol2bed.js?v=1.8.12"></script>

    </html>
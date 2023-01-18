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
    header("Location: {$site}{$nome_empresa_link}/termos");
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
                               <li><a href="<?=$site;?>sobre">Sobre</a><li>
                                       <li><a href="<?=$site;?>lojas">Parceiros</a></li>
                                        
                               
            </div>
        </header>
<section class="intro">
    <div class="container">
        <div class="row">
            <div class="col-md-7 wow slideInLeft">
                
                <ul>
                    <li>Termos e Condições de uso.</li>
                </ul>
                
                <h1>IT Menu Delivery</h1>
                
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
                <h2>TERMOS E CONDIÇÕES DE USO DO SERVIÇO DE INTERMEDIAÇÃO IT Menu DELIVERY, APLICATIVO IT Menu DELIVERY E DA PRESTAÇÃO DE SERVIÇOS DE COBRANÇA E INFORMAÇÕES CADASTRAIS, VIA PORTAL IT Menu DELIVERY (MARKETPLACE DIGITAL).</h2>
                <p>A plataforESTABELECIMENTOS COMERCIAIS <strong>RESTAURANTES, PADARIAS, SUPERMERCADOS, BARES, LANCHONETES, ETC.).</strong> EM VIGOR A PARTIR DE 14 DE DEZEMBRO DE 2020.
                POR FAVOR, LEIA COM ATENÇÃO OS TERMOS E CONDIÇÕES.
AO SE CADASTRAR NA IT Menu DELIVERY VOCÊ ESTÁ DE ACORDO COM AS CONDIÇÕES E TERMOS ESTABELECIDOS, E PERMITE O ARMAZENAMENTO DOS DADOS NECESSÁRIOS PARA CONTEMPLAR A RELAÇÃO (MAIORES INFORMAÇÕES SOBRE OS DADOS, POR FAVOR, CONSULTAR A POLÍTICA DE PRIVACIDADE).
CONSIDERAÇÕES PRELIMINARES E ESSENCIAIS SOBRE OS SERVIÇOS DE INTERMEDIAÇÃO DA IT Menu DELIVERY.

ESTES TERMOS E CONDIÇÕES GERAIS DE SERVIÇOS DE INTERMEDIAÇÃO VIA PORTAL IT Menu DELIVERY (MARKETPLACE) CONSTITUEM UM ACORDO ENTRE UM ESTABELECIMENTO COMERCIAL E A IT Menu DELIVERY SOLUÇÕES TECNOLÓGICAS EIRELI., COM SEDE NA RUA FRANÇA VELHO, NÚMERO 358, VILA CARMOSINA, CEP 08290-120, MUNICÍPIO DE SÃO PAULO/SP, INSCRITA NO CNPJ/MF SOB Nº 36.624.901/0001-00, NESTE ATO REPRESENTADA NA FORMA DE SEU CONTRATO SOCIAL COMO IT Menu DELIVERY; E
OS ESTABELECIMENTOS COMERCIAIS PARCEIROS (POR EXEMPLO, MAS NÃO SE LIMITANDO A: RESTAURANTES, PADARIAS, SUPERMERCADOS, BARES, LANCHONETES, ETC.). DEVIDAMENTE ALOCADO EM SUA CATEGORIA, NA FORMA DOS DADOS INFORMADOS NO CADASTRO, TÊM JUSTO E CONTRATADO, NA REGÊNCIA DESTES TERMOS E CONDIÇÕES GERAIS DE SERVIÇOS DE INTERMEDIAÇÃO E CONSTITUEM UM ACORDO ENTRE OS ESTABELECIMENTOS E A IT Menu DELIVERY, ESSA, TÃO SOMENTE É UMA INTERMEDIADORA APENAS, ESTANDO NESTE ATO AUSENTE QUALQUER CAUSA DE NULIDADE OU ANULABILIDADE DO NEGÓCIO JURÍDICO, DE COMUM ACORDO E SEM QUALQUER VÍCIO DE VONTADE, NESTE ATO O ESTABELECIMENTO REPRESENTADO NA FORMA DE SEU CONTRATO SOCIAL, O ACEITE DO PRESENTE CONTRATO REPRESENTA E CONFIRMA NOSSA CONCORDÂNCIA MÚTUA COM RELAÇÃO À PARTICIPAÇÃO DO ESTABELECIMENTO NO PORTAL IT Menu DELIVERY (MARKETPLACE) OU PLATAFORMA, ATUALMENTE DISPONIBILIZADO PELA TRASNF.
IMPLICA NECESSARIAMENTE A CIÊNCIA E ACEITAÇÃO AOS PRESENTES TERMOS.

</p>
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
</div></div></div>
</div>
</div>

<section class="video">
    <div class="container">
        <div class="row">
            <div class="col-md-12 conteudo owl wow fadeInRight">
                <h2>Política de Privacidade - LGPD - PORTAL IT Menu DELIVERY (MARKETPLACE DIGITAL).</h2>
                <p>Motociclista Empreendedor: Profissional na condução de moto, habilitado, prestador autônomo de serviço de frete, devidamente inscrito no MEI - Microempreendedor Individual.
</p>
    <p>PRC – Plataforma de rede de compartilhamento informada e inequívoca de uma pessoa (titular) com o tratamento dos seus dados pessoais para as finalidades apresentadas neste documento, ou seja, sua autorização.
Dados Anônimos: dado relativo a uma pessoa que não pode ser identificada, considerando a utilização de meios técnicos razoáveis e disponíveis na ocasião de seu tratamento.
</p>
<p>Dados Pessoais Cadastrais: dados pessoais de interesse público que identificam e qualificam a pessoa e que não são sigilosos, como por exemplo, nome, RG, CPF, endereço, estado civil, profissão, data de nascimento, nome da mãe etc.
Dispositivos: são computadores, notebooks, tablets, smartphones e quaisquer outros aparelhos utilizados por você para acessar a internet.
IP: sigla para "Internet Protocol". É o protocolo que identifica, localiza e
estabelece conexão entre computadores ligados à internet.
Site: conjunto de informações disponibilizadas na internet por indivíduo, instituição, empresa etc., pertencente a um mesmo endereço eletrônico e que 
geralmente trata de tema específico.
Você/titular: são os usuários e/ou os visitantes (pessoas naturais ou jurídicas) em nossa PRC.
</p>
            </div>
        </div>
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
						<a href="<?=$site;?>cadastro">
							<i class="fas fa-handshake" aria-hidden="true"></i>
							<span>Teste Grátis</span>
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
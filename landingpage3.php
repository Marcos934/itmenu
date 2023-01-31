<?php
$login = new Login(3);
if ($login->CheckLogin()):
  $idusuar = $_SESSION['userlogin']['user_id'];
  $lerbanco->ExeRead('ws_empresa', "WHERE user_id = :idcliente", "idcliente={$idusuar}");
  if (!$lerbanco->getResult()):
  else:
    foreach ($lerbanco->getResult() as $i):
      extract($i);
    endforeach;
    header("Location: {$site}{$nome_empresa_link}/pedidos");
  endif;
else:
endif;
?>
<html lang="pt-br">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>

  <!-- GOOGLE WEB FONT -->
  <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,300,300italic'
    rel='stylesheet' type='text/css'>

  <!-- BASE CSS -->
  <link href="<?= $site; ?>css/base.css" rel="stylesheet">

  <link href="<?= $site; ?>css/suportewats.css" rel="stylesheet">

  <!-- SPECIFIC CSS -->
  <link href="<?= $site; ?>css/morphext.css" rel="stylesheet">

  <!-- Radio and check inputs -->
  <link href="<?= $site; ?>css/skins/square/grey.css" rel="stylesheet">
  <link href="<?= $site; ?>css/ion.rangeSlider.css" rel="stylesheet">
  <link href="<?= $site; ?>css/ion.rangeSlider.skinFlat.css" rel="stylesheet">
  <link href="<?= $site; ?>css/icheck/icheck-material.css" rel="stylesheet">


  <!-- INCLUDE JQUARY -->
  <script src="<?= $site; ?>js/jquery-2.2.4.min.js"></script>

  <link href="<?= $site; ?>css/x0popup-master/dist/x0popup.min.css" rel="stylesheet">
  <script src="<?= $site; ?>css/x0popup-master/dist/x0popup.min.js"></script>
  <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.8.2/css/all.css'>
  <link href="<?= $site; ?>css/color_scheme.css" rel="stylesheet">

  <meta charset="utf-8" />
  <title>
    <?= $texto['titulo_site_landing']; ?>
  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
  <link rel="stylesheet" href="institucional3/css/bootstrap.min.css">
  <link rel="stylesheet" href="institucional3/css/owl.carousel.min.css">
  <link rel="stylesheet" href="institucional3/css/animate.min.css">
  <link rel="stylesheet"
    href="<?= $site; ?>/cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/institucional3/css/all.min.css">
  <link rel="stylesheet" href="institucional3/css/jquery-ui.min.css">
  <link rel="stylesheet" href="institucional3/css/jquery.modal.min.css" />
  <link rel="stylesheet" href="fonts/millar/millar.css">
  <link rel="stylesheet" href="institucional3/css/zaptol2bed.css?v=1.8.12">
  <link rel="shortcut icon" type="image/png" href="institucional3/img/favicon.png" />
  <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
  <meta name="description" content="<?= $texto['descricao_site_landing']; ?>">
  <meta name="keywords" content="<?= $texto['keywords_landing']; ?>">
  <meta name="robots" content="index, follow">
  <meta name="revisit-after" content="1 day">
  <meta name="language" content="Portuguese">
  <meta name="generator" content="<?= $texto['nome_site_landing']; ?>">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta property="og:type" content="website" />
  <meta property="og:url" content="<?= $site; ?>" />
  <meta property="og:image" content="img/logo-marca.png" />
  <meta property="og:description" content="<?= $texto['descricao_site_landing']; ?>" />
</head>

<body class="home blog">
  <!-- WhatsApp Flutuante -->
  <a href="https://api.whatsapp.com/send?phone=<?= $texto['telefoneAdministracaoVendas']; ?>" target="_blank"
    class="whatsFlutua" data-toggle="tooltip" data-placement="right" title="Atendimento via WhatsApp."><i
      class="fab fa-whatsapp"></i></a>

  <!-- Menu Responsivo -->
  <div class="menuResponsivo gradiente-padrao">
    <div class="logo">
    </div>
    <div class="menu">
      <a href="Menu">
        <ul>
          <!-- monta via jquery -->
        </ul>
      </a>
    </div>

  </div>


  <!-- Site -->
  <header>
    <div class="principal">
      <div class="container">
        <div class="flutua navbar-options-right">
          <a href="tel:1140040101" class="fixo"><i class="icone-sac"></i><img src="img/icone-sac.png" width="18px"> (11)
            4004-0101</a>
          <a href="<?= $site; ?>sobre" class="login"><i class="fas fa-user-circle"></i><img src="img/686317.png"
              width="15px"> Sobre</a>
          <a href="<?= $site; ?>login" class="login"><i class="fas fa-user-circle"></i><img src="img/seta-button.png"
              width="15px"> Entrar</a>
        </div>
        <div class="row">
          <div class="col-md-2 col-5 logo">

          </div>
          <div class="col-md-9 col-9 menu">
            <ul>
              <li><a href="index.html#recursos">Recursos</a></li>
              <li><a href="<?= $site; ?>vendas">Vendas <small></small></a></li>
              <li><a href="<?= $site; ?>lojas">MarketPlace</a></li>
              <li><a href="<?= $site; ?>#duvidas">Dúvidas Frequentes</a></li>
              <li class="demo cliqueDemo"><a href="<?= $site; ?>Demo" target="_blank">Demonstração</a></li>
              <!--<li class="demo cliqueDemo"><a href="<?= $site; ?>cadastro" target="_blank">Teste Gratis por 10 Dias </a></li>-->
              </a>
              </li>
            </ul>
            <div class="chamaMobile">
              <i class="img/menu1.png"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>


  </ul>

  </div>

  </div>
  </div>
  </div>
  </div>
  </div>
  </header>
  <section class="intro">
    <div class="container">
      <div class="row">
        <div class="col-md-7 wow slideInLeft">
          <h1>IT Menu integrado ao seu <span class="verde">WhatsApp</span>.</h1>
          <ul>
            <li class="eficiente">Forneça um cardápio ou catálogo on-line para seus clientes</li>
            <li class="pratico">Os pedidos chegam em seu WhatsApp e no Painel de Acompanhamento de Pedidos</li>
            <li class="sem-taxa">Se livre de comissionamento. Apenas uma mensalidade e nada mais.</li>
          </ul>
        </div>
        <div class="col-md-4 wow slideInRight">
          <img src="institucional3/img/celular-intro.png" alt="Cardápio de pedidos via WhatsApp.">
        </div>
      </div>
    </div>
    </div>
    </div>
    </div>
    </div>
  </section>
  <section class="video">
    <div class="container">
      <div class="row">
        <div class="col-md-12 conteudo owl wow fadeInRight">
          <h3>Torne seu cardápio ou catálogo de produtos Prático e Fácil para seus clientes.</h3>
          <p>A plataforma IT Menu Delivery foi desenvolvida para você criar seu <strong>cardápio ou catálogo on-line
              completo</strong> e receber seus <strong>pedidos via WhatsApp</strong>. Edite seu cardápio ou catálogo a
            qualquer momento direto do seu celular ou computador.</p>
        </div>
      </div>
    </div>
  </section>
  <section class="cta-corpo gradiente-padrao">
    <div class="container">
      <div class="texto">
        <h3>Qual o Valor?</h3>
        <p>Organize seus pedidos online por <strong>apenas R$
            <?= $texto['valorPlanoUm']; ?>,00 mensais
          </strong>, sem taxa de adesão e sem comissionamentos.</p>
      </div>
      <a href="#valores">Saiba mais</a>
    </div>
  </section>

  <?php

  $lerbanco->FullRead("select * from ws_empresa join views on ws_empresa.user_id = views.user_id WHERE ws_empresa.empresa_data_renovacao >= CURRENT_DATE ORDER BY views.contar DESC LIMIT 10");
  if (!$lerbanco->getResult()):
  else:
    ?>

    <div class="white_bg">
      <div class="container margin_60">

        <div class="main_title">
          <h2 class="nomargin_top">Parceiros Selecionados para Você</h2>
          <p>

          </p>
        </div>

        <div class="row">
          <?php foreach ($lerbanco->getResult() as $i):
            extract($i);
            ?>
            <div class="col-md-6">
              <a href="<?= $site . $nome_empresa_link ?>" class="strip_list">
                <div class="ribbon_1">Popular</div>
                <div class="desc">
                  <div class="thumb_strip">


                    <?php
                    if (!empty($img_logo)):
                      echo "<img width=\"240\" height=\"240\" src=\"{$site}uploads/{$img_logo}\" alt=\"\">";
                    else:
                      echo "<img src=\"{$site}img/thumb_restaurant.jpg\" alt=\"\">";
                    endif;
                    ?>
                  </div>
                  <div class="rating">
                    <i class="icon_star voted"></i>
                    <i class="icon_star voted"></i>
                    <i class="icon_star voted"></i>
                    <i class="icon_star voted"></i>
                    <i class="icon_star voted"></i>
                  </div>
                  <h3>
                    <?=(!empty($nome_empresa) ? $nome_empresa : 'Nome_do_seu_negócio'); ?>
                  </h3>


                  <div class="location">
                    Rua
                    <?= $end_rua_n_empresa; ?>
                    <?= $end_bairro_empresa; ?><br />

                    <?php
                    // REQUERIDOS
                    // Definir horário de funcionamento diário
                    // Deve estar no formato de 24 horas, separado por traço
                    // Se fechado para o dia, deixe em branco (por exemplo, domingo) ou não adicione linha
                    // Se aberto várias vezes em um dia, insira intervalos de tempo separados por vírgula
                


                    $hours = array();



                    //CONFIGURAÇÃO DE SEGUNDA FEIRA
                    if (!empty($config_segunda) && $config_segunda == "false" && !empty($config_segundaa) && $config_segundaa == "false"):
                      $hours['mon'] = array();
                    elseif (!empty($config_segunda) && $config_segunda == "true" && !empty($config_segundaa) && $config_segundaa == "true"):
                      $hours['mon'] = array($segunda_manha_de . '-' . $segunda_manha_ate, $segunda_tarde_de . '-' . $segunda_tarde_ate);

                    elseif (!empty($config_segunda) && $config_segunda == "true" && !empty($config_segundaa) && $config_segundaa == "false"):
                      $hours['mon'] = array($segunda_manha_de . '-' . $segunda_manha_ate);
                    elseif (!empty($config_segunda) && $config_segunda == "false" && !empty($config_segundaa) && $config_segundaa == "true"):
                      $hours['mon'] = array($segunda_tarde_de . '-' . $segunda_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE SEGUNDA FEIRA
                
                    //CONFIGURAÇÃO DE TERÇA FEIRA
                    if (!empty($config_terca) && $config_terca == "false" && !empty($config_tercaa) && $config_tercaa == "false"):
                      $hours['tue'] = array();
                    elseif (!empty($config_terca) && $config_terca == "true" && !empty($config_tercaa) && $config_tercaa == "true"):
                      $hours['tue'] = array($terca_manha_de . '-' . $terca_manha_ate, $terca_tarde_de . '-' . $terca_tarde_ate);

                    elseif (!empty($config_terca) && $config_terca == "true" && !empty($config_tercaa) && $config_tercaa == "false"):
                      $hours['tue'] = array($terca_manha_de . '-' . $terca_manha_ate);
                    elseif (!empty($config_terca) && $config_terca == "false" && !empty($config_tercaa) && $config_tercaa == "true"):
                      $hours['tue'] = array($terca_tarde_de . '-' . $terca_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE TERÇA FEIRA
                
                    //CONFIGURAÇÃO DE QUARTA FEIRA
                    if (!empty($config_quarta) && $config_quarta == "false" && !empty($config_quartaa) && $config_quartaa == "false"):
                      $hours['wed'] = array();
                    elseif (!empty($config_quarta) && $config_quarta == "true" && !empty($config_quartaa) && $config_quartaa == "true"):
                      $hours['wed'] = array($quarta_manha_de . '-' . $quarta_manha_ate, $quarta_tarde_de . '-' . $quarta_tarde_ate);

                    elseif (!empty($config_quarta) && $config_quarta == "true" && !empty($config_quartaa) && $config_quartaa == "false"):
                      $hours['wed'] = array($quarta_manha_de . '-' . $quarta_manha_ate);
                    elseif (!empty($config_quarta) && $config_quarta == "false" && !empty($config_quartaa) && $config_quartaa == "true"):
                      $hours['wed'] = array($quarta_tarde_de . '-' . $quarta_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE QUARTA FEIRA
                
                    //CONFIGURAÇÃO DE QUINTA FEIRA
                    if (!empty($config_quinta) && $config_quinta == "false" && !empty($config_quintaa) && $config_quintaa == "false"):
                      $hours['thu'] = array();
                    elseif (!empty($config_quinta) && $config_quinta == "true" && !empty($config_quintaa) && $config_quintaa == "true"):
                      $hours['thu'] = array($quinta_manha_de . '-' . $quinta_manha_ate, $quinta_tarde_de . '-' . $quinta_tarde_ate);

                    elseif (!empty($config_quinta) && $config_quinta == "true" && !empty($config_quintaa) && $config_quintaa == "false"):
                      $hours['thu'] = array($quinta_manha_de . '-' . $quinta_manha_ate);
                    elseif (!empty($config_quinta) && $config_quinta == "false" && !empty($config_quintaa) && $config_quintaa == "true"):
                      $hours['thu'] = array($quinta_tarde_de . '-' . $quinta_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE QUINTA FEIRA
                
                    //CONFIGURAÇÃO DE SEXTA FEIRA
                    if (!empty($config_sexta) && $config_sexta == "false" && !empty($config_sextaa) && $config_sextaa == "false"):
                      $hours['fri'] = array();
                    elseif (!empty($config_sexta) && $config_sexta == "true" && !empty($config_sextaa) && $config_sextaa == "true"):
                      $hours['fri'] = array($sexta_manha_de . '-' . $sexta_manha_ate, $sexta_tarde_de . '-' . $sexta_tarde_ate);

                    elseif (!empty($config_sexta) && $config_sexta == "true" && !empty($config_sextaa) && $config_sextaa == "false"):
                      $hours['fri'] = array($sexta_manha_de . '-' . $sexta_manha_ate);
                    elseif (!empty($config_sexta) && $config_sexta == "false" && !empty($config_sextaa) && $config_sextaa == "true"):
                      $hours['fri'] = array($sexta_tarde_de . '-' . $sexta_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE SEXTA FEIRA
                
                    //CONFIGURAÇÃO DE SABADO
                    if (!empty($config_sabado) && $config_sabado == "false" && !empty($config_sabadoo) && $config_sabadoo == "false"):
                      $hours['sat'] = array();
                    elseif (!empty($config_sabado) && $config_sabado == "true" && !empty($config_sabadoo) && $config_sabadoo == "true"):
                      $hours['sat'] = array($sabado_manha_de . '-' . $sabado_manha_ate, $sabado_tarde_de . '-' . $sabado_tarde_ate);

                    elseif (!empty($config_sabado) && $config_sabado == "true" && !empty($config_sabadoo) && $config_sabadoo == "false"):
                      $hours['sat'] = array($sabado_manha_de . '-' . $sabado_manha_ate);
                    elseif (!empty($config_sabado) && $config_sabado == "false" && !empty($config_sabadoo) && $config_sabadoo == "true"):
                      $hours['sat'] = array($sabado_tarde_de . '-' . $sabado_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE SABADO
                
                    //CONFIGURAÇÃO DE DOMINGO
                    if (!empty($config_domingo) && $config_domingo == "false" && !empty($config_domingoo) && $config_domingoo == "false"):
                      $hours['sun'] = array();
                    elseif (!empty($config_domingo) && $config_domingo == "true" && !empty($config_domingoo) && $config_domingoo == "true"):
                      $hours['sun'] = array($domingo_manha_de . '-' . $domingo_manha_ate, $domingo_tarde_de . '-' . $domingo_tarde_ate);

                    elseif (!empty($config_domingo) && $config_domingo == "true" && !empty($config_domingoo) && $config_domingoo == "false"):
                      $hours['sun'] = array($domingo_manha_de . '-' . $domingo_manha_ate);
                    elseif (!empty($config_domingo) && $config_domingo == "false" && !empty($config_domingoo) && $config_domingoo == "true"):
                      $hours['sun'] = array($domingo_tarde_de . '-' . $domingo_tarde_ate);
                    endif;
                    //CONFIGURAÇÃO DE DOMINGO
                
                    $lerbanco->ExeRead("ws_datas_close", "WHERE user_id = :delivdata", "delivdata={$user_id}");
                    $exceptions = array();
                    if ($lerbanco->getResult()): foreach ($lerbanco->getResult() as $dadosC):
                        extract($dadosC);
                        $i = explode('/', $data);
                        $i = array_reverse($i);
                        $i = implode("-", $i);

                        if (isDateExpired($i, 1)):
                          $exceptions["{$i}"] = array();
                        endif;
                      endforeach;
                    endif;


                    // Iniciando a classe
                    $store_hours = new StoreHours($hours, $exceptions);


                    // Display open / closed menssagem
                    if ($store_hours->is_open()) {
                      echo "<span style='color:#86c953;'>ABERTO AGORA</span>";
                    } else {
                      echo "<span class=\"opening\">FECHADO</span>";
                    }
                    ?>


                    <?=(!empty($minimo_delivery) && $minimo_delivery != '0.00' ? "- Valor mínimo Delivery: R$ " . Check::Real($minimo_delivery) : ''); ?>
                  </div>


                  <ul>
                    <?php if (!empty($confirm_delivery) && $confirm_delivery == "true"): ?>

                      <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                    <?php else: ?>
                      <li>Delivery<i class="icon_check_alt2 no"></i></li>
                    <?php endif; ?>



                    <?php if (!empty($confirm_balcao) && $confirm_balcao == "true"): ?>
                      <li>Retirar no Balcão<i class="icon_check_alt2 ok"></i></li>
                    <?php else: ?>
                      <li>Retirar no Balcão<i class="icon_check_alt2 no"></i></li>
                    <?php endif; ?>

                  </ul>
                </div><!-- End desc-->
              </a><!-- End strip_list-->


            </div><!-- End col-md-6-->
            <?php
          endforeach;
          ?>
        </div><!-- End row -->
      </div><!-- End container -->
    </div><!-- End white_bg -->

    <?php

  endif;
  ?>

  <section class="passos">
    <div class="container">
      <div class="row">
        <div class="col-md-12 title">
          <h3>Como funciona?</h3>
          <p>Você oferece rapidez para seu cliente, e ganha eficiência para seu negócio.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 bloco fadeInLeft wow">
          <img src="institucional3/img/passo-1.png">
          <h4>Acesso ao Cardápio</h4>
          <p>O cliente faz o acesso do seu <strong>cardápio on-line</strong> de maneira fácil sem necessidade de baixar
            nenhum aplicativo.</p>
        </div>
        <div class="col-md-4 fadeInUp wow bloco">
          <img src="institucional3/img/passo-2.png">
          <h4>Seleção de Produtos</h4>
          <p>Com <strong>poucos cliques</strong>, o cliente tem a facilidade de navegar por todo seu cardápio e
            selecionar os produtos que deseja.</p>
        </div>
        <div class="col-md-4 fadeInRight wow bloco">
          <img src="institucional3/img/passo-3.png">
          <h4>Pedido Recebido</h4>
          <p>O pedido chega <strong>direto no seu WhatsApp</strong> de forma organizada através do número de celular do
            seu cliente.</p>

          < </div>
        </div>
        <div class="row frase-principal">
          <div class="col-md-8 offset-md-2">
            <h3>Pedidos via WhatsApp para <span id="seu-negocio"></span></h3>
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
      <a href="Demo" target="_blank">Ver Demonstração</a>
    </div>
  </section>
  <a name="recursos"></a>
  <section class="porque gradiente-padrao">
    <div class="container">
      <div class="row">
        <div class="col-md-12 title">
          <h3>Porque ter um cardápio on-line</h3>
          <p>Veja algumas vantagens em estar no IT Menu Delivery.</p>
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
  <section class="painel">
    <div class="container">
      <div class="row">
        <div class="col-md-8 offset-md-2 title-line">
          <h3>Conte também com:</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-10 offset-md-1 subtitle text-center">
          <h3>Painel de Controle</h3>
          <p>Você pode montar seu <strong>cardápio com quantos itens quiser</strong> e criar categorias e subcategorias
            para organizar seu menu com Tipo de itens, Salgados, Bebidas, Doces, Lanches, Acompanhamentos, etc.</p>
        </div>
      </div>
      <div class="row items">
        <div class="col-md-3 fadeInLeft wow">
          <div class="box">
            <img src="institucional3/img/icone-produtos.png">
            <p><strong>Cadastro ilimitado</strong>
              <br>de itens.
            </p>
          </div>
        </div>
        <div class="col-md-3 fadeInLeft wow">
          <div class="box">
            <img src="institucional3/img/icone-categorias.png">
            <p>Organização por <strong>categorias</strong> e tipos de produtos.</p>
          </div>
        </div>
        <div class="col-md-3 fadeInRight wow">
          <div class="box">
            <img src="institucional3/img/icone-responsivo.png">
            <p>Acesso por<br><strong>qualquer dispositivo</strong>.</p>
          </div>
        </div>
        <div class="col-md-3 fadeInRight wow">
          <div class="box">
            <img src="institucional3/img/icone-editar.png">
            <p><strong>Editar facilmente</strong> o visual de seu cardápio on-line.</p>
          </div>
        </div>
      </div>
    </div>
  </section>


  <a name="valores"></a>
  <section class="valores gradiente-padrao pricing">
    <div class="container">
      <div class="row">
        <div class="col-md-10 offset-md-1 title text-center">
          <h3>Valor</h3>
          <p>Plano de <strong>assinatura mensal</strong> sem taxa de adesão e <strong>sem comissionamentos</strong>!</p>
        </div>
      </div>
      <div class="row">
        <!-- 99/mes -->
        <div class="col-lg-12">
          <div class="card mb-5 mb-lg-0">
            <div class="card-header">
              <div class="center">
                <h6 class="card-price text-center"><small>R$</small><strong>
                    <?= $texto['valorPlanoUm']; ?>,00
                  </strong><span class="period">/mês</span></h6>
                <h5 class="card-title text-center">
                  <?= $texto['DiasDeTeste']; ?> Dias grátis para testar.
                </h5>
              </div>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-12">
                  <h5>Serviços Inclusos</h5>
                </div>
                <div class="col-md-6">
                  <ul class="fa-ul">
                    <li>
                      <span class="fa-li"><i class="fas fa-check"></i></span> Site Cardápio Online
                      <small>Site do seu cardápio disponível em Ex: <strong style="color:#006699">
                          <?= $site; ?>suaempresa
                        </strong></small>
                    </li>
                    <li>
                      <span class="fa-li"><i class="fas fa-check"></i></span> Pedidos via WhatsApp
                      <small>Receba pedidos diretamente em seu WhatsApp</small>
                    </li>
                    <li>
                      <span class="fa-li"><i class="fas fa-check"></i></span> Painel de Controle Web
                      <small>Gerencie seu cardápio em tempo real</small>
                    </li>
                  </ul>
                </div>
                <div class="col-md-6">
                  <ul class="fa-ul">
                    <li>
                      <span class="fa-li"><i class="fas fa-check"></i></span> Produtos Ilimitados
                      <small>Cadastro ilimitado de itens</small>
                    </li>
                    <li>
                      <span class="fa-li"><i class="fas fa-check"></i></span> Endereço de Clientes
                      <small>Receba o endereço e telefone do cliente no pedido</small>
                    </li>
                    <li>
                      <span class="fa-li"><i class="fas fa-check"></i></span> Personalização de Cores
                      <small>Personalize seu cardápio com as cores da sua marca</small>
                    </li>
                  </ul>
                </div>
              </div>

            </div>

          </div>
        </div>
      </div>
      <div align="center">
        <h6 class="card-title text-center" align="center"><a href="cadastro" class="btn btn-primary"
            target="_blank">Teste Gratis Agora</a></h6>
      </div>


    </div>
  </section>
  <a name="perguntas-frequentes"></a>
  <section class="perguntas" id="duvidas">
    <div class="container">
      <div class="row">
        <div class="col-md-12 title">
          <h3>Perguntas Frequentes</h3>
          <p>Rapidez para seu cliente, eficiência para seu negócio.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-10 offset-md-1 bloco fadeIn wow">
          <ul>
            <li class="ativo">
              <h5>O
                <?= $texto['titulo_site_landing']; ?> funciona em qualquer seguimento comercial?
              </h5>
              <h6>Sim, a versão on-line do catálogo ou cardápio só vai te trazer benefícios. Você pode vender qualquer
                produto pelo
                <?= $texto['titulo_site_landing']; ?>.
              </h6>
              <i class="fas fa-minus"></i>
            </li>
            <li>
              <h5>Da para personalizar meu Catálogo ou Cardápio?</h5>
              <h6 style="display:none">Sim, o layout são ajustáveis com a identidade da sua empresa.</h6>
              <i class="fas fa-plus"></i>
            </li>
            <li>
              <h5>Como faço para editar preços e produtos?</h5>
              <h6 style="display:none">Através do painel administrativo é possível editar todos os itens do catálogo ou
                cardápio em tempo real, direto de seu celular ou computador.</h6>
              <i class="fas fa-plus"></i>
            </li>
            <li>
              <h5>O que eu preciso para usar o
                <?= $texto['titulo_site_landing']; ?>?
              </h5>
              <h6 style="display:none">O
                <?= $texto['titulo_site_landing']; ?> foi feito para os emprendedores que precisam de um catálogo ou
                cardápio on-line com ótimos recursos e fácil acesso na internet.
              </h6>
              <i class="fas fa-plus"></i>
            </li>
            <li>
              <h5>Como faço para comprar?</h5>
              <h6 style="display:none">Preencha o cadastro pelo site clicando <a href="index.html">aqui</a>. A liberação
                do sistema ocorre imediatamente após a conclusão do seu cadastro. Você terá 30 dias para testar sem
                nenhum custo!</h6>
              <i class="fas fa-plus"></i>
            </li>
            <li>
              <h5>Preciso ter um site para criar meu cardápio?</h5>
              <h6 style="display:none">Não! Nosso sistema tem tudo o que você precisa para exibir o seu cardápio on-line
                para os seus clientes.</h6>
              <i class="fas fa-plus"></i>
            </li>
            <button class="openMore"><i class="fas fa-plus"></i> Ver mais perguntas</button>
            <div class="continuacao" style="display:none">
              <li>
                <h5>Como clientes acessam meu cardápio?</h5>
                <h6 style="display:none">O seu cardápio é otimizado para ser aberto em qualquer plataforma e modelos de
                  celulares. Através de um link exclusivo e acesso à Internet, qualquer usuário pode abrir seu cardápio
                  on-line.</h6>
                <i class="fas fa-plus"></i>
              </li>
            </div>
  </section>

  <!--Start Demo Video Section-->
  </section>
  <!--
  <section class="perguntas">
    <div class="container">
      <div class="row">
        <div class="col-md-12 title">
          <h3>Assista ao Vídeo</h3>
          <p>Para entender melhor nosso sistema, assista ao vídeo abaixo.</p>

          <div align="center"><iframe width="360" height="250" src="https://www.youtube.com/embed/cuZOUGyUfpA"
              title="YouTube video player" frameborder="0"
              allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowfullscreen></iframe></div>

        </div>
      </div>
  </section>

  -->
  </div>
  </div>
  </section>
  <footer>
    <div class="rodape gradiente-padrao">
      <div class="container">
        <div class="row">
          <div class="col-md-2 logo text-center">
            <!--
             <a href="#"><img src="img/logo-marca.png" style="width:84px;"
                alt="Cardápio de pedidos  via WhatsApp."></a>
           -->
          </div>
          <div class="col-md-10">
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
          <a href="<?= $site; ?>lojas">
            <i class="fas fa-bars" aria-hidden="true"></i>
            <span>Marktplace</span>
          </a>
        </div>
        <div class="col-4 contratez">
          <a href="https://mcdelivery.glideapp.io/">
            <i class="fas fa-mobile-alt" aria-hidden="true"></i>
            <span>Baixe nosso App</span>
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
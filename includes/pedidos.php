<style>
  #resultTable .container.margin_60 {
    margin-left: -15px;
    margin-top: -50px;
    min-width: 360px;
    padding-top: 15px;
  }

  #headTableSearch.margin_60 {
    padding-top: 35px;
    /* padding-bottom: 60px; */
    padding-bottom: 25px;

  }
</style>

<!-- INICIO DA TABELA DE SERVICOS -->
<div style="background-color:#ffffff;" id="headTableSearch" class="container margin_60">
  <div class="indent_title_in">
    <i class="fa fa-cutlery" aria-hidden="true"></i>
    <h3>PEDIDOS!</h3>
    <p style="color: red;"><b><span>*</span> Mantenha essa página aberta! A cada minuto ela te atualiza sobre os pedidos!</b></p>
  </div>
  <style type="text/css">
    #custom-search-input {
      padding: 3px;
      border: solid 1px #E4E4E4;
      border-radius: 6px;
      background-color: #fff;
    }

    #custom-search-input input {
      border: 0;
      box-shadow: none;
    }

    #custom-search-input button {
      margin: 2px 0 0 0;
      background: none;
      box-shadow: none;
      border: 0;
      color: #666666;
      padding: 0 8px 0 10px;
      border-left: solid 1px #ccc;
    }

    #custom-search-input button:hover {
      border: 0;
      box-shadow: none;
      border-left: solid 1px #ccc;
    }

    #custom-search-input .glyphicon-search {
      font-size: 23px;
    }

    .table>tbody>tr>td,
    .table>tbody>tr>th,
    .table>tfoot>tr>td,
    .table>tfoot>tr>th,
    .table>thead>tr>td,
    .table>thead>tr>th {
      padding: 8px;
      line-height: 1.42857143;
      vertical-align: top;
      border-top: 1px solid #ddd;
      padding-left: 10px;
      padding-top: 10px;
      padding-bottom: 10px;
    }


    .table>tbody>tr td#tel {
      padding: 0;
      padding-top: 10px;
      min-width: 120px;
    }

    .table>tbody>tr td#total {
      padding: 0;
      padding-top: 10px;
      min-width: 100px;
    }
  </style>
  <div style="margin: 0 auto;align-items: center;display: flex;flex-direction: row;flex-wrap: wrap;justify-content: center;" class="toolbar-btn-action">
    <a href="<?= $site . $Url[0] . '/pedidos'; ?>" class="btn btn-default">Todos <i class="fa fa-cutlery" aria-hidden="true"></i></a>&nbsp;
    <a href="<?= $site . $Url[0] . '/pedidos&status=Aberto' ?>" class="btn btn-warning">Abertos <i class="fa fa-cutlery" aria-hidden="true"></i></a>&nbsp;
    <a href="<?= $site . $Url[0] . '/pedidos&status=Em Andamento' ?>" class="btn btn-info">Em Andamento <i class="fa fa-cutlery" aria-hidden="true"></i></a>&nbsp;
    <a href="<?= $site . $Url[0] . '/pedidos&status=Disponível para Retirada' ?>" class="btn btn-info">Disponível para Retirada <i class="fa fa-cutlery" aria-hidden="true"></i></a>&nbsp;
    <a href="<?= $site . $Url[0] . '/pedidos&status=Saiu para Entrega' ?>" class="btn btn-primary">Saiu para Entrega <i class="fa fa-cutlery" aria-hidden="true"></i></a>&nbsp;
    <a href="<?= $site . $Url[0] . '/pedidos&status=Finalizado' ?>" class="btn btn-success">Finalizados <i class="fa fa-cutlery" aria-hidden="true"></i></a>&nbsp;
    <a href="<?= $site . $Url[0] . '/pedidos&status=Cancelado' ?>" class="btn btn-danger">Cancelados <i class="fa fa-cutlery" aria-hidden="true"></i></a>
  </div>

  <div style="margin: 0 auto;align-items: center;display: flex;flex-direction: row;flex-wrap: wrap;justify-content: center;" class="container">
    <div class="row">
      <div>
        <div class="col-md-6">
          <div id="custom-search-input">
            <div class="input-group col-md-12">
              <input type="text" id='searchInputId' name="s" class="form-control input-lg" placeholder="Código do pedido" />
              <span class="input-group-btn">
                <button class="btn btn-info btn-lg" onclick="searchInput()">
                  <i class="glyphicon glyphicon-search"></i>
                </button>
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</div>


<div id="resultTable"></div>



<script>
  const tempo = 30000;
  let urlCurremt = window.location.href;
  urlCurremt = urlCurremt.split('&');

  if (!!urlCurremt[1]) {



    $("#resultTable").load('req_pedidos&' + urlCurremt[1] + ' .container.margin_60_35');
    setInterval(function() {
      
      urlCurremt = window.location.href;
      urlCurremt = urlCurremt.split('&');   
        $("#resultTable").load('req_pedidos&' + urlCurremt[1] + ' .container.margin_60_35');
      
    }, tempo);

  } else {
    $("#resultTable").load(`req_pedidos .container.margin_60_35`);
    setInterval(function() {

      urlCurremt = window.location.href;
      urlCurremt = urlCurremt.split('&');

      if (!!urlCurremt[1]) {
        $("#resultTable").load('req_pedidos&' + urlCurremt[1] + ' .container.margin_60_35');

      } else {
        $("#resultTable").load(`req_pedidos .container.margin_60_35`);
      }

    }, tempo);

  }



  function searchInput(value) {
    let valueSearchInput = document.querySelector("#searchInputId").value;
    // window.location.href = urlCurremt[0] + '&s=' + document.querySelector("#searchInputId").value;
    window.history.pushState("", "", urlCurremt[0] + '&s=' + valueSearchInput);
    $("#resultTable").load('req_pedidos&s=' + valueSearchInput + ' .container.margin_60_35');

  }
</script>
library clisitef;

class CliSiTefResp {
  bool debito = false;
  bool credito = false;
  bool voucher = false;
  bool digitado = false;
  String modalidadePagamento = '';
  String modalidadePagtoExtenso = '';
  String modalidadePagtoDescrita = '';
  String dataHoraTransacao = '';
  String idCarteiraDigital = '';
  String nomeCarteiraDigital = '';
  String modalidadeCancelamento = '';
  String modalidadeCancelamentoExtenso = '';
  String modalidadeCancelamentoDescrita = '';
  String modalidadeAjuste = '';
  String autenticacao = '';
  String viaCliente = '';
  String viaEstabelecimento = '';
  String tipoComprovante = '';
  String codigoVoucher = '';
  double saque = 0;
  String instituicao = '';
  String codigoBandeiraPadrao = '';
  String nsuTef = '';
  String nsuHost = '';
  String codigoAutorizacao = '';
  String bin = '';
  double saldoAPagar = 0;
  double valorTotalRecebido = 0;
  double valorEntrada = 0;
  String dataPrimeiraParcela = '';
  double valorGorjeta = 0;
  double valorDevolucao = 0;
  double valorPagamento = 0;
  double valorASerCancelado = 0;
  String tipoCartaoBonus = '';
  String nomeInstituicao = '';
  String codigoEstabelecimento = '';
  String codigoRedeAutorizadora = '';
  String numeroCupomOriginal = '';
  String numeroIdentificadorCupomPagamento = '';
  double saldoDisponivel = 0;
  double saldoBloqueado = 0;
  String tipoDocumentoConsultado = '';
  String numeroDocumento = '';
  double taxaServico = 0;
  int numeroParcelas = 0;
  String dataPreDatado = '';
  String primeiraParcela = '';
  int diasEntreParcelas = 0;
  String mesFechado = '';
  String garantia = '';
  int numeroParcelasCDC = 0;
  String numeroCartaoCreditoDigitado = '';
  String dataVencimentoCartao = '';
  String codigoSegurancaCartao = '';
  String dataTransacaoCanceladaReimpressa = '';
  String numeroDocumentoCanceladoReimpresso = '';
  String dadoPinPad = '';
  String cnpjCredenciadoraNFCE = '';
  String bandeiraNFCE = '';
  String numeroAutorizacaoNFCE = '';
  String codigoCredenciadoraSAT = '';
  String dataValidadeCartao = '';
  String nomePortadorCartao = '';
  String ultimosQuatroDigitosCartao = '';
  String nsuHostAutorizadorTransacaoCancelada = '';
  String codigoPSP = '';

  clear() {
    debito = false;
    credito = false;
    voucher = false;
    digitado = false;
    modalidadePagamento = '';
    modalidadePagtoExtenso = '';
    modalidadePagtoDescrita = '';
    dataHoraTransacao = '';
    idCarteiraDigital = '';
    nomeCarteiraDigital = '';
    modalidadeCancelamento = '';
    modalidadeCancelamentoExtenso = '';
    modalidadeCancelamentoDescrita = '';
    modalidadeAjuste = '';
    autenticacao = '';
    viaCliente = '';
    viaEstabelecimento = '';
    tipoComprovante = '';
    codigoVoucher = '';
    saque = 0;
    instituicao = '';
    codigoBandeiraPadrao = '';
    nsuTef = '';
    nsuHost = '';
    codigoAutorizacao = '';
    bin = '';
    saldoAPagar = 0;
    valorTotalRecebido = 0;
    valorEntrada = 0;
    dataPrimeiraParcela = '';
    valorGorjeta = 0;
    valorDevolucao = 0;
    valorPagamento = 0;
    valorASerCancelado = 0;
    tipoCartaoBonus = '';
    nomeInstituicao = '';
    codigoEstabelecimento = '';
    codigoRedeAutorizadora = '';
    numeroCupomOriginal = '';
    numeroIdentificadorCupomPagamento = '';
    saldoDisponivel = 0;
    saldoBloqueado = 0;
    tipoDocumentoConsultado = '';
    numeroDocumento = '';
    taxaServico = 0;
    numeroParcelas = 0;
    dataPreDatado = '';
    primeiraParcela = '';
    diasEntreParcelas = 0;
    mesFechado = '';
    garantia = '';
    numeroParcelasCDC = 0;
    numeroCartaoCreditoDigitado = '';
    dataVencimentoCartao = '';
    codigoSegurancaCartao = '';
    dataTransacaoCanceladaReimpressa = '';
    numeroDocumentoCanceladoReimpresso = '';
    dadoPinPad = '';
    cnpjCredenciadoraNFCE = '';
    bandeiraNFCE = '';
    numeroAutorizacaoNFCE = '';
    codigoCredenciadoraSAT = '';
    dataValidadeCartao = '';
    nomePortadorCartao = '';
    ultimosQuatroDigitosCartao = '';
    nsuHostAutorizadorTransacaoCancelada = '';
    codigoPSP = '';
  }

  //to json
  Map<String, dynamic> toJson() {
    return {
      'debito': debito,
      'credito': credito,
      'voucher': voucher,
      'digitado': digitado,
      'modalidadePagamento': modalidadePagamento,
      'modalidadePagtoExtenso': modalidadePagtoExtenso,
      'modalidadePagtoDescrita': modalidadePagtoDescrita,
      'dataHoraTransacao': dataHoraTransacao,
      'idCarteiraDigital': idCarteiraDigital,
      'nomeCarteiraDigital': nomeCarteiraDigital,
      'modalidadeCancelamento': modalidadeCancelamento,
      'modalidadeCancelamentoExtenso': modalidadeCancelamentoExtenso,
      'modalidadeCancelamentoDescrita': modalidadeCancelamentoDescrita,
      'modalidadeAjuste': modalidadeAjuste,
      'autenticacao': autenticacao,
      'viaCliente': viaCliente,
      'viaEstabelecimento': viaEstabelecimento,
      'tipoComprovante': tipoComprovante,
      'codigoVoucher': codigoVoucher,
      'saque': saque,
      'instituicao': instituicao,
      'codigoBandeiraPadrao': codigoBandeiraPadrao,
      'nsuTef': nsuTef,
      'nsuHost': nsuHost,
      'codigoAutorizacao': codigoAutorizacao,
      'bin': bin,
      'saldoAPagar': saldoAPagar,
      'valorTotalRecebido': valorTotalRecebido,
      'valorEntrada': valorEntrada,
      'dataPrimeiraParcela': dataPrimeiraParcela,
      'valorGorjeta': valorGorjeta,
      'valorDevolucao': valorDevolucao,
      'valorPagamento': valorPagamento,
      'valorASerCancelado': valorASerCancelado,
      'tipoCartaoBonus': tipoCartaoBonus,
      'nomeInstituicao': nomeInstituicao,
      'codigoEstabelecimento': codigoEstabelecimento,
      'codigoRedeAutorizadora': codigoRedeAutorizadora,
      'numeroCupomOriginal': numeroCupomOriginal,
      'numeroIdentificadorCupomPagamento': numeroIdentificadorCupomPagamento,
      'saldoDisponivel ': saldoDisponivel,
      'saldoBloqueado': saldoBloqueado,
      'tipoDocumentoConsultado': tipoDocumentoConsultado,
      'numeroDocumento': numeroDocumento,
      'taxaServico': taxaServico,
      'numeroParcelas': numeroParcelas,
      'dataPreDatado': dataPreDatado,
      'primeiraParcela': primeiraParcela,
      'diasEntreParcelas': diasEntreParcelas,
      'mesFechado': mesFechado,
      'garantia': garantia,
      'numeroParcelasCDC': numeroParcelasCDC,
      'numeroCartaoCreditoDigitado': numeroCartaoCreditoDigitado,
      'dataVencimentoCartao': dataVencimentoCartao,
      'codigoSegurancaCartao': codigoSegurancaCartao,
      'dataTransacaoCanceladaReimpressa': dataTransacaoCanceladaReimpressa,
      'numeroDocumentoCanceladoReimpresso': numeroDocumentoCanceladoReimpresso,
      'dadoPinPad': dadoPinPad,
      'cnpjCredenciadoraNFCE': cnpjCredenciadoraNFCE,
      'bandeiraNFCE': bandeiraNFCE,
      'numeroAutorizacaoNFCE': numeroAutorizacaoNFCE,
      'codigoCredenciadoraSAT': codigoCredenciadoraSAT,
      'dataValidadeCartao': dataValidadeCartao,
      'nomePortadorCartao': nomePortadorCartao,
      'ultimosQuatroDigitosCartao': ultimosQuatroDigitosCartao,
      'nsuHostAutorizadorTransacaoCancelada':
          nsuHostAutorizadorTransacaoCancelada,
      'codigoPSP': codigoPSP,
    };
  }
}

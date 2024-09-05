library clisitef;

enum Modalidade {
  generico(0),
  cheque(1),
  debito(2),
  credito(3),
  voucher(5),
  teste(6),
  vendaCarteiraDigital(122),
  cancelamentoCarteiraDigital(123),
  cancelamento(200);

  const Modalidade(this.value);
  final int value;
}

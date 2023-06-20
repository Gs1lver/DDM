class Produto {
  String _produto = "";
  double _price = 0;

  Produto(this._produto, this._price);

  get produto => this._produto;
  set produto(value) => this._produto = value;

  double get price => this._price;
  set price(double value) => this._price = value;
}

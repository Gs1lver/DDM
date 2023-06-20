class Cliente {
  String _nome = "";
  String _email = "";

  Cliente(this._nome, this._email);

  get nome => this._nome;
  set nome(value) => this._nome = value;

  get email => this._email;
  set email(value) => this._email = value;
}

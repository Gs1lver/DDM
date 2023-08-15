class User{

  String _senha = "";
  String _nome = "";

  //construtor
  User(this._nome, this._senha);

  //getters e setters
  get senha => this.senha;
  set senha(value) => this._senha = value;

  get nome => this.nome;
  set nome(value) => this._nome = value;
}
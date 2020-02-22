class Product{
  String _name;
  String _imagepath;
  String _price;
  int _quantity;

  Product(this._name, this._quantity,this._imagepath, this._price);

  int get quantity => _quantity;

  set quantity(int value) {
    _quantity = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String get imagepath => _imagepath;

  set imagepath(String value) {
    _imagepath = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }


}
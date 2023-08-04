/// shop_name : "My E-Commerce Store"
/// shop_location : "New York, USA"
/// products : [{"id":1,"name":"Product 1","price":19.99,"description":"This is the first product.","category":{"id":101,"name":"Electronics"},"reviews":[{"id":501,"user":"User1","rating":4,"comment":"Great product!"},{"id":502,"user":"User2","rating":5,"comment":"Excellent product!"}]},{"id":2,"name":"Product 2","price":29.99,"description":"This is the second product.","category":{"id":102,"name":"Clothing"},"reviews":[{"id":503,"user":"User3","rating":3,"comment":"Okay product."}]}]
/// customers : [{"id":201,"name":"John Doe","email":"john.doe@example.com","orders":[{"id":301,"date":"2023-08-04","total":50.98,"items":[{"id":1,"name":"Product 1","quantity":2},{"id":2,"name":"Product 2","quantity":1}]}]},{"id":202,"name":"Jane Smith","email":"jane.smith@example.com","orders":[{"id":302,"date":"2023-08-03","total":29.99,"items":[{"id":2,"name":"Product 2","quantity":1}]}]}]

class ProductsModel {
  ProductsModel({
      String? shopName, 
      String? shopLocation, 
      List<Products>? products, 
      List<Customers>? customers,}){
    _shopName = shopName;
    _shopLocation = shopLocation;
    _products = products;
    _customers = customers;
}

  ProductsModel.fromJson(dynamic json) {
    _shopName = json['shop_name'];
    _shopLocation = json['shop_location'];
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products?.add(Products.fromJson(v));
      });
    }
    if (json['customers'] != null) {
      _customers = [];
      json['customers'].forEach((v) {
        _customers?.add(Customers.fromJson(v));
      });
    }
  }
  String? _shopName;
  String? _shopLocation;
  List<Products>? _products;
  List<Customers>? _customers;

  String? get shopName => _shopName;
  String? get shopLocation => _shopLocation;
  List<Products>? get products => _products;
  List<Customers>? get customers => _customers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['shop_name'] = _shopName;
    map['shop_location'] = _shopLocation;
    if (_products != null) {
      map['products'] = _products?.map((v) => v.toJson()).toList();
    }
    if (_customers != null) {
      map['customers'] = _customers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 201
/// name : "John Doe"
/// email : "john.doe@example.com"
/// orders : [{"id":301,"date":"2023-08-04","total":50.98,"items":[{"id":1,"name":"Product 1","quantity":2},{"id":2,"name":"Product 2","quantity":1}]}]

class Customers {
  Customers({
      num? id, 
      String? name, 
      String? email, 
      List<Orders>? orders,}){
    _id = id;
    _name = name;
    _email = email;
    _orders = orders;
}

  Customers.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _email = json['email'];
    if (json['orders'] != null) {
      _orders = [];
      json['orders'].forEach((v) {
        _orders?.add(Orders.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  String? _email;
  List<Orders>? _orders;

  num? get id => _id;
  String? get name => _name;
  String? get email => _email;
  List<Orders>? get orders => _orders;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['email'] = _email;
    if (_orders != null) {
      map['orders'] = _orders?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 301
/// date : "2023-08-04"
/// total : 50.98
/// items : [{"id":1,"name":"Product 1","quantity":2},{"id":2,"name":"Product 2","quantity":1}]

class Orders {
  Orders({
      num? id, 
      String? date, 
      num? total, 
      List<Items>? items,}){
    _id = id;
    _date = date;
    _total = total;
    _items = items;
}

  Orders.fromJson(dynamic json) {
    _id = json['id'];
    _date = json['date'];
    _total = json['total'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
  }
  num? _id;
  String? _date;
  num? _total;
  List<Items>? _items;

  num? get id => _id;
  String? get date => _date;
  num? get total => _total;
  List<Items>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['date'] = _date;
    map['total'] = _total;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 1
/// name : "Product 1"
/// quantity : 2

class Items {
  Items({
      num? id, 
      String? name, 
      num? quantity,}){
    _id = id;
    _name = name;
    _quantity = quantity;
}

  Items.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _quantity = json['quantity'];
  }
  num? _id;
  String? _name;
  num? _quantity;

  num? get id => _id;
  String? get name => _name;
  num? get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['quantity'] = _quantity;
    return map;
  }

}

/// id : 1
/// name : "Product 1"
/// price : 19.99
/// description : "This is the first product."
/// category : {"id":101,"name":"Electronics"}
/// reviews : [{"id":501,"user":"User1","rating":4,"comment":"Great product!"},{"id":502,"user":"User2","rating":5,"comment":"Excellent product!"}]

class Products {
  Products({
      num? id, 
      String? name, 
      num? price, 
      String? description, 
      Category? category, 
      List<Reviews>? reviews,}){
    _id = id;
    _name = name;
    _price = price;
    _description = description;
    _category = category;
    _reviews = reviews;
}

  Products.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _description = json['description'];
    _category = json['category'] != null ? Category.fromJson(json['category']) : null;
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add(Reviews.fromJson(v));
      });
    }
  }
  num? _id;
  String? _name;
  num? _price;
  String? _description;
  Category? _category;
  List<Reviews>? _reviews;

  num? get id => _id;
  String? get name => _name;
  num? get price => _price;
  String? get description => _description;
  Category? get category => _category;
  List<Reviews>? get reviews => _reviews;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['price'] = _price;
    map['description'] = _description;
    if (_category != null) {
      map['category'] = _category?.toJson();
    }
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 501
/// user : "User1"
/// rating : 4
/// comment : "Great product!"

class Reviews {
  Reviews({
      num? id, 
      String? user, 
      num? rating, 
      String? comment,}){
    _id = id;
    _user = user;
    _rating = rating;
    _comment = comment;
}

  Reviews.fromJson(dynamic json) {
    _id = json['id'];
    _user = json['user'];
    _rating = json['rating'];
    _comment = json['comment'];
  }
  num? _id;
  String? _user;
  num? _rating;
  String? _comment;

  num? get id => _id;
  String? get user => _user;
  num? get rating => _rating;
  String? get comment => _comment;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user'] = _user;
    map['rating'] = _rating;
    map['comment'] = _comment;
    return map;
  }

}

/// id : 101
/// name : "Electronics"

class Category {
  Category({
      num? id, 
      String? name,}){
    _id = id;
    _name = name;
}

  Category.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }
  num? _id;
  String? _name;

  num? get id => _id;
  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

}
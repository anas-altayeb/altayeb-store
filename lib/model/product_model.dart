class ProductModel {
  String? name, image, description, price, productId;

  ProductModel({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.productId,
  });

  ProductModel.fromJson(Map<dynamic, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
    price = map['price'];
    productId = map['productId'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
      'productId': productId,
    };
  }
}

class PhoneProductModel {
  String? name, image, description, price;

  PhoneProductModel(
      {required this.name,
      required this.image,
      required this.description,
      required this.price});

  PhoneProductModel.fromJson(Map<dynamic, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
    price = map['price'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
    };
  }
}

class MonitorProduct {
  String? name, image, description, price;

  MonitorProduct(
      {required this.name,
      required this.image,
      required this.description,
      required this.price});

  MonitorProduct.fromJson(Map<dynamic, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
    price = map['price'];
  }

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
    };
  }
}

class AppliancesProduct {
  String? name, image, description, price;

  AppliancesProduct(
      {required this.name,
      required this.image,
      required this.description,
      required this.price});

  AppliancesProduct.fromJson(Map<dynamic, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
    price = map['price'];
  }

  get productId => null;

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
    };
  }
}

class HeadphoneProductModel {
  String? name, image, description, price;

  HeadphoneProductModel(
      {required this.name,
      required this.image,
      required this.description,
      required this.price});

  HeadphoneProductModel.fromJson(Map<dynamic, dynamic> map) {
    // ignore: unnecessary_null_comparison
    if (map == null) {
      return;
    }

    name = map['name'];
    image = map['image'];
    description = map['description'];
    price = map['price'];
  }

  get productId => null;

  toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
    };
  }
}

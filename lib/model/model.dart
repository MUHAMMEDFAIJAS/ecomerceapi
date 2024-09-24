class Model {
  int? success;
  String? message;
  List<Banner1>? banner1;
  List<Banner4>? banner3;
  List<Banner4>? banner4;
  List<RecentViews>? recentViews;
  List<Product>? ourProducts;
  List<Product>? suggestedProducts;
  List<Product>? bestSeller;
  List<Product>? flashSale;
  List<Category>? categories;
  List<Accessory>? topAccessories;
  List<Brand>? featuredBrands;
  int? cartCount;
  int? wishlistCount;
  Currency? currency;
  int? notificationCount;

  Model({
    this.success,
    this.message,
    this.banner1,
    this.banner3,
    this.banner4,
    this.recentViews,
    this.ourProducts,
    this.suggestedProducts,
    this.bestSeller,
    this.flashSale,
    this.categories,
    this.topAccessories,
    this.featuredBrands,
    this.cartCount,
    this.wishlistCount,
    this.currency,
    this.notificationCount,
  });

  Model.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    banner1 = json['banner1'] != null
        ? (json['banner1'] as List).map((v) => Banner1.fromJson(v)).toList()
        : null;
    banner3 = json['banner3'] != null
        ? (json['banner3'] as List).map((v) => Banner4.fromJson(v)).toList()
        : null;
    banner4 = json['banner4'] != null
        ? (json['banner4'] as List).map((v) => Banner4.fromJson(v)).toList()
        : null;
    recentViews = json['recentViews'] != null
        ? (json['recentViews'] as List)
            .map((v) => RecentViews.fromJson(v))
            .toList()
        : null;
    ourProducts = json['our_products'] != null
        ? (json['our_products'] as List)
            .map((v) => Product.fromJson(v))
            .toList()
        : null;
    suggestedProducts = json['suggested_products'] != null
        ? (json['suggested_products'] as List)
            .map((v) => Product.fromJson(v))
            .toList()
        : null;
    bestSeller = json['best_seller'] != null
        ? (json['best_seller'] as List).map((v) => Product.fromJson(v)).toList()
        : null;
    flashSale = json['flash_sale'] != null
        ? (json['flash_sale'] as List).map((v) => Product.fromJson(v)).toList()
        : null;
    categories = json['categories'] != null
        ? (json['categories'] as List).map((v) => Category.fromJson(v)).toList()
        : null;
    topAccessories = json['top_accessories'] != null
        ? (json['top_accessories'] as List)
            .map((v) => Accessory.fromJson(v))
            .toList()
        : null;
    featuredBrands = json['featured_brands'] != null
        ? (json['featured_brands'] as List)
            .map((v) => Brand.fromJson(v))
            .toList()
        : null;
    cartCount = json['cart_count'];
    wishlistCount = json['wishlist_count'];
    currency =
        json['currency'] != null ? Currency.fromJson(json['currency']) : null;
    notificationCount = json['notification_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['success'] = success;
    data['message'] = message;
    if (banner1 != null)
      data['banner1'] = banner1!.map((v) => v.toJson()).toList();
    if (banner3 != null)
      data['banner3'] = banner3!.map((v) => v.toJson()).toList();
    if (banner4 != null)
      data['banner4'] = banner4!.map((v) => v.toJson()).toList();
    if (recentViews != null)
      data['recentViews'] = recentViews!.map((v) => v.toJson()).toList();
    if (ourProducts != null)
      data['our_products'] = ourProducts!.map((v) => v.toJson()).toList();
    if (suggestedProducts != null)
      data['suggested_products'] =
          suggestedProducts!.map((v) => v.toJson()).toList();
    if (bestSeller != null)
      data['best_seller'] = bestSeller!.map((v) => v.toJson()).toList();
    if (flashSale != null)
      data['flash_sale'] = flashSale!.map((v) => v.toJson()).toList();
    if (categories != null)
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    if (topAccessories != null)
      data['top_accessories'] = topAccessories!.map((v) => v.toJson()).toList();
    if (featuredBrands != null)
      data['featured_brands'] = featuredBrands!.map((v) => v.toJson()).toList();
    data['cart_count'] = cartCount;
    data['wishlist_count'] = wishlistCount;
    if (currency != null) data['currency'] = currency!.toJson();
    data['notification_count'] = notificationCount;
    return data;
  }
}

// Classes for nested objects
class Banner1 {
  int? id;
  String? image;
  String? title;

  Banner1({this.id, this.image, this.title});

  Banner1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

class Banner2 {
  int? id;
  String? image;
  String? title;

  Banner2({this.id, this.image, this.title});

  Banner2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

class Banner3 {
  int? id;
  String? image;
  String? title;

  Banner3({this.id, this.image, this.title});

  Banner3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

class Banner4 {
  int? id;
  String? image;
  String? title;

  Banner4({this.id, this.image, this.title});

  Banner4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['image'] = image;
    data['title'] = title;
    return data;
  }
}

class RecentViews {
  int? id;
  String? name;
  String? imageUrl;

  RecentViews({this.id, this.name, this.imageUrl});

  RecentViews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['image_url'] = imageUrl;
    return data;
  }
}

class Product {
  int? productId;
  String? name;
  String? price;
  String? image;

  Product({this.productId, this.name, this.price, this.image});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['productId'] = productId;
    data['name'] = name;
    data['price'] = price;
    data['image'] = image;
    return data;
  }
}

class Category {
  int? id;
  String? name;
  String? image;

  Category({this.id, this.name, this.image});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}

class Accessory {
  int? id;
  String? name;

  Accessory({this.id, this.name});

  Accessory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class Brand {
  int? id;
  String? name;
  String? image;

  Brand({this.id, this.name, this.image});

  Brand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}

class Currency {
  String? code;
  String? symbolLeft;

  Currency({this.code, this.symbolLeft});

  Currency.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    symbolLeft = json['symbol_left'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['code'] = code;
    data['symbol_left'] = symbolLeft;
    return data;
  }
}

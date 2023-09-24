class HomeModel {
  List<Data>? data;

  HomeModel({this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? enName;
  String? enSlug;
  String? bnName;
  String? bnSlug;
  String? image;
  dynamic text;
  int? status;
  int? onFront;
  String? createdAt;
  String? updatedAt;
  List<Subcategories>? subcategories;

  Data(
      {this.id,
        this.enName,
        this.enSlug,
        this.bnName,
        this.bnSlug,
        this.image,
        this.text,
        this.status,
        this.onFront,
        this.createdAt,
        this.updatedAt,
        this.subcategories});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enName = json['en_name'];
    enSlug = json['en_slug'];
    bnName = json['bn_name'];
    bnSlug = json['bn_slug'];
    image = json['image'];
    text = json['text'];
    status = json['status'];
    onFront = json['on_front'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['subcategories'] != null) {
      subcategories = <Subcategories>[];
      json['subcategories'].forEach((v) {
        subcategories!.add(new Subcategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_name'] = this.enName;
    data['en_slug'] = this.enSlug;
    data['bn_name'] = this.bnName;
    data['bn_slug'] = this.bnSlug;
    data['image'] = this.image;
    data['text'] = this.text;
    data['status'] = this.status;
    data['on_front'] = this.onFront;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.subcategories != null) {
      data['subcategories'] =
          this.subcategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Subcategories {
  int? id;
  String? enSubcategoryName;
  String? enSlug;
  String? bnSubcategoryName;
  String? bnSlug;
  int? categoryId;
  int? status;
  String? createdAt;
  String? updatedAt;
  List<Childcategories>? childcategories;

  Subcategories(
      {this.id,
        this.enSubcategoryName,
        this.enSlug,
        this.bnSubcategoryName,
        this.bnSlug,
        this.categoryId,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.childcategories});

  Subcategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enSubcategoryName = json['en_subcategoryName'];
    enSlug = json['en_slug'];
    bnSubcategoryName = json['bn_subcategoryName'];
    bnSlug = json['bn_slug'];
    categoryId = json['category_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['childcategories'] != null) {
      childcategories = <Childcategories>[];
      json['childcategories'].forEach((v) {
        childcategories!.add(new Childcategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_subcategoryName'] = this.enSubcategoryName;
    data['en_slug'] = this.enSlug;
    data['bn_subcategoryName'] = this.bnSubcategoryName;
    data['bn_slug'] = this.bnSlug;
    data['category_id'] = this.categoryId;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.childcategories != null) {
      data['childcategories'] =
          this.childcategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Childcategories {
  int? id;
  String? enChildcategoryName;
  String? enSlug;
  String? bnChildcategoryName;
  String? bnSlug;
  int? subcategoryId;
  int? status;
  String? createdAt;
  String? updatedAt;

  Childcategories(
      {this.id,
        this.enChildcategoryName,
        this.enSlug,
        this.bnChildcategoryName,
        this.bnSlug,
        this.subcategoryId,
        this.status,
        this.createdAt,
        this.updatedAt});

  Childcategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    enChildcategoryName = json['en_childcategoryName'];
    enSlug = json['en_slug'];
    bnChildcategoryName = json['bn_childcategoryName'];
    bnSlug = json['bn_slug'];
    subcategoryId = json['subcategory_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['en_childcategoryName'] = this.enChildcategoryName;
    data['en_slug'] = this.enSlug;
    data['bn_childcategoryName'] = this.bnChildcategoryName;
    data['bn_slug'] = this.bnSlug;
    data['subcategory_id'] = this.subcategoryId;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

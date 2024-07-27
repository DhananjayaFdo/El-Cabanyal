import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class CategoryEntity {
  @JsonKey(name: 'ID')
  final String? id;

  @JsonKey(name: 'MenuCategoryID')
  final String? menuCategoryId;

  @JsonKey(name: 'MenuID')
  final String? menuId;

  @JsonKey(name: 'StoreID')
  final String? storeId;

  @JsonKey(name: 'Title')
  final Title? title;

  @JsonKey(name: 'SubTitle')
  final SubTitle? subTitle;

  @JsonKey(name: 'MenuEntities')
  final List<MenuEntity2>? menuEntities;

  @JsonKey(name: 'CreatedDate')
  final String? createdDate;

  @JsonKey(name: 'ModifiedDate')
  final String? modifiedDate;

  @JsonKey(name: 'CreatedBy')
  final String? createdBy;

  @JsonKey(name: 'ModifiedBy')
  final String? modifiedBy;

  CategoryEntity({
    this.id,
    this.menuCategoryId,
    this.menuId,
    this.storeId,
    this.title,
    this.subTitle,
    this.menuEntities,
    this.createdDate,
    this.modifiedDate,
    this.createdBy,
    this.modifiedBy,
  });

  factory CategoryEntity.fromJson(Map<String, dynamic> json) => _$CategoryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryEntityToJson(this);
}

@JsonSerializable()
class Title {
  @JsonKey(name: 'en')
  final String? en;

  Title({this.en});

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);

  Map<String, dynamic> toJson() => _$TitleToJson(this);
}

@JsonSerializable()
class SubTitle {
  @JsonKey(name: 'en')
  final String? en;

  SubTitle({this.en});

  factory SubTitle.fromJson(Map<String, dynamic> json) => _$SubTitleFromJson(json);

  Map<String, dynamic> toJson() => _$SubTitleToJson(this);
}

@JsonSerializable()
class MenuEntity2 {
  @JsonKey(name: 'ID')
  final String? id;

  @JsonKey(name: 'Type')
  final String? type;

  MenuEntity2({this.id, this.type});

  factory MenuEntity2.fromJson(Map<String, dynamic> json) => _$MenuEntity2FromJson(json);

  Map<String, dynamic> toJson() => _$MenuEntity2ToJson(this);
}

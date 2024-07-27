// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryEntity _$CategoryEntityFromJson(Map<String, dynamic> json) =>
    CategoryEntity(
      id: json['ID'] as String?,
      menuCategoryId: json['MenuCategoryID'] as String?,
      menuId: json['MenuID'] as String?,
      storeId: json['StoreID'] as String?,
      title: json['Title'] == null
          ? null
          : Title.fromJson(json['Title'] as Map<String, dynamic>),
      subTitle: json['SubTitle'] == null
          ? null
          : SubTitle.fromJson(json['SubTitle'] as Map<String, dynamic>),
      menuEntities: (json['MenuEntities'] as List<dynamic>?)
          ?.map((e) => MenuEntity2.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdDate: json['CreatedDate'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      createdBy: json['CreatedBy'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
    );

Map<String, dynamic> _$CategoryEntityToJson(CategoryEntity instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'MenuCategoryID': instance.menuCategoryId,
      'MenuID': instance.menuId,
      'StoreID': instance.storeId,
      'Title': instance.title,
      'SubTitle': instance.subTitle,
      'MenuEntities': instance.menuEntities,
      'CreatedDate': instance.createdDate,
      'ModifiedDate': instance.modifiedDate,
      'CreatedBy': instance.createdBy,
      'ModifiedBy': instance.modifiedBy,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'en': instance.en,
    };

SubTitle _$SubTitleFromJson(Map<String, dynamic> json) => SubTitle(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$SubTitleToJson(SubTitle instance) => <String, dynamic>{
      'en': instance.en,
    };

MenuEntity2 _$MenuEntity2FromJson(Map<String, dynamic> json) => MenuEntity2(
      id: json['ID'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$MenuEntity2ToJson(MenuEntity2 instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Type': instance.type,
    };

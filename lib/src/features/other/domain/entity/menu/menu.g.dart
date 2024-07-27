// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuEntity _$MenuEntityFromJson(Map<String, dynamic> json) => MenuEntity(
      id: json['ID'] as String?,
      menuId: json['MenuID'] as String?,
      verticalId: json['VerticalID'] as String?,
      storeId: json['StoreID'] as String?,
      title: json['Title'] == null
          ? null
          : LanguageString.fromJson(json['Title'] as Map<String, dynamic>),
      subTitle: json['SubTitle'] == null
          ? null
          : LanguageString.fromJson(json['SubTitle'] as Map<String, dynamic>),
      description: json['Description'] == null
          ? null
          : LanguageString.fromJson(
              json['Description'] as Map<String, dynamic>),
      menuAvailability: json['MenuAvailability'] == null
          ? null
          : MenuAvailability.fromJson(
              json['MenuAvailability'] as Map<String, dynamic>),
      menuCategoryIds: (json['MenuCategoryIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdDate: json['CreatedDate'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      createdBy: json['CreatedBy'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
    );

Map<String, dynamic> _$MenuEntityToJson(MenuEntity instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'MenuID': instance.menuId,
      'VerticalID': instance.verticalId,
      'StoreID': instance.storeId,
      'Title': instance.title,
      'SubTitle': instance.subTitle,
      'Description': instance.description,
      'MenuAvailability': instance.menuAvailability,
      'MenuCategoryIDs': instance.menuCategoryIds,
      'CreatedDate': instance.createdDate,
      'ModifiedDate': instance.modifiedDate,
      'CreatedBy': instance.createdBy,
      'ModifiedBy': instance.modifiedBy,
    };

LanguageString _$LanguageStringFromJson(Map<String, dynamic> json) =>
    LanguageString(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$LanguageStringToJson(LanguageString instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

MenuAvailability _$MenuAvailabilityFromJson(Map<String, dynamic> json) =>
    MenuAvailability(
      sunday: json['Sunday'] == null
          ? null
          : DayAvailability.fromJson(json['Sunday'] as Map<String, dynamic>),
      monday: json['Monday'] == null
          ? null
          : DayAvailability.fromJson(json['Monday'] as Map<String, dynamic>),
      tuesday: json['Tuesday'] == null
          ? null
          : DayAvailability.fromJson(json['Tuesday'] as Map<String, dynamic>),
      wednesday: json['Wednesday'] == null
          ? null
          : DayAvailability.fromJson(json['Wednesday'] as Map<String, dynamic>),
      thursday: json['Thursday'] == null
          ? null
          : DayAvailability.fromJson(json['Thursday'] as Map<String, dynamic>),
      friday: json['Friday'] == null
          ? null
          : DayAvailability.fromJson(json['Friday'] as Map<String, dynamic>),
      saturday: json['Saturday'] == null
          ? null
          : DayAvailability.fromJson(json['Saturday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MenuAvailabilityToJson(MenuAvailability instance) =>
    <String, dynamic>{
      'Sunday': instance.sunday,
      'Monday': instance.monday,
      'Tuesday': instance.tuesday,
      'Wednesday': instance.wednesday,
      'Thursday': instance.thursday,
      'Friday': instance.friday,
      'Saturday': instance.saturday,
    };

DayAvailability _$DayAvailabilityFromJson(Map<String, dynamic> json) =>
    DayAvailability(
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
    );

Map<String, dynamic> _$DayAvailabilityToJson(DayAvailability instance) =>
    <String, dynamic>{
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierEntity _$ModifierEntityFromJson(Map<String, dynamic> json) =>
    ModifierEntity(
      id: json['ID'] as String?,
      modifierGroupId: json['ModifierGroupID'] as String?,
      title: json['Title'] == null
          ? null
          : LanguageString.fromJson(json['Title'] as Map<String, dynamic>),
      description: json['Description'] == null
          ? null
          : LanguageString.fromJson(
              json['Description'] as Map<String, dynamic>),
      storeId: json['StoreID'] as String?,
      displayType: json['DisplayType'] as String?,
      modifierOptions: (json['ModifierOptions'] as List<dynamic>?)
          ?.map((e) => ModifierOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantityConstraintsRules: json['QuantityConstraintsRules'] == null
          ? null
          : QuantityConstraintsRules.fromJson(
              json['QuantityConstraintsRules'] as Map<String, dynamic>),
      createdDate: json['CreatedDate'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      metaData: json['MetaData'],
    );

Map<String, dynamic> _$ModifierEntityToJson(ModifierEntity instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'ModifierGroupID': instance.modifierGroupId,
      'Title': instance.title,
      'Description': instance.description,
      'StoreID': instance.storeId,
      'DisplayType': instance.displayType,
      'ModifierOptions': instance.modifierOptions,
      'QuantityConstraintsRules': instance.quantityConstraintsRules,
      'CreatedDate': instance.createdDate,
      'ModifiedDate': instance.modifiedDate,
      'MetaData': instance.metaData,
    };

LanguageString _$LanguageStringFromJson(Map<String, dynamic> json) =>
    LanguageString(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$LanguageStringToJson(LanguageString instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

ModifierOption _$ModifierOptionFromJson(Map<String, dynamic> json) =>
    ModifierOption(
      id: json['Id'] as String?,
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$ModifierOptionToJson(ModifierOption instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Type': instance.type,
    };

QuantityConstraintsRules _$QuantityConstraintsRulesFromJson(
        Map<String, dynamic> json) =>
    QuantityConstraintsRules(
      quantity: json['Quantity'] == null
          ? null
          : Quantity2.fromJson(json['Quantity'] as Map<String, dynamic>),
      overrides: json['Overrides'],
    );

Map<String, dynamic> _$QuantityConstraintsRulesToJson(
        QuantityConstraintsRules instance) =>
    <String, dynamic>{
      'Quantity': instance.quantity,
      'Overrides': instance.overrides,
    };

Quantity2 _$Quantity2FromJson(Map<String, dynamic> json) => Quantity2(
      minPermitted: (json['MinPermitted'] as num?)?.toInt(),
      maxPermitted: (json['MaxPermitted'] as num?)?.toInt(),
      isMinPermittedOptional: json['IsMinPermittedOptional'] as bool?,
      chargeAbove: (json['ChargeAbove'] as num?)?.toInt(),
      refundUnder: (json['RefundUnder'] as num?)?.toInt(),
      minPermittedUnique: (json['MinPermittedUnique'] as num?)?.toInt(),
      maxPermittedUnique: (json['MaxPermittedUnique'] as num?)?.toInt(),
    );

Map<String, dynamic> _$Quantity2ToJson(Quantity2 instance) => <String, dynamic>{
      'MinPermitted': instance.minPermitted,
      'MaxPermitted': instance.maxPermitted,
      'IsMinPermittedOptional': instance.isMinPermittedOptional,
      'ChargeAbove': instance.chargeAbove,
      'RefundUnder': instance.refundUnder,
      'MinPermittedUnique': instance.minPermittedUnique,
      'MaxPermittedUnique': instance.maxPermittedUnique,
    };

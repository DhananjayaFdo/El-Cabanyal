import 'package:json_annotation/json_annotation.dart';

part 'modifiers.g.dart';

@JsonSerializable()
class ModifierEntity {
  @JsonKey(name: 'ID')
  final String? id;

  @JsonKey(name: 'ModifierGroupID')
  final String? modifierGroupId;

  @JsonKey(name: 'Title')
  final LanguageString? title;

  @JsonKey(name: 'Description')
  final LanguageString? description;

  @JsonKey(name: 'StoreID')
  final String? storeId;

  @JsonKey(name: 'DisplayType')
  final String? displayType;

  @JsonKey(name: 'ModifierOptions')
  final List<ModifierOption>? modifierOptions;

  @JsonKey(name: 'QuantityConstraintsRules')
  final QuantityConstraintsRules? quantityConstraintsRules;

  @JsonKey(name: 'CreatedDate')
  final String? createdDate;

  @JsonKey(name: 'ModifiedDate')
  final String? modifiedDate;

  @JsonKey(name: 'MetaData')
  final dynamic metaData;

  ModifierEntity({
    this.id,
    this.modifierGroupId,
    this.title,
    this.description,
    this.storeId,
    this.displayType,
    this.modifierOptions,
    this.quantityConstraintsRules,
    this.createdDate,
    this.modifiedDate,
    this.metaData,
  });

  factory ModifierEntity.fromJson(Map<String, dynamic> json) => _$ModifierEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierEntityToJson(this);
}

@JsonSerializable()
class LanguageString {
  @JsonKey(name: 'en')
  final String? en;

  LanguageString({this.en});

  factory LanguageString.fromJson(Map<String, dynamic> json) => _$LanguageStringFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageStringToJson(this);
}

@JsonSerializable()
class ModifierOption {
  @JsonKey(name: 'Id')
  final String? id;

  @JsonKey(name: 'Type')
  final String? type;

  ModifierOption({this.id, this.type});

  factory ModifierOption.fromJson(Map<String, dynamic> json) => _$ModifierOptionFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierOptionToJson(this);
}

@JsonSerializable()
class QuantityConstraintsRules {
  @JsonKey(name: 'Quantity')
  final Quantity2? quantity;

  @JsonKey(name: 'Overrides')
  final dynamic overrides;

  QuantityConstraintsRules({this.quantity, this.overrides});

  factory QuantityConstraintsRules.fromJson(Map<String, dynamic> json) => _$QuantityConstraintsRulesFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityConstraintsRulesToJson(this);
}

@JsonSerializable()
class Quantity2 {
  @JsonKey(name: 'MinPermitted')
  final int? minPermitted;

  @JsonKey(name: 'MaxPermitted')
  final int? maxPermitted;

  @JsonKey(name: 'IsMinPermittedOptional')
  final bool? isMinPermittedOptional;

  @JsonKey(name: 'ChargeAbove')
  final int? chargeAbove;

  @JsonKey(name: 'RefundUnder')
  final int? refundUnder;

  @JsonKey(name: 'MinPermittedUnique')
  final int? minPermittedUnique;

  @JsonKey(name: 'MaxPermittedUnique')
  final int? maxPermittedUnique;

  Quantity2({
    this.minPermitted,
    this.maxPermitted,
    this.isMinPermittedOptional,
    this.chargeAbove,
    this.refundUnder,
    this.minPermittedUnique,
    this.maxPermittedUnique,
  });

  factory Quantity2.fromJson(Map<String, dynamic> json) => _$Quantity2FromJson(json);

  Map<String, dynamic> toJson() => _$Quantity2ToJson(this);
}

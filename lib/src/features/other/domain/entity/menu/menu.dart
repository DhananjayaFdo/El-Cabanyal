import 'package:json_annotation/json_annotation.dart';

part 'menu.g.dart';

@JsonSerializable()
class MenuEntity {
  @JsonKey(name: 'ID')
  final String? id;

  @JsonKey(name: 'MenuID')
  final String? menuId;

  @JsonKey(name: 'VerticalID')
  final String? verticalId;

  @JsonKey(name: 'StoreID')
  final String? storeId;

  @JsonKey(name: 'Title')
  final LanguageString? title;

  @JsonKey(name: 'SubTitle')
  final LanguageString? subTitle;

  @JsonKey(name: 'Description')
  final LanguageString? description;

  @JsonKey(name: 'MenuAvailability')
  final MenuAvailability? menuAvailability;

  @JsonKey(name: 'MenuCategoryIDs')
  final List<String>? menuCategoryIds;

  @JsonKey(name: 'CreatedDate')
  final String? createdDate;

  @JsonKey(name: 'ModifiedDate')
  final String? modifiedDate;

  @JsonKey(name: 'CreatedBy')
  final String? createdBy;

  @JsonKey(name: 'ModifiedBy')
  final String? modifiedBy;

  MenuEntity({
    this.id,
    this.menuId,
    this.verticalId,
    this.storeId,
    this.title,
    this.subTitle,
    this.description,
    this.menuAvailability,
    this.menuCategoryIds,
    this.createdDate,
    this.modifiedDate,
    this.createdBy,
    this.modifiedBy,
  });

  factory MenuEntity.fromJson(Map<String, dynamic> json) => _$MenuEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MenuEntityToJson(this);
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
class MenuAvailability {
  @JsonKey(name: 'Sunday')
  final DayAvailability? sunday;

  @JsonKey(name: 'Monday')
  final DayAvailability? monday;

  @JsonKey(name: 'Tuesday')
  final DayAvailability? tuesday;

  @JsonKey(name: 'Wednesday')
  final DayAvailability? wednesday;

  @JsonKey(name: 'Thursday')
  final DayAvailability? thursday;

  @JsonKey(name: 'Friday')
  final DayAvailability? friday;

  @JsonKey(name: 'Saturday')
  final DayAvailability? saturday;

  MenuAvailability({
    this.sunday,
    this.monday,
    this.tuesday,
    this.wednesday,
    this.thursday,
    this.friday,
    this.saturday,
  });

  factory MenuAvailability.fromJson(Map<String, dynamic> json) => _$MenuAvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$MenuAvailabilityToJson(this);
}

@JsonSerializable()
class DayAvailability {
  @JsonKey(name: 'StartTime')
  final String? startTime;

  @JsonKey(name: 'EndTime')
  final String? endTime;

  DayAvailability({
    this.startTime,
    this.endTime,
  });

  factory DayAvailability.fromJson(Map<String, dynamic> json) => _$DayAvailabilityFromJson(json);

  Map<String, dynamic> toJson() => _$DayAvailabilityToJson(this);
}

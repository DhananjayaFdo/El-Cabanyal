import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class ItemEntity {
  @JsonKey(name: 'ID')
  final String? id;

  @JsonKey(name: 'MenuCategoryID')
  final String? menuCategoryID;

  @JsonKey(name: 'MenuItemID')
  final String? menuId;

  @JsonKey(name: 'StoreID')
  final String storeId;

  @JsonKey(name: 'Title')
  final ItemTitle? title;

  @JsonKey(name: 'Description')
  final ItemDescription? description;

  @JsonKey(name: 'ImageURL')
  final String? imageUrl;

  @JsonKey(name: 'PriceInfo')
  final ItemPriceInfo? priceInfo;

  @JsonKey(name: 'ExternalData')
  final String? externalData;

  @JsonKey(name: 'QuantityInfo')
  final QuantityInfo? quantityInfo;

  @JsonKey(name: 'SuspensionRules')
  final SuspensionRules? suspensionRules;

  @JsonKey(name: 'ModifierGroupRules')
  final ModifierGroupRules? modifierGroupRules;

  @JsonKey(name: 'RewardGroupRules')
  final RewardGroupRules? rewardGroupRules;

  @JsonKey(name: 'TaxInfo')
  final TaxInfo? taxInfo;

  @JsonKey(name: 'AggregatedProductRating')
  final int? aggregatedProductRating;

  @JsonKey(name: 'TotalReviews')
  final int? totalReviews;

  @JsonKey(name: 'CreatedDate')
  final DateTime? createdDate;

  @JsonKey(name: 'ModifiedDate')
  final DateTime? modifiedDate;

  @JsonKey(name: 'NutrientData')
  final NutrientData? nutrientData;

  @JsonKey(name: 'DishInfo')
  final DishInfo? dishInfo;

  @JsonKey(name: 'VisibilityInfo')
  final VisibilityInfo? visibilityInfo;

  @JsonKey(name: 'ProductInfo')
  final ProductInfo? productInfo;

  @JsonKey(name: 'BundleItems')
  final List<String>? bundleItems;

  @JsonKey(name: 'BeverageInfo')
  final BeverageInfo? beverageInfo;

  @JsonKey(name: 'CategoryIDs')
  final List<String>? categoryIDs;

  @JsonKey(name: 'Allergens')
  final List<String>? allergens;

  @JsonKey(name: 'MetaData')
  final MetaData? metaData;

  ItemEntity({
    this.id,
    this.menuId,
    required this.storeId,
    this.title,
    this.description,
    this.imageUrl,
    this.priceInfo,
    this.externalData,
    this.quantityInfo,
    this.suspensionRules,
    this.modifierGroupRules,
    this.rewardGroupRules,
    this.taxInfo,
    this.aggregatedProductRating,
    this.totalReviews,
    this.createdDate,
    this.modifiedDate,
    this.nutrientData,
    this.dishInfo,
    this.visibilityInfo,
    this.productInfo,
    this.bundleItems,
    this.beverageInfo,
    this.categoryIDs,
    this.allergens,
    this.metaData,
    this.menuCategoryID,
  });

  factory ItemEntity.fromJson(Map<String, dynamic> json) => _$ItemEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ItemEntityToJson(this);
}

@JsonSerializable()
class ItemTitle {
  @JsonKey(name: 'en')
  final String? en;

  ItemTitle({this.en});

  factory ItemTitle.fromJson(Map<String, dynamic> json) => _$ItemTitleFromJson(json);

  Map<String, dynamic> toJson() => _$ItemTitleToJson(this);
}

@JsonSerializable()
class ItemDescription {
  @JsonKey(name: 'en')
  final String? en;

  ItemDescription({this.en});

  factory ItemDescription.fromJson(Map<String, dynamic> json) => _$ItemDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$ItemDescriptionToJson(this);
}

@JsonSerializable()
class ItemPriceInfo {
  @JsonKey(name: 'Price')
  final ItemPrice? price;

  @JsonKey(name: 'CorePrice')
  final int? corePrice;

  @JsonKey(name: 'ContainerDeposit')
  final int? containerDeposit;

  @JsonKey(name: 'Overrides')
  final List<dynamic>? overrides;

  @JsonKey(name: 'PricebyUnit')
  final String? priceByUnit;

  ItemPriceInfo({
    this.price,
    this.corePrice,
    this.containerDeposit,
    this.overrides,
    this.priceByUnit,
  });

  factory ItemPriceInfo.fromJson(Map<String, dynamic> json) => _$ItemPriceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ItemPriceInfoToJson(this);
}

@JsonSerializable()
class ItemPrice {
  @JsonKey(name: 'DeliveryPrice')
  final int? deliveryPrice;

  @JsonKey(name: 'PickupPrice')
  final int? pickupPrice;

  @JsonKey(name: 'TablePrice')
  final int? tablePrice;

  ItemPrice({this.deliveryPrice, this.pickupPrice, this.tablePrice});

  factory ItemPrice.fromJson(Map<String, dynamic> json) => _$ItemPriceFromJson(json);

  Map<String, dynamic> toJson() => _$ItemPriceToJson(this);
}

@JsonSerializable()
class QuantityInfo {
  @JsonKey(name: 'Quantity')
  final Quantity? quantity;

  @JsonKey(name: 'Overrides')
  final List<dynamic>? overrides;

  QuantityInfo({this.quantity, this.overrides});

  factory QuantityInfo.fromJson(Map<String, dynamic> json) => _$QuantityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityInfoToJson(this);
}

@JsonSerializable()
class Quantity {
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

  Quantity({
    this.minPermitted,
    this.maxPermitted,
    this.isMinPermittedOptional,
    this.chargeAbove,
    this.refundUnder,
    this.minPermittedUnique,
    this.maxPermittedUnique,
  });

  factory Quantity.fromJson(Map<String, dynamic> json) => _$QuantityFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityToJson(this);
}

@JsonSerializable()
class SuspensionRules {
  @JsonKey(name: 'Suspension')
  final Suspension? suspension;

  @JsonKey(name: 'SuspensionOverride')
  final dynamic suspensionOverride;

  SuspensionRules({this.suspension, this.suspensionOverride});

  factory SuspensionRules.fromJson(Map<String, dynamic> json) => _$SuspensionRulesFromJson(json);

  Map<String, dynamic> toJson() => _$SuspensionRulesToJson(this);
}

@JsonSerializable()
class Suspension {
  @JsonKey(name: 'SuspendedUntil')
  final int? suspendedUntil;

  @JsonKey(name: 'IsSuspended')
  final bool? isSuspended;

  @JsonKey(name: 'Reason')
  final String? reason;

  Suspension({this.suspendedUntil, this.isSuspended, this.reason});

  factory Suspension.fromJson(Map<String, dynamic> json) => _$SuspensionFromJson(json);

  Map<String, dynamic> toJson() => _$SuspensionToJson(this);
}

@JsonSerializable()
class ModifierGroupRules {
  @JsonKey(name: 'IDs')
  final List<String>? ids;

  @JsonKey(name: 'Overrides')
  final List<dynamic>? overrides;

  ModifierGroupRules({this.ids, this.overrides});

  factory ModifierGroupRules.fromJson(Map<String, dynamic> json) => _$ModifierGroupRulesFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierGroupRulesToJson(this);
}

@JsonSerializable()
class RewardGroupRules {
  @JsonKey(name: 'Reward')
  final Reward? reward;

  @JsonKey(name: 'Overrides')
  final dynamic overrides;

  RewardGroupRules({this.reward, this.overrides});

  factory RewardGroupRules.fromJson(Map<String, dynamic> json) => _$RewardGroupRulesFromJson(json);

  Map<String, dynamic> toJson() => _$RewardGroupRulesToJson(this);
}

@JsonSerializable()
class Reward {
  @JsonKey(name: 'Type')
  final String? type;

  @JsonKey(name: 'DefaultValue')
  final int? defaultValue;

  @JsonKey(name: 'MultiplierValue')
  final int? multiplierValue;

  @JsonKey(name: 'CustomValue')
  final int? customValue;

  @JsonKey(name: 'IsMutiplierRequired')
  final bool? isMutiplierRequired;

  Reward({
    this.type,
    this.defaultValue,
    this.multiplierValue,
    this.customValue,
    this.isMutiplierRequired,
  });

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);

  Map<String, dynamic> toJson() => _$RewardToJson(this);
}

@JsonSerializable()
class TaxInfo {
  @JsonKey(name: 'Taxrate')
  final int? taxRate;

  @JsonKey(name: 'VATRateInPercentage')
  final int? vatRateInPercentage;

  TaxInfo({this.taxRate, this.vatRateInPercentage});

  factory TaxInfo.fromJson(Map<String, dynamic> json) => _$TaxInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TaxInfoToJson(this);
}

@JsonSerializable()
class NutrientData {
  @JsonKey(name: 'Calories')
  final Calories? calories;

  @JsonKey(name: 'Kilojules')
  final Kilojules? kilojules;

  @JsonKey(name: 'ServingSize')
  final ServingSize? servingSize;

  @JsonKey(name: 'NumberofServings')
  final int? numberOfServings;

  @JsonKey(name: 'NumberofServingIntervals')
  final NumberofServingIntervals? numberOfServingIntervals;

  @JsonKey(name: 'NetQuantity')
  final NetQuantity? netQuantity;

  @JsonKey(name: 'CaloriesperServing')
  final CaloriesPerServing? caloriesPerServing;

  @JsonKey(name: 'KilojulesperServing')
  final KilojulesPerServing? kilojulesPerServing;

  @JsonKey(name: 'Fat')
  final Fat? fat;

  @JsonKey(name: 'SaturatedFattyAcids')
  final SaturatedFattyAcids? saturatedFattyAcids;

  @JsonKey(name: 'Carbohydrates')
  final Carbohydrates? carbohydrates;

  @JsonKey(name: 'Sugar')
  final Sugar? sugar;

  @JsonKey(name: 'Protein')
  final Protein? protein;

  @JsonKey(name: 'Salt')
  final Salt? salt;

  NutrientData({
    this.calories,
    this.kilojules,
    this.servingSize,
    this.numberOfServings,
    this.numberOfServingIntervals,
    this.netQuantity,
    this.caloriesPerServing,
    this.kilojulesPerServing,
    this.fat,
    this.saturatedFattyAcids,
    this.carbohydrates,
    this.sugar,
    this.protein,
    this.salt,
  });

  factory NutrientData.fromJson(Map<String, dynamic> json) => _$NutrientDataFromJson(json);

  Map<String, dynamic> toJson() => _$NutrientDataToJson(this);
}

@JsonSerializable()
class Calories {
  @JsonKey(name: 'EnergyInterval')
  final EnergyInterval? energyInterval;

  @JsonKey(name: 'DisplayType')
  final int? displayType;

  Calories({this.energyInterval, this.displayType});

  factory Calories.fromJson(Map<String, dynamic> json) => _$CaloriesFromJson(json);

  Map<String, dynamic> toJson() => _$CaloriesToJson(this);
}

@JsonSerializable()
class EnergyInterval {
  @JsonKey(name: 'Lower')
  final int? lower;

  @JsonKey(name: 'Upper')
  final int? upper;

  EnergyInterval({this.lower, this.upper});

  factory EnergyInterval.fromJson(Map<String, dynamic> json) => _$EnergyIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$EnergyIntervalToJson(this);
}

@JsonSerializable()
class Kilojules {
  @JsonKey(name: 'EnergyInterval')
  final EnergyInterval? energyInterval;

  @JsonKey(name: 'DisplayType')
  final int? displayType;

  Kilojules({this.energyInterval, this.displayType});

  factory Kilojules.fromJson(Map<String, dynamic> json) => _$KilojulesFromJson(json);

  Map<String, dynamic> toJson() => _$KilojulesToJson(this);
}

@JsonSerializable()
class ServingSize {
  @JsonKey(name: 'MeasurementType')
  final String? measurementType;

  @JsonKey(name: 'WeightedInterval')
  final WeightedInterval? weightedInterval;

  @JsonKey(name: 'VolumenInterval')
  final VolumenInterval? volumenInterval;

  @JsonKey(name: 'CountInterval')
  final CountInterval? countInterval;

  ServingSize({this.measurementType, this.weightedInterval, this.volumenInterval, this.countInterval});

  factory ServingSize.fromJson(Map<String, dynamic> json) => _$ServingSizeFromJson(json);

  Map<String, dynamic> toJson() => _$ServingSizeToJson(this);
}

@JsonSerializable()
class WeightedInterval {
  @JsonKey(name: 'Interval')
  final Interval? interval;

  @JsonKey(name: 'Weight')
  final Weight? weight;

  WeightedInterval({this.interval, this.weight});

  factory WeightedInterval.fromJson(Map<String, dynamic> json) => _$WeightedIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$WeightedIntervalToJson(this);
}

@JsonSerializable()
class Interval {
  @JsonKey(name: 'Lower')
  final int? lower;

  @JsonKey(name: 'Upper')
  final int? upper;

  Interval({this.lower, this.upper});

  factory Interval.fromJson(Map<String, dynamic> json) => _$IntervalFromJson(json);

  Map<String, dynamic> toJson() => _$IntervalToJson(this);
}

@JsonSerializable()
class Weight {
  @JsonKey(name: 'UnitType')
  final String? unitType;

  Weight({this.unitType});

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

  Map<String, dynamic> toJson() => _$WeightToJson(this);
}

@JsonSerializable()
class VolumenInterval {
  @JsonKey(name: 'Interval')
  final Interval? interval;

  @JsonKey(name: 'Volume')
  final Volume? volume;

  VolumenInterval({this.interval, this.volume});

  factory VolumenInterval.fromJson(Map<String, dynamic> json) => _$VolumenIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$VolumenIntervalToJson(this);
}

@JsonSerializable()
class Volume {
  @JsonKey(name: 'UnitType')
  final String? unitType;

  Volume({this.unitType});

  factory Volume.fromJson(Map<String, dynamic> json) => _$VolumeFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeToJson(this);
}

@JsonSerializable()
class CountInterval {
  @JsonKey(name: 'Interval')
  final Interval? interval;

  @JsonKey(name: 'Count')
  final Count? count;

  CountInterval({this.interval, this.count});

  factory CountInterval.fromJson(Map<String, dynamic> json) => _$CountIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$CountIntervalToJson(this);
}

@JsonSerializable()
class Count {
  @JsonKey(name: 'UnitType')
  final String? unitType;

  Count({this.unitType});

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  Map<String, dynamic> toJson() => _$CountToJson(this);
}

@JsonSerializable()
class NumberofServingIntervals {
  @JsonKey(name: 'Lower')
  final int? lower;

  @JsonKey(name: 'Upper')
  final int? upper;

  NumberofServingIntervals({this.lower, this.upper});

  factory NumberofServingIntervals.fromJson(Map<String, dynamic> json) => _$NumberofServingIntervalsFromJson(json);

  Map<String, dynamic> toJson() => _$NumberofServingIntervalsToJson(this);
}

@JsonSerializable()
class NetQuantity {
  @JsonKey(name: 'MeasurementType')
  final String? measurementType;

  @JsonKey(name: 'WeightedInterval')
  final WeightedInterval? weightedInterval;

  @JsonKey(name: 'VolumenInterval')
  final VolumenInterval? volumenInterval;

  @JsonKey(name: 'CountInterval')
  final CountInterval? countInterval;

  NetQuantity({this.measurementType, this.weightedInterval, this.volumenInterval, this.countInterval});

  factory NetQuantity.fromJson(Map<String, dynamic> json) => _$NetQuantityFromJson(json);

  Map<String, dynamic> toJson() => _$NetQuantityToJson(this);
}

@JsonSerializable()
class CaloriesPerServing {
  @JsonKey(name: 'EnergyInterval')
  final EnergyInterval? energyInterval;

  @JsonKey(name: 'DisplayType')
  final int? displayType;

  CaloriesPerServing({this.energyInterval, this.displayType});

  factory CaloriesPerServing.fromJson(Map<String, dynamic> json) => _$CaloriesPerServingFromJson(json);

  Map<String, dynamic> toJson() => _$CaloriesPerServingToJson(this);
}

@JsonSerializable()
class KilojulesPerServing {
  @JsonKey(name: 'EnergyInterval')
  final EnergyInterval? energyInterval;

  @JsonKey(name: 'DisplayType')
  final int? displayType;

  KilojulesPerServing({this.energyInterval, this.displayType});

  factory KilojulesPerServing.fromJson(Map<String, dynamic> json) => _$KilojulesPerServingFromJson(json);

  Map<String, dynamic> toJson() => _$KilojulesPerServingToJson(this);
}

@JsonSerializable()
class Fat {
  @JsonKey(name: 'Amount')
  final Amount? amount;

  Fat({this.amount});

  factory Fat.fromJson(Map<String, dynamic> json) => _$FatFromJson(json);

  Map<String, dynamic> toJson() => _$FatToJson(this);
}

@JsonSerializable()
class Amount {
  @JsonKey(name: 'Interval')
  final Interval? interval;

  @JsonKey(name: 'Weight')
  final Weight? weight;

  Amount({this.interval, this.weight});

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

  Map<String, dynamic> toJson() => _$AmountToJson(this);
}

@JsonSerializable()
class SaturatedFattyAcids {
  @JsonKey(name: 'Amount')
  final Amount? amount;

  SaturatedFattyAcids({this.amount});

  factory SaturatedFattyAcids.fromJson(Map<String, dynamic> json) => _$SaturatedFattyAcidsFromJson(json);

  Map<String, dynamic> toJson() => _$SaturatedFattyAcidsToJson(this);
}

@JsonSerializable()
class Carbohydrates {
  @JsonKey(name: 'Amount')
  final Amount? amount;

  Carbohydrates({this.amount});

  factory Carbohydrates.fromJson(Map<String, dynamic> json) => _$CarbohydratesFromJson(json);

  Map<String, dynamic> toJson() => _$CarbohydratesToJson(this);
}

@JsonSerializable()
class Sugar {
  @JsonKey(name: 'Amount')
  final Amount? amount;

  Sugar({this.amount});

  factory Sugar.fromJson(Map<String, dynamic> json) => _$SugarFromJson(json);

  Map<String, dynamic> toJson() => _$SugarToJson(this);
}

@JsonSerializable()
class Protein {
  @JsonKey(name: 'Amount')
  final Amount? amount;

  Protein({this.amount});

  factory Protein.fromJson(Map<String, dynamic> json) => _$ProteinFromJson(json);

  Map<String, dynamic> toJson() => _$ProteinToJson(this);
}

@JsonSerializable()
class Salt {
  @JsonKey(name: 'Amount')
  final Amount? amount;

  Salt({this.amount});

  factory Salt.fromJson(Map<String, dynamic> json) => _$SaltFromJson(json);

  Map<String, dynamic> toJson() => _$SaltToJson(this);
}

@JsonSerializable()
class DishInfo {
  @JsonKey(name: 'Classifications')
  final Classifications? classifications;

  DishInfo({this.classifications});

  factory DishInfo.fromJson(Map<String, dynamic> json) => _$DishInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DishInfoToJson(this);
}

@JsonSerializable()
class Classifications {
  @JsonKey(name: 'CanServeAlone')
  final bool? canServeAlone;

  @JsonKey(name: 'IsVegetarian')
  final bool? isVegetarian;

  @JsonKey(name: 'AlcoholicItem')
  final int? alcoholicItem;

  @JsonKey(name: 'DietaryLabelInfo')
  final List<dynamic>? dietaryLabelInfo;

  @JsonKey(name: 'InstructionsForUse')
  final String? instructionsForUse;

  @JsonKey(name: 'Ingredients')
  final List<dynamic>? ingredients;

  @JsonKey(name: 'Additives')
  final List<dynamic>? additives;

  @JsonKey(name: 'PreparationType')
  final String? preparationType;

  @JsonKey(name: 'FoolBusinessOperator')
  final FoolBusinessOperator? foolBusinessOperator;

  @JsonKey(name: 'IsHighFatSaltSugar')
  final bool? isHighFatSaltSugar;

  @JsonKey(name: 'IsHalal')
  final bool? isHalal;

  @JsonKey(name: 'SpiceLevel')
  final int? spiceLevel;

  Classifications({
    this.canServeAlone,
    this.isVegetarian,
    this.alcoholicItem,
    this.dietaryLabelInfo,
    this.instructionsForUse,
    this.ingredients,
    this.additives,
    this.preparationType,
    this.foolBusinessOperator,
    this.isHighFatSaltSugar,
    this.isHalal,
    this.spiceLevel,
  });

  factory Classifications.fromJson(Map<String, dynamic> json) => _$ClassificationsFromJson(json);

  Map<String, dynamic> toJson() => _$ClassificationsToJson(this);
}

@JsonSerializable()
class FoolBusinessOperator {
  @JsonKey(name: 'Name')
  final String? name;

  @JsonKey(name: 'Address')
  final String? address;

  FoolBusinessOperator({this.name, this.address});

  factory FoolBusinessOperator.fromJson(Map<String, dynamic> json) => _$FoolBusinessOperatorFromJson(json);

  Map<String, dynamic> toJson() => _$FoolBusinessOperatorToJson(this);
}

@JsonSerializable()
class VisibilityInfo {
  @JsonKey(name: 'VisibilityHours')
  final VisibilityHours? visibilityHours;

  VisibilityInfo({this.visibilityHours});

  factory VisibilityInfo.fromJson(Map<String, dynamic> json) => _$VisibilityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VisibilityInfoToJson(this);
}

@JsonSerializable()
class VisibilityHours {
  @JsonKey(name: 'StartDate')
  final String? startDate;

  @JsonKey(name: 'EndDate')
  final String? endDate;

  @JsonKey(name: 'HoursofWeek')
  final List<int>? hoursOfWeek;

  VisibilityHours({this.startDate, this.endDate, this.hoursOfWeek});

  factory VisibilityHours.fromJson(Map<String, dynamic> json) => _$VisibilityHoursFromJson(json);

  Map<String, dynamic> toJson() => _$VisibilityHoursToJson(this);
}

@JsonSerializable()
class ProductInfo {
  @JsonKey(name: 'TargetMarket')
  final int? targetMarket;

  @JsonKey(name: 'Gtin')
  final String? gtin;

  @JsonKey(name: 'Plu')
  final String? plu;

  @JsonKey(name: 'MerchantID')
  final String? merchantId;

  @JsonKey(name: 'ProductType')
  final String? productType;

  @JsonKey(name: 'ProductTraits')
  final List<String>? productTraits;

  @JsonKey(name: 'CountriesofOrigin')
  final List<String>? countriesOfOrigin;

  ProductInfo({
    this.targetMarket,
    this.gtin,
    this.plu,
    this.merchantId,
    this.productType,
    this.productTraits,
    this.countriesOfOrigin,
  });

  factory ProductInfo.fromJson(Map<String, dynamic> json) => _$ProductInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductInfoToJson(this);
}

@JsonSerializable()
class BeverageInfo {
  @JsonKey(name: 'CaffeineAmount')
  final int caffeineAmount;

  @JsonKey(name: 'AlcoholbyVolume')
  final int alcoholByVolume;

  @JsonKey(name: 'CoffeeInfo')
  final CoffeeInfo coffeeInfo;

  BeverageInfo({
    required this.caffeineAmount,
    required this.alcoholByVolume,
    required this.coffeeInfo,
  });

  factory BeverageInfo.fromJson(Map<String, dynamic> json) => _$BeverageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BeverageInfoToJson(this);
}

@JsonSerializable()
class CoffeeInfo {
  @JsonKey(name: 'CoffeeBeanOrigin')
  final String? coffeeBeanOrigin;

  CoffeeInfo({
    this.coffeeBeanOrigin,
  });

  factory CoffeeInfo.fromJson(Map<String, dynamic> json) => _$CoffeeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CoffeeInfoToJson(this);
}

@JsonSerializable()
class MetaData {
  @JsonKey(name: 'ProductID')
  final String productId;

  @JsonKey(name: 'ProductName')
  final String productName;

  @JsonKey(name: 'UnitChartID')
  final String unitChartId;

  @JsonKey(name: 'UnitChartName')
  final String unitChartName;

  // @JsonKey(name: 'IsDealProduct')
  final String? isDealProduct;

  MetaData({
    required this.productId,
    required this.productName,
    required this.unitChartId,
    required this.unitChartName,
    this.isDealProduct = '',
  });

  factory MetaData.fromJson(Map<String, dynamic> json) => _$MetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDataToJson(this);
}

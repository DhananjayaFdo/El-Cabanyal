// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemEntity _$ItemEntityFromJson(Map<String, dynamic> json) => ItemEntity(
      id: json['ID'] as String?,
      menuId: json['MenuItemID'] as String?,
      storeId: json['StoreID'] as String,
      title: json['Title'] == null
          ? null
          : ItemTitle.fromJson(json['Title'] as Map<String, dynamic>),
      description: json['Description'] == null
          ? null
          : ItemDescription.fromJson(
              json['Description'] as Map<String, dynamic>),
      imageUrl: json['ImageURL'] as String?,
      priceInfo: json['PriceInfo'] == null
          ? null
          : ItemPriceInfo.fromJson(json['PriceInfo'] as Map<String, dynamic>),
      externalData: json['ExternalData'] as String?,
      quantityInfo: json['QuantityInfo'] == null
          ? null
          : QuantityInfo.fromJson(json['QuantityInfo'] as Map<String, dynamic>),
      suspensionRules: json['SuspensionRules'] == null
          ? null
          : SuspensionRules.fromJson(
              json['SuspensionRules'] as Map<String, dynamic>),
      modifierGroupRules: json['ModifierGroupRules'] == null
          ? null
          : ModifierGroupRules.fromJson(
              json['ModifierGroupRules'] as Map<String, dynamic>),
      rewardGroupRules: json['RewardGroupRules'] == null
          ? null
          : RewardGroupRules.fromJson(
              json['RewardGroupRules'] as Map<String, dynamic>),
      taxInfo: json['TaxInfo'] == null
          ? null
          : TaxInfo.fromJson(json['TaxInfo'] as Map<String, dynamic>),
      aggregatedProductRating:
          (json['AggregatedProductRating'] as num?)?.toInt(),
      totalReviews: (json['TotalReviews'] as num?)?.toInt(),
      createdDate: json['CreatedDate'] == null
          ? null
          : DateTime.parse(json['CreatedDate'] as String),
      modifiedDate: json['ModifiedDate'] == null
          ? null
          : DateTime.parse(json['ModifiedDate'] as String),
      nutrientData: json['NutrientData'] == null
          ? null
          : NutrientData.fromJson(json['NutrientData'] as Map<String, dynamic>),
      dishInfo: json['DishInfo'] == null
          ? null
          : DishInfo.fromJson(json['DishInfo'] as Map<String, dynamic>),
      visibilityInfo: json['VisibilityInfo'] == null
          ? null
          : VisibilityInfo.fromJson(
              json['VisibilityInfo'] as Map<String, dynamic>),
      productInfo: json['ProductInfo'] == null
          ? null
          : ProductInfo.fromJson(json['ProductInfo'] as Map<String, dynamic>),
      bundleItems: (json['BundleItems'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      beverageInfo: json['BeverageInfo'] == null
          ? null
          : BeverageInfo.fromJson(json['BeverageInfo'] as Map<String, dynamic>),
      categoryIDs: (json['CategoryIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allergens: (json['Allergens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metaData: json['MetaData'] == null
          ? null
          : MetaData.fromJson(json['MetaData'] as Map<String, dynamic>),
      menuCategoryID: json['MenuCategoryID'] as String?,
    );

Map<String, dynamic> _$ItemEntityToJson(ItemEntity instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'MenuCategoryID': instance.menuCategoryID,
      'MenuItemID': instance.menuId,
      'StoreID': instance.storeId,
      'Title': instance.title,
      'Description': instance.description,
      'ImageURL': instance.imageUrl,
      'PriceInfo': instance.priceInfo,
      'ExternalData': instance.externalData,
      'QuantityInfo': instance.quantityInfo,
      'SuspensionRules': instance.suspensionRules,
      'ModifierGroupRules': instance.modifierGroupRules,
      'RewardGroupRules': instance.rewardGroupRules,
      'TaxInfo': instance.taxInfo,
      'AggregatedProductRating': instance.aggregatedProductRating,
      'TotalReviews': instance.totalReviews,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'ModifiedDate': instance.modifiedDate?.toIso8601String(),
      'NutrientData': instance.nutrientData,
      'DishInfo': instance.dishInfo,
      'VisibilityInfo': instance.visibilityInfo,
      'ProductInfo': instance.productInfo,
      'BundleItems': instance.bundleItems,
      'BeverageInfo': instance.beverageInfo,
      'CategoryIDs': instance.categoryIDs,
      'Allergens': instance.allergens,
      'MetaData': instance.metaData,
    };

ItemTitle _$ItemTitleFromJson(Map<String, dynamic> json) => ItemTitle(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$ItemTitleToJson(ItemTitle instance) => <String, dynamic>{
      'en': instance.en,
    };

ItemDescription _$ItemDescriptionFromJson(Map<String, dynamic> json) =>
    ItemDescription(
      en: json['en'] as String?,
    );

Map<String, dynamic> _$ItemDescriptionToJson(ItemDescription instance) =>
    <String, dynamic>{
      'en': instance.en,
    };

ItemPriceInfo _$ItemPriceInfoFromJson(Map<String, dynamic> json) =>
    ItemPriceInfo(
      price: json['Price'] == null
          ? null
          : ItemPrice.fromJson(json['Price'] as Map<String, dynamic>),
      corePrice: (json['CorePrice'] as num?)?.toInt(),
      containerDeposit: (json['ContainerDeposit'] as num?)?.toInt(),
      overrides: json['Overrides'] as List<dynamic>?,
      priceByUnit: json['PricebyUnit'] as String?,
    );

Map<String, dynamic> _$ItemPriceInfoToJson(ItemPriceInfo instance) =>
    <String, dynamic>{
      'Price': instance.price,
      'CorePrice': instance.corePrice,
      'ContainerDeposit': instance.containerDeposit,
      'Overrides': instance.overrides,
      'PricebyUnit': instance.priceByUnit,
    };

ItemPrice _$ItemPriceFromJson(Map<String, dynamic> json) => ItemPrice(
      deliveryPrice: (json['DeliveryPrice'] as num?)?.toInt(),
      pickupPrice: (json['PickupPrice'] as num?)?.toInt(),
      tablePrice: (json['TablePrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ItemPriceToJson(ItemPrice instance) => <String, dynamic>{
      'DeliveryPrice': instance.deliveryPrice,
      'PickupPrice': instance.pickupPrice,
      'TablePrice': instance.tablePrice,
    };

QuantityInfo _$QuantityInfoFromJson(Map<String, dynamic> json) => QuantityInfo(
      quantity: json['Quantity'] == null
          ? null
          : Quantity.fromJson(json['Quantity'] as Map<String, dynamic>),
      overrides: json['Overrides'] as List<dynamic>?,
    );

Map<String, dynamic> _$QuantityInfoToJson(QuantityInfo instance) =>
    <String, dynamic>{
      'Quantity': instance.quantity,
      'Overrides': instance.overrides,
    };

Quantity _$QuantityFromJson(Map<String, dynamic> json) => Quantity(
      minPermitted: (json['MinPermitted'] as num?)?.toInt(),
      maxPermitted: (json['MaxPermitted'] as num?)?.toInt(),
      isMinPermittedOptional: json['IsMinPermittedOptional'] as bool?,
      chargeAbove: (json['ChargeAbove'] as num?)?.toInt(),
      refundUnder: (json['RefundUnder'] as num?)?.toInt(),
      minPermittedUnique: (json['MinPermittedUnique'] as num?)?.toInt(),
      maxPermittedUnique: (json['MaxPermittedUnique'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuantityToJson(Quantity instance) => <String, dynamic>{
      'MinPermitted': instance.minPermitted,
      'MaxPermitted': instance.maxPermitted,
      'IsMinPermittedOptional': instance.isMinPermittedOptional,
      'ChargeAbove': instance.chargeAbove,
      'RefundUnder': instance.refundUnder,
      'MinPermittedUnique': instance.minPermittedUnique,
      'MaxPermittedUnique': instance.maxPermittedUnique,
    };

SuspensionRules _$SuspensionRulesFromJson(Map<String, dynamic> json) =>
    SuspensionRules(
      suspension: json['Suspension'] == null
          ? null
          : Suspension.fromJson(json['Suspension'] as Map<String, dynamic>),
      suspensionOverride: json['SuspensionOverride'],
    );

Map<String, dynamic> _$SuspensionRulesToJson(SuspensionRules instance) =>
    <String, dynamic>{
      'Suspension': instance.suspension,
      'SuspensionOverride': instance.suspensionOverride,
    };

Suspension _$SuspensionFromJson(Map<String, dynamic> json) => Suspension(
      suspendedUntil: (json['SuspendedUntil'] as num?)?.toInt(),
      isSuspended: json['IsSuspended'] as bool?,
      reason: json['Reason'] as String?,
    );

Map<String, dynamic> _$SuspensionToJson(Suspension instance) =>
    <String, dynamic>{
      'SuspendedUntil': instance.suspendedUntil,
      'IsSuspended': instance.isSuspended,
      'Reason': instance.reason,
    };

ModifierGroupRules _$ModifierGroupRulesFromJson(Map<String, dynamic> json) =>
    ModifierGroupRules(
      ids: (json['IDs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      overrides: json['Overrides'] as List<dynamic>?,
    );

Map<String, dynamic> _$ModifierGroupRulesToJson(ModifierGroupRules instance) =>
    <String, dynamic>{
      'IDs': instance.ids,
      'Overrides': instance.overrides,
    };

RewardGroupRules _$RewardGroupRulesFromJson(Map<String, dynamic> json) =>
    RewardGroupRules(
      reward: json['Reward'] == null
          ? null
          : Reward.fromJson(json['Reward'] as Map<String, dynamic>),
      overrides: json['Overrides'],
    );

Map<String, dynamic> _$RewardGroupRulesToJson(RewardGroupRules instance) =>
    <String, dynamic>{
      'Reward': instance.reward,
      'Overrides': instance.overrides,
    };

Reward _$RewardFromJson(Map<String, dynamic> json) => Reward(
      type: json['Type'] as String?,
      defaultValue: (json['DefaultValue'] as num?)?.toInt(),
      multiplierValue: (json['MultiplierValue'] as num?)?.toInt(),
      customValue: (json['CustomValue'] as num?)?.toInt(),
      isMutiplierRequired: json['IsMutiplierRequired'] as bool?,
    );

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'Type': instance.type,
      'DefaultValue': instance.defaultValue,
      'MultiplierValue': instance.multiplierValue,
      'CustomValue': instance.customValue,
      'IsMutiplierRequired': instance.isMutiplierRequired,
    };

TaxInfo _$TaxInfoFromJson(Map<String, dynamic> json) => TaxInfo(
      taxRate: (json['Taxrate'] as num?)?.toInt(),
      vatRateInPercentage: (json['VATRateInPercentage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TaxInfoToJson(TaxInfo instance) => <String, dynamic>{
      'Taxrate': instance.taxRate,
      'VATRateInPercentage': instance.vatRateInPercentage,
    };

NutrientData _$NutrientDataFromJson(Map<String, dynamic> json) => NutrientData(
      calories: json['Calories'] == null
          ? null
          : Calories.fromJson(json['Calories'] as Map<String, dynamic>),
      kilojules: json['Kilojules'] == null
          ? null
          : Kilojules.fromJson(json['Kilojules'] as Map<String, dynamic>),
      servingSize: json['ServingSize'] == null
          ? null
          : ServingSize.fromJson(json['ServingSize'] as Map<String, dynamic>),
      numberOfServings: (json['NumberofServings'] as num?)?.toInt(),
      numberOfServingIntervals: json['NumberofServingIntervals'] == null
          ? null
          : NumberofServingIntervals.fromJson(
              json['NumberofServingIntervals'] as Map<String, dynamic>),
      netQuantity: json['NetQuantity'] == null
          ? null
          : NetQuantity.fromJson(json['NetQuantity'] as Map<String, dynamic>),
      caloriesPerServing: json['CaloriesperServing'] == null
          ? null
          : CaloriesPerServing.fromJson(
              json['CaloriesperServing'] as Map<String, dynamic>),
      kilojulesPerServing: json['KilojulesperServing'] == null
          ? null
          : KilojulesPerServing.fromJson(
              json['KilojulesperServing'] as Map<String, dynamic>),
      fat: json['Fat'] == null
          ? null
          : Fat.fromJson(json['Fat'] as Map<String, dynamic>),
      saturatedFattyAcids: json['SaturatedFattyAcids'] == null
          ? null
          : SaturatedFattyAcids.fromJson(
              json['SaturatedFattyAcids'] as Map<String, dynamic>),
      carbohydrates: json['Carbohydrates'] == null
          ? null
          : Carbohydrates.fromJson(
              json['Carbohydrates'] as Map<String, dynamic>),
      sugar: json['Sugar'] == null
          ? null
          : Sugar.fromJson(json['Sugar'] as Map<String, dynamic>),
      protein: json['Protein'] == null
          ? null
          : Protein.fromJson(json['Protein'] as Map<String, dynamic>),
      salt: json['Salt'] == null
          ? null
          : Salt.fromJson(json['Salt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NutrientDataToJson(NutrientData instance) =>
    <String, dynamic>{
      'Calories': instance.calories,
      'Kilojules': instance.kilojules,
      'ServingSize': instance.servingSize,
      'NumberofServings': instance.numberOfServings,
      'NumberofServingIntervals': instance.numberOfServingIntervals,
      'NetQuantity': instance.netQuantity,
      'CaloriesperServing': instance.caloriesPerServing,
      'KilojulesperServing': instance.kilojulesPerServing,
      'Fat': instance.fat,
      'SaturatedFattyAcids': instance.saturatedFattyAcids,
      'Carbohydrates': instance.carbohydrates,
      'Sugar': instance.sugar,
      'Protein': instance.protein,
      'Salt': instance.salt,
    };

Calories _$CaloriesFromJson(Map<String, dynamic> json) => Calories(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CaloriesToJson(Calories instance) => <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };

EnergyInterval _$EnergyIntervalFromJson(Map<String, dynamic> json) =>
    EnergyInterval(
      lower: (json['Lower'] as num?)?.toInt(),
      upper: (json['Upper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EnergyIntervalToJson(EnergyInterval instance) =>
    <String, dynamic>{
      'Lower': instance.lower,
      'Upper': instance.upper,
    };

Kilojules _$KilojulesFromJson(Map<String, dynamic> json) => Kilojules(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$KilojulesToJson(Kilojules instance) => <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };

ServingSize _$ServingSizeFromJson(Map<String, dynamic> json) => ServingSize(
      measurementType: json['MeasurementType'] as String?,
      weightedInterval: json['WeightedInterval'] == null
          ? null
          : WeightedInterval.fromJson(
              json['WeightedInterval'] as Map<String, dynamic>),
      volumenInterval: json['VolumenInterval'] == null
          ? null
          : VolumenInterval.fromJson(
              json['VolumenInterval'] as Map<String, dynamic>),
      countInterval: json['CountInterval'] == null
          ? null
          : CountInterval.fromJson(
              json['CountInterval'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServingSizeToJson(ServingSize instance) =>
    <String, dynamic>{
      'MeasurementType': instance.measurementType,
      'WeightedInterval': instance.weightedInterval,
      'VolumenInterval': instance.volumenInterval,
      'CountInterval': instance.countInterval,
    };

WeightedInterval _$WeightedIntervalFromJson(Map<String, dynamic> json) =>
    WeightedInterval(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      weight: json['Weight'] == null
          ? null
          : Weight.fromJson(json['Weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeightedIntervalToJson(WeightedInterval instance) =>
    <String, dynamic>{
      'Interval': instance.interval,
      'Weight': instance.weight,
    };

Interval _$IntervalFromJson(Map<String, dynamic> json) => Interval(
      lower: (json['Lower'] as num?)?.toInt(),
      upper: (json['Upper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'Lower': instance.lower,
      'Upper': instance.upper,
    };

Weight _$WeightFromJson(Map<String, dynamic> json) => Weight(
      unitType: json['UnitType'] as String?,
    );

Map<String, dynamic> _$WeightToJson(Weight instance) => <String, dynamic>{
      'UnitType': instance.unitType,
    };

VolumenInterval _$VolumenIntervalFromJson(Map<String, dynamic> json) =>
    VolumenInterval(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      volume: json['Volume'] == null
          ? null
          : Volume.fromJson(json['Volume'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VolumenIntervalToJson(VolumenInterval instance) =>
    <String, dynamic>{
      'Interval': instance.interval,
      'Volume': instance.volume,
    };

Volume _$VolumeFromJson(Map<String, dynamic> json) => Volume(
      unitType: json['UnitType'] as String?,
    );

Map<String, dynamic> _$VolumeToJson(Volume instance) => <String, dynamic>{
      'UnitType': instance.unitType,
    };

CountInterval _$CountIntervalFromJson(Map<String, dynamic> json) =>
    CountInterval(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      count: json['Count'] == null
          ? null
          : Count.fromJson(json['Count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountIntervalToJson(CountInterval instance) =>
    <String, dynamic>{
      'Interval': instance.interval,
      'Count': instance.count,
    };

Count _$CountFromJson(Map<String, dynamic> json) => Count(
      unitType: json['UnitType'] as String?,
    );

Map<String, dynamic> _$CountToJson(Count instance) => <String, dynamic>{
      'UnitType': instance.unitType,
    };

NumberofServingIntervals _$NumberofServingIntervalsFromJson(
        Map<String, dynamic> json) =>
    NumberofServingIntervals(
      lower: (json['Lower'] as num?)?.toInt(),
      upper: (json['Upper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NumberofServingIntervalsToJson(
        NumberofServingIntervals instance) =>
    <String, dynamic>{
      'Lower': instance.lower,
      'Upper': instance.upper,
    };

NetQuantity _$NetQuantityFromJson(Map<String, dynamic> json) => NetQuantity(
      measurementType: json['MeasurementType'] as String?,
      weightedInterval: json['WeightedInterval'] == null
          ? null
          : WeightedInterval.fromJson(
              json['WeightedInterval'] as Map<String, dynamic>),
      volumenInterval: json['VolumenInterval'] == null
          ? null
          : VolumenInterval.fromJson(
              json['VolumenInterval'] as Map<String, dynamic>),
      countInterval: json['CountInterval'] == null
          ? null
          : CountInterval.fromJson(
              json['CountInterval'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetQuantityToJson(NetQuantity instance) =>
    <String, dynamic>{
      'MeasurementType': instance.measurementType,
      'WeightedInterval': instance.weightedInterval,
      'VolumenInterval': instance.volumenInterval,
      'CountInterval': instance.countInterval,
    };

CaloriesPerServing _$CaloriesPerServingFromJson(Map<String, dynamic> json) =>
    CaloriesPerServing(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CaloriesPerServingToJson(CaloriesPerServing instance) =>
    <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };

KilojulesPerServing _$KilojulesPerServingFromJson(Map<String, dynamic> json) =>
    KilojulesPerServing(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$KilojulesPerServingToJson(
        KilojulesPerServing instance) =>
    <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };

Fat _$FatFromJson(Map<String, dynamic> json) => Fat(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FatToJson(Fat instance) => <String, dynamic>{
      'Amount': instance.amount,
    };

Amount _$AmountFromJson(Map<String, dynamic> json) => Amount(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      weight: json['Weight'] == null
          ? null
          : Weight.fromJson(json['Weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmountToJson(Amount instance) => <String, dynamic>{
      'Interval': instance.interval,
      'Weight': instance.weight,
    };

SaturatedFattyAcids _$SaturatedFattyAcidsFromJson(Map<String, dynamic> json) =>
    SaturatedFattyAcids(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaturatedFattyAcidsToJson(
        SaturatedFattyAcids instance) =>
    <String, dynamic>{
      'Amount': instance.amount,
    };

Carbohydrates _$CarbohydratesFromJson(Map<String, dynamic> json) =>
    Carbohydrates(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CarbohydratesToJson(Carbohydrates instance) =>
    <String, dynamic>{
      'Amount': instance.amount,
    };

Sugar _$SugarFromJson(Map<String, dynamic> json) => Sugar(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SugarToJson(Sugar instance) => <String, dynamic>{
      'Amount': instance.amount,
    };

Protein _$ProteinFromJson(Map<String, dynamic> json) => Protein(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProteinToJson(Protein instance) => <String, dynamic>{
      'Amount': instance.amount,
    };

Salt _$SaltFromJson(Map<String, dynamic> json) => Salt(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaltToJson(Salt instance) => <String, dynamic>{
      'Amount': instance.amount,
    };

DishInfo _$DishInfoFromJson(Map<String, dynamic> json) => DishInfo(
      classifications: json['Classifications'] == null
          ? null
          : Classifications.fromJson(
              json['Classifications'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DishInfoToJson(DishInfo instance) => <String, dynamic>{
      'Classifications': instance.classifications,
    };

Classifications _$ClassificationsFromJson(Map<String, dynamic> json) =>
    Classifications(
      canServeAlone: json['CanServeAlone'] as bool?,
      isVegetarian: json['IsVegetarian'] as bool?,
      alcoholicItem: (json['AlcoholicItem'] as num?)?.toInt(),
      dietaryLabelInfo: json['DietaryLabelInfo'] as List<dynamic>?,
      instructionsForUse: json['InstructionsForUse'] as String?,
      ingredients: json['Ingredients'] as List<dynamic>?,
      additives: json['Additives'] as List<dynamic>?,
      preparationType: json['PreparationType'] as String?,
      foolBusinessOperator: json['FoolBusinessOperator'] == null
          ? null
          : FoolBusinessOperator.fromJson(
              json['FoolBusinessOperator'] as Map<String, dynamic>),
      isHighFatSaltSugar: json['IsHighFatSaltSugar'] as bool?,
      isHalal: json['IsHalal'] as bool?,
      spiceLevel: (json['SpiceLevel'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClassificationsToJson(Classifications instance) =>
    <String, dynamic>{
      'CanServeAlone': instance.canServeAlone,
      'IsVegetarian': instance.isVegetarian,
      'AlcoholicItem': instance.alcoholicItem,
      'DietaryLabelInfo': instance.dietaryLabelInfo,
      'InstructionsForUse': instance.instructionsForUse,
      'Ingredients': instance.ingredients,
      'Additives': instance.additives,
      'PreparationType': instance.preparationType,
      'FoolBusinessOperator': instance.foolBusinessOperator,
      'IsHighFatSaltSugar': instance.isHighFatSaltSugar,
      'IsHalal': instance.isHalal,
      'SpiceLevel': instance.spiceLevel,
    };

FoolBusinessOperator _$FoolBusinessOperatorFromJson(
        Map<String, dynamic> json) =>
    FoolBusinessOperator(
      name: json['Name'] as String?,
      address: json['Address'] as String?,
    );

Map<String, dynamic> _$FoolBusinessOperatorToJson(
        FoolBusinessOperator instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Address': instance.address,
    };

VisibilityInfo _$VisibilityInfoFromJson(Map<String, dynamic> json) =>
    VisibilityInfo(
      visibilityHours: json['VisibilityHours'] == null
          ? null
          : VisibilityHours.fromJson(
              json['VisibilityHours'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VisibilityInfoToJson(VisibilityInfo instance) =>
    <String, dynamic>{
      'VisibilityHours': instance.visibilityHours,
    };

VisibilityHours _$VisibilityHoursFromJson(Map<String, dynamic> json) =>
    VisibilityHours(
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      hoursOfWeek: (json['HoursofWeek'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$VisibilityHoursToJson(VisibilityHours instance) =>
    <String, dynamic>{
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'HoursofWeek': instance.hoursOfWeek,
    };

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) => ProductInfo(
      targetMarket: (json['TargetMarket'] as num?)?.toInt(),
      gtin: json['Gtin'] as String?,
      plu: json['Plu'] as String?,
      merchantId: json['MerchantID'] as String?,
      productType: json['ProductType'] as String?,
      productTraits: (json['ProductTraits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      countriesOfOrigin: (json['CountriesofOrigin'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ProductInfoToJson(ProductInfo instance) =>
    <String, dynamic>{
      'TargetMarket': instance.targetMarket,
      'Gtin': instance.gtin,
      'Plu': instance.plu,
      'MerchantID': instance.merchantId,
      'ProductType': instance.productType,
      'ProductTraits': instance.productTraits,
      'CountriesofOrigin': instance.countriesOfOrigin,
    };

BeverageInfo _$BeverageInfoFromJson(Map<String, dynamic> json) => BeverageInfo(
      caffeineAmount: (json['CaffeineAmount'] as num).toInt(),
      alcoholByVolume: (json['AlcoholbyVolume'] as num).toInt(),
      coffeeInfo:
          CoffeeInfo.fromJson(json['CoffeeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BeverageInfoToJson(BeverageInfo instance) =>
    <String, dynamic>{
      'CaffeineAmount': instance.caffeineAmount,
      'AlcoholbyVolume': instance.alcoholByVolume,
      'CoffeeInfo': instance.coffeeInfo,
    };

CoffeeInfo _$CoffeeInfoFromJson(Map<String, dynamic> json) => CoffeeInfo(
      coffeeBeanOrigin: json['CoffeeBeanOrigin'] as String?,
    );

Map<String, dynamic> _$CoffeeInfoToJson(CoffeeInfo instance) =>
    <String, dynamic>{
      'CoffeeBeanOrigin': instance.coffeeBeanOrigin,
    };

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      productId: json['ProductID'] as String,
      productName: json['ProductName'] as String,
      unitChartId: json['UnitChartID'] as String,
      unitChartName: json['UnitChartName'] as String,
      isDealProduct: json['isDealProduct'] as String? ?? '',
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) => <String, dynamic>{
      'ProductID': instance.productId,
      'ProductName': instance.productName,
      'UnitChartID': instance.unitChartId,
      'UnitChartName': instance.unitChartName,
      'isDealProduct': instance.isDealProduct,
    };

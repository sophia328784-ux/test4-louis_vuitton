.class public final synthetic Lwq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lwq0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lwq0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Selection;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Selection;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.Selection"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.ReturnSummary"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Reason;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Reason;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.Reason"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeVariation;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeVariation;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.orders.components.exchange.ReturnOrExchangeRoute.ExchangeVariation"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response$Companion;

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v4, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;

    invoke-virtual {v0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v6, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse;

    invoke-virtual {v0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v7, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse;

    invoke-virtual {v0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v7, 0x4

    move-object v8, v6

    new-array v6, v7, [Lkotlin/reflect/KClass;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v4, v6, v1

    const/4 v4, 0x2

    aput-object v8, v6, v4

    const/4 v8, 0x3

    aput-object v0, v6, v8

    new-array v7, v7, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse$$serializer;

    aput-object v0, v7, v2

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$$serializer;

    aput-object v0, v7, v1

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse$$serializer;

    aput-object v0, v7, v4

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$$serializer;

    aput-object v0, v7, v8

    new-array v8, v2, [Ljava/lang/annotation/Annotation;

    const-string v4, "com.dynamicyield.sdk.wrapper.core.models.choose.response.Response"

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v3

    :pswitch_4
    invoke-static {}, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->values()[Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    move-result-object v0

    const-string v2, "Distant Care Service"

    const-string v3, "Store Care Service"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v3, "com.vuitton.android.data.dto.repair.RepairTypeDto"

    invoke-static {v3, v0, v2, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairStatusTranslationDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {}, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->values()[Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    move-result-object v0

    const-string v27, "shipping"

    const-string v28, "delivered_to_client"

    const-string v1, "dropped_in_store"

    const-string v2, "dropped_in_store_s"

    const-string v3, "routing_to_workshop"

    const-string v4, "expertise"

    const-string v5, "restoration"

    const-string v6, "restoration_not_performed"

    const-string v7, "ready_for_pick_up"

    const-string v8, "ready_for_pick_up_s"

    const-string v9, "home_delivery"

    const-string v10, "history"

    const-string v11, "request_submitted"

    const-string v12, "cancelled"

    const-string v13, "preliminary_assessment"

    const-string v14, "preliminary_assessment_acc"

    const-string v15, "preliminary_assessment_dec"

    const-string v16, "shipping_to_atelier"

    const-string v17, "received_at_atelier"

    const-string v18, "shipped_from_ehub"

    const-string v19, "under_assessment"

    const-string v20, "repair_in_progress"

    const-string v21, "awaiting_payment"

    const-string v22, "payment_confirmed"

    const-string v23, "payment_initiated"

    const-string v24, "payment_contact"

    const-string v25, "confirm_address"

    const-string v26, "shipping_in_preparation"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    filled-new-array/range {v2 .. v29}, [[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v3, "com.vuitton.android.data.dto.repair.RepairStatusDto"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto;->Companion:Lcom/vuitton/android/data/dto/careservices/RepairCancellationReasonDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/careservices/CancellationReasonDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CancellationReasonDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_a
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/RemoveFromCartEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v2, "com.dynamicyield.sdk.wrapper.core.enums.CurrencyType"

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_b
    sget-object v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto;->Companion:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_c
    sget-object v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no local ReinsuranceTracker provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d
    sget-object v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;->Companion:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_e
    sget-object v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;->Companion:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_f
    sget-object v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->Companion:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceImageDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_10
    sget-object v0, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto;->Companion:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceVariationDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_11
    invoke-static {}, Lcom/vuitton/android/data/dto/config/cache/RegionCache;->values()[Lcom/vuitton/android/data/dto/config/cache/RegionCache;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v2, "com.vuitton.android.data.dto.config.cache.RegionCache"

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_12
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/RecsProductDataOptions$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_13
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_14
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsVariation$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_15
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsChoice$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v2, "com.dynamicyield.sdk.wrapper.core.enums.ChoiceType"

    invoke-direct {v1, v2, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_16
    sget-object v0, Lcoil3/util/ServiceLoaderComponentRegistry;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Lcoil3/RealImageLoaderKt$addServiceLoaderComponents$lambda$1$$inlined$sortedByDescending$1;

    invoke-direct {v1}, Lcoil3/RealImageLoaderKt$addServiceLoaderComponents$lambda$1$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcoil3/util/DecoderServiceLoaderTarget;

    invoke-interface {v4}, Lcoil3/util/DecoderServiceLoaderTarget;->a()Lcoil3/decode/Decoder$Factory;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :pswitch_17
    sget-object v0, Lcoil3/util/ServiceLoaderComponentRegistry;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Lcoil3/RealImageLoaderKt$addServiceLoaderComponents$lambda$0$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lcoil3/RealImageLoaderKt$addServiceLoaderComponents$lambda$0$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcoil3/util/FetcherServiceLoaderTarget;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Lcoil3/util/FetcherServiceLoaderTarget;->a()Lcoil3/network/NetworkFetcher$Factory;

    move-result-object v6

    invoke-interface {v5}, Lcoil3/util/FetcherServiceLoaderTarget;->type()Lkotlin/reflect/KClass;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v3

    :pswitch_18
    invoke-static {}, Lcom/vuitton/android/data/dto/common/editorial/RatioDto;->values()[Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    move-result-object v0

    const-string v5, "1/1"

    const-string v6, "fullscreen"

    const-string v1, "2/3"

    const-string v2, "4/5"

    const-string v3, "16/9"

    const-string v4, "9/16"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    filled-new-array/range {v2 .. v7}, [[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v3, "com.vuitton.android.data.dto.common.editorial.RatioDto"

    invoke-static {v3, v0, v1, v2}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object v0

    return-object v0

    :pswitch_19
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$VisualQuery$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FilterSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FilterSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_1a
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/search/payload/Query$SemanticQuery$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FilterSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/FilterSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_1b
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_1c
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsVariation$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

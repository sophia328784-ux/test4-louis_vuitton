.class public final synthetic Lnw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lnw0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lnw0;->b:I

    const-string v0, "com.dynamicyield.sdk.wrapper.core.enums.EngagementType"

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$UnknownStoreModeDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$UnknownStoreModeDataDto;

    new-array v1, v2, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.data.dto.storemode.StoreModeDataDto.UnknownStoreModeDataDto"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/storelocator/StoreListDto;->Companion:Lcom/vuitton/android/data/dto/storelocator/StoreListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/storelocator/StoreDto$$serializer;->a:Lcom/vuitton/android/data/dto/storelocator/StoreDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/storelocator/StoreDto;->Companion:Lcom/vuitton/android/data/dto/storelocator/StoreDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto$$serializer;->a:Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/vuitton/android/data/dto/account/orders/StateDto;->values()[Lcom/vuitton/android/data/dto/account/orders/StateDto;

    move-result-object p0

    const-string v0, "current"

    const-string v2, "future"

    const-string v3, "past"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.account.orders.StateDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;

    invoke-static {}, Lcom/vuitton/android/data/dto/common/FeatureThemeDto;->values()[Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    move-result-object p0

    const-string v0, "light"

    const-string v2, "dark"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.common.FeatureThemeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto;->Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$$serializer;->a:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightOnboardingKt;->a:F

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    sget p0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightDto;->Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/spotlight/SpotlightSlideDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Landroidx/compose/ui/text/SpanStyleKt;->d:Landroidx/compose/ui/text/style/TextForegroundStyle;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/SpacingKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV spacings provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingVariation$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.ChoiceType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_10
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/SortItemEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/SortOrderType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.SortOrderType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->Companion:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel$Companion;

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->values()[Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->Companion:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel$Companion;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->values()[Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->Companion:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel$Companion;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->values()[Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v1, v0, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_16
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotImpressionEngagement$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v1, v0, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v1

    :pswitch_19
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/SlotClickEngagement$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot$Companion;

    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Slot;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->Companion:Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;->Companion:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;->Companion:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDropDownDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

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

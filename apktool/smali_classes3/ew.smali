.class public final synthetic Lew;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lew;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lew;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/feed/FeedDto;->Companion:Lcom/vuitton/android/data/dto/feed/FeedDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/config/FeedConfigDto;->Companion:Lcom/vuitton/android/data/dto/config/FeedConfigDto$Companion;

    invoke-static {}, Lcom/vuitton/android/data/dto/common/FeatureThemeDto;->values()[Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    move-result-object p0

    const-string v1, "light"

    const-string v2, "dark"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.common.FeatureThemeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;->values()[Lcom/vuitton/android/data/dto/config/cache/FeatureThemeCache;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.data.dto.config.cache.FeatureThemeCache"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_6
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->values()[Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.sync.Feature"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpFaqPdfDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/lightup/LightUpFaqPdfDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/common/FaqItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto;->Companion:Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesAvailableDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto$$serializer;->a:Lcom/vuitton/android/data/dto/exclusivesales/ExclusiveSalesCategoryLinksDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/applink/ExcludedAppLinksDto;->Companion:Lcom/vuitton/android/data/applink/ExcludedAppLinksDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;->values()[Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;

    move-result-object p0

    const-string v1, "standard"

    const-string v2, "clickAndCollect"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.cart.bff.ExchangeShippingTypeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;->values()[Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;

    move-result-object p0

    const-string v1, "skipToReviewError"

    const-string v2, "outOfStockError"

    const-string v3, "notSellableError"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.account.orders.ExchangeErrorCodeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EventsPayload$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DYEventSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/DYEventSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;->Companion:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto$$serializer;->a:Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentErrorsDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/error/ErrorDto;->Companion:Lcom/vuitton/android/data/dto/error/ErrorDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/error/ErrorDetailsDto$$serializer;->a:Lcom/vuitton/android/data/dto/error/ErrorDetailsDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/EngagementsPayload$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EngagementSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/EngagementSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/EngagementPN$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementPNType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.EngagementPNType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/common/IconDto;->Companion:Lcom/vuitton/android/data/dto/common/IconDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/IconDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/RatioDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    nop

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

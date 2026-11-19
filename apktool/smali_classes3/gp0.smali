.class public final synthetic Lgp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 7
    iput p1, p0, Lgp0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/LVApplication;)V
    .locals 0

    const/4 p1, 0x5

    iput p1, p0, Lgp0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget p0, p0, Lgp0;->b:I

    const-string v0, "com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.Privacy"

    const-string v1, "com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.PrivacyPiplCbdt"

    const-string v2, "com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes.PrivacyPreCompliance"

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/PanelInformationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/PanelInformationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/MediaDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/MediaDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/FinishVariationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/FinishVariationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/EditorialContentDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/HighlightDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/HighlightDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductDetailDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDetailDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductDetailSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDetailSectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ProductData;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ProductData$Companion;

    new-instance p0, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ProductData;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;->values()[Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.android.data.database.entity.searchhistory.ProductBackgroundEntity"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_f
    invoke-static {}, Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;->values()[Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    move-result-object p0

    const-string v0, "Default"

    const-string v1, "Floor"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v3}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.pdp.ProductBackgroundDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductAGECDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductAGECValueDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECValueDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    new-array v1, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;

    new-array v2, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v0, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    new-array v2, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;->Companion:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Companion;

    new-instance v5, Lkotlinx/serialization/SealedClassSerializer;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes;

    invoke-virtual {p0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v3, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    invoke-virtual {p0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v6, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;

    invoke-virtual {p0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v8, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    invoke-virtual {p0, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v8, 0x3

    move v9, v8

    new-array v8, v9, [Lkotlin/reflect/KClass;

    aput-object v3, v8, v4

    const/4 v3, 0x1

    aput-object v6, v8, v3

    const/4 v6, 0x2

    aput-object p0, v8, v6

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$Privacy;

    new-array v11, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPiplCbdt;

    new-array v11, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-instance v1, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyRoutes$PrivacyPreCompliance;

    new-array v11, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v2, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-array v9, v9, [Lkotlinx/serialization/KSerializer;

    aput-object p0, v9, v4

    aput-object v0, v9, v3

    aput-object v1, v9, v6

    new-array v10, v4, [Ljava/lang/annotation/Annotation;

    const-string v6, "com.vuitton.android.presentation.screen.privacy.components.PrivacyRoutes"

    invoke-direct/range {v5 .. v10}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v5

    :pswitch_16
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Preview$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lokhttp3/OkHttpClient$Builder;->b(J)V

    invoke-virtual {p0, v0, v1}, Lokhttp3/OkHttpClient$Builder;->d(J)V

    invoke-virtual {p0, v0, v1}, Lokhttp3/OkHttpClient$Builder;->c(J)V

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto;->Companion:Lcom/vuitton/android/data/dto/booking/PrebookFormMultipleValueDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDto;->Companion:Lcom/vuitton/android/data/dto/booking/PrebookFormDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/PrebookFormStepDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/PrebookFormDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto;->Companion:Lcom/vuitton/android/data/dto/booking/PrebookFormCategoryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    invoke-static {}, Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;->values()[Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;

    move-result-object p0

    const-string v0, "onlineStoreAppointment"

    const-string v1, "careService"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v3}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.distantrepairs.PrebookContextDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

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

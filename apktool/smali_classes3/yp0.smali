.class public final synthetic Lyp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lyp0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget p0, p0, Lyp0;->b:I

    const/4 v0, 0x0

    const-string v1, "com.vuitton.android.data.dto.plp.ProductListSectionDataDto.UnknownSectionDataDto"

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/QsrProductRecsChoice$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/ChoiceType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.ChoiceType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/CartInnerItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/PurchaseEventProperties$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/CurrencyType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.CurrencyType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;->Companion:Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;->a:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/database/entity/profile/ProfileEntity;->Companion:Lcom/vuitton/android/data/database/entity/profile/ProfileEntity$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/database/entity/address/AddressEntity$$serializer;->a:Lcom/vuitton/android/data/database/entity/address/AddressEntity$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/profile/ProfileDto;->Companion:Lcom/vuitton/android/data/dto/profile/ProfileDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;->a:Lcom/vuitton/android/data/dto/profile/PhoneNumberDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyListDto;->Companion:Lcom/vuitton/android/data/dto/producttiny/ProductTinyListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;->a:Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;->Companion:Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductShortDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductShortDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductVariationDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductVariationDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v0, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/RatioDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;->values()[Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    move-result-object p0

    const-string v1, "left"

    const-string v2, "center"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.plp.ProductListSectionDataDto.HalfEditoDto.AlignmentDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;->values()[Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;

    move-result-object p0

    const-string v1, "medium"

    const-string v2, "large"

    const-string v3, "small"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.plp.ProductListSectionDataDto.CuratedTextDto.LabelDto.FontDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto$FontDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$Companion;

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-class v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;

    invoke-virtual {p0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v6, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;

    invoke-virtual {p0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;

    invoke-virtual {p0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v8, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;

    invoke-virtual {p0, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-class v9, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;

    invoke-virtual {p0, v9}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-class v10, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    invoke-virtual {p0, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v10, 0x7

    move-object v11, v6

    new-array v6, v10, [Lkotlin/reflect/KClass;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v4, v6, v0

    const/4 v4, 0x2

    aput-object v11, v6, v4

    const/4 v11, 0x3

    aput-object v7, v6, v11

    const/4 v7, 0x4

    aput-object v8, v6, v7

    const/4 v8, 0x5

    aput-object v9, v6, v8

    const/4 v9, 0x6

    aput-object p0, v6, v9

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v12, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    new-array v13, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v12, v13}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-array v1, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$$serializer;

    aput-object v10, v1, v2

    sget-object v10, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$$serializer;

    aput-object v10, v1, v0

    sget-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$$serializer;

    aput-object v0, v1, v4

    sget-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto$$serializer;

    aput-object v0, v1, v11

    sget-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto$$serializer;

    aput-object v0, v1, v7

    sget-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto$$serializer;

    aput-object v0, v1, v8

    aput-object p0, v1, v9

    new-array v8, v2, [Ljava/lang/annotation/Annotation;

    const-string v4, "com.vuitton.android.data.dto.plp.ProductListSectionDataDto"

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v3

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductSortDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductSortDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;->INSTANCE:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$UnknownProductFilterDataTypeDto;

    new-array v1, v2, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.data.dto.productshort.ProductFilterDataTypeDto.UnknownProductFilterDataTypeDto"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple;->Companion:Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto$Simple$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto$$serializer;

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

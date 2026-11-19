.class public final synthetic Lrt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lrt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v0, v0, Lrt;->b:I

    const-string v1, "USD"

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-string v4, "1000.00 $"

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/RatioDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/RatioDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/editorial/RatioDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$Companion;

    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    const-class v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;

    invoke-virtual {v0, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v3, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;

    invoke-virtual {v0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v4, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;

    invoke-virtual {v0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v7, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    invoke-virtual {v0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v9, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;

    invoke-virtual {v0, v9}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    const-class v10, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;

    invoke-virtual {v0, v10}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    const-class v11, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;

    invoke-virtual {v0, v11}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    const-class v12, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;

    invoke-virtual {v0, v12}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    const-class v13, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;

    invoke-virtual {v0, v13}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    const-class v14, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;

    invoke-virtual {v0, v14}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    const-class v15, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;

    invoke-virtual {v0, v15}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    const/16 p0, 0x0

    const-class v5, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;

    invoke-virtual {v0, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    move-object/from16 v16, v1

    const-class v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    move-object/from16 v17, v1

    const-class v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/16 v1, 0xf

    move-object/from16 v18, v9

    new-array v9, v1, [Lkotlin/reflect/KClass;

    aput-object v16, v9, p0

    const/16 v16, 0x1

    aput-object v2, v9, v16

    const/4 v2, 0x2

    aput-object v3, v9, v2

    const/4 v3, 0x3

    aput-object v4, v9, v3

    const/4 v4, 0x4

    aput-object v7, v9, v4

    const/4 v7, 0x5

    aput-object v18, v9, v7

    const/16 v18, 0x6

    aput-object v10, v9, v18

    const/4 v10, 0x7

    aput-object v11, v9, v10

    const/16 v11, 0x8

    aput-object v12, v9, v11

    const/16 v12, 0x9

    aput-object v13, v9, v12

    const/16 v13, 0xa

    aput-object v14, v9, v13

    const/16 v14, 0xb

    aput-object v15, v9, v14

    const/16 v15, 0xc

    aput-object v5, v9, v15

    const/16 v5, 0xd

    aput-object v17, v9, v5

    const/16 v17, 0xe

    aput-object v0, v9, v17

    new-array v0, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto$$serializer;

    aput-object v1, v0, p0

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$$serializer;

    aput-object v1, v0, v16

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto$$serializer;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto$$serializer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$$serializer;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$$serializer;

    aput-object v1, v0, v18

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$$serializer;

    aput-object v1, v0, v10

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto$$serializer;

    aput-object v1, v0, v11

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$$serializer;

    aput-object v1, v0, v12

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto$$serializer;

    aput-object v1, v0, v13

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto$$serializer;

    aput-object v1, v0, v14

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$$serializer;

    aput-object v1, v0, v15

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$$serializer;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto$$serializer;

    aput-object v1, v0, v17

    move/from16 v1, p0

    new-array v11, v1, [Ljava/lang/annotation/Annotation;

    const-string v7, "com.vuitton.android.data.dto.common.editorial.EditorialModuleDto"

    move-object v10, v0

    invoke-direct/range {v6 .. v11}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6

    :pswitch_8
    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->a:Lkotlin/Lazy;

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const/16 v9, 0x60

    const/4 v10, 0x0

    const-string v2, "M40995"

    const-string v3, "Product 1"

    const-string v4, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v5, 0x7f080088

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const-string v3, "M45686"

    const-string v4, "Product 2"

    const-string v5, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v6, 0x7f080088

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    const/16 v11, 0x60

    const/4 v12, 0x0

    const-string v4, "M67890"

    const-string v5, "Product 3"

    const-string v6, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v7, 0x7f080088

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    const/16 v12, 0x60

    const/4 v13, 0x0

    const-string v5, "M11111"

    const-string v6, "Product 4"

    const-string v7, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v8, 0x7f080088

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v1, v2, v3, v4}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->a:Lkotlin/Lazy;

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const/16 v9, 0x60

    const/4 v10, 0x0

    const-string v2, "M12345"

    const-string v3, "Grid Item Mock"

    const-string v4, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v5, 0x7f080088

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_a
    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->a:Lkotlin/Lazy;

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    new-instance v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v10, v2, v4, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const/16 v13, 0x60

    const/4 v14, 0x0

    const-string v6, "M40995"

    const-string v7, "Lorem Ipsum"

    const-string v8, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v9, 0x7f080088

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    const/4 v2, 0x0

    invoke-direct {v11, v2, v4, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const/16 v14, 0x60

    const/4 v15, 0x0

    const-string v7, "skuId"

    const-string v8, "Lorem Ipsum with a very long name "

    const-string v9, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const v10, 0x7f080088

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    filled-new-array {v5, v6, v1, v0}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_b
    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialMocksKt;->a:Lkotlin/Lazy;

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    new-instance v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v10, v2, v4, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const/16 v13, 0x60

    const/4 v14, 0x0

    const-string v6, "skuId"

    const-string v7, "Lorem Ipsum"

    const-string v8, "image url"

    const v9, 0x7f080088

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :pswitch_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/TutorialDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_f
    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_10
    sget-object v0, Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/earphone/EarphoneSectionDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/connectivity/common/FaqCategoryDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_11
    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;->NONE:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;

    return-object v0

    :pswitch_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    sget-object v0, Lcom/google/accompanist/drawablepainter/DrawablePainterKt;->a:Lkotlin/Lazy;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0

    :pswitch_14
    sget v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    sget v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    sget v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    sget v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_18
    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Form;->INSTANCE:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Form;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormRoutes.Form"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_19
    const/4 v2, 0x0

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Confirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormRoutes$Confirmation;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormRoutes.Confirmation"

    invoke-direct {v0, v3, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_1a
    sget v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DistantRepairBottomSheetDatePickerKt;->a:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListBottomSheet$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_LEFT:Lcom/linkplay/core/status/LPPlayChannel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_RIGHT:Lcom/linkplay/core/status/LPPlayChannel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/linkplay/core/status/LPPlayChannel;->LP_CHANNEL_STEREO:Lcom/linkplay/core/status/LPPlayChannel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_1c
    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/DispatchIdentifierListDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

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

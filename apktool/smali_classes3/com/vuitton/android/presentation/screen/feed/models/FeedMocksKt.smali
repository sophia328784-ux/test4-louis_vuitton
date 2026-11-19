.class public abstract Lcom/vuitton/android/presentation/screen/feed/models/FeedMocksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public static final b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 42

    new-instance v4, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v4, v5, v10}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v11, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->d:Ljava/lang/String;

    sget-object v13, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    const-wide/32 v1, 0x1c9c380

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v14

    const/16 v18, 0x38

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v20, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v24, 0x6

    const/16 v25, 0x0

    const-string v21, "https://pass-prp.louisvuitton.com/media/app-bo/2f21de32-7aa3-4dcc-8147-0d051fbf1f81.jpeg"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v25}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v20, Lcom/vuitton/android/presentation/screen/feed/models/FeedMocksKt;->a:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    new-instance v15, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v21, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v29, 0x7d

    const/16 v30, 0x0

    const-string v23, "https://vod.fl.freecaster.net/vod/louisvuitton/tou7XlcVyZ_1080p.mp4"

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v21

    invoke-direct {v15, v10, v0}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    const-string v0, "A11Y-IMMERSIVE"

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    new-instance v21, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "USD"

    const/4 v11, 0x0

    const-string v7, "1000.00 $"

    invoke-direct {v0, v11, v7, v5, v6}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    const/16 v29, 0x60

    const-string v22, "skuId"

    const-string v23, "Lorem Ipsum"

    const-string v24, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-apogee--LP0001_PM2_Front%20view.jpg"

    const v25, 0x7f080088

    move-object/from16 v26, v0

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v12, v21

    new-instance v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    sget-object v0, Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;->MARIELOUISE_CENTERED:Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;

    invoke-direct {v7, v0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;)V

    sget-object v26, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_2X3:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    move-wide v0, v1

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    const-string v5, "Simple Card"

    const-string v13, "Drawing inspiration from Louis Vuitton\u2019s trunkmaking craftsmanship Lorem ipsum dolor sit amet, consectetur adipiscing elit "

    invoke-direct {v2, v5, v13}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v0

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const-string v1, "SIMPLE-section"

    move-wide/from16 v16, v5

    const/4 v6, 0x0

    move-object/from16 v5, v26

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v0

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    new-instance v33, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    sget-object v35, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    const/16 v40, 0x3c

    const/16 v41, 0x0

    const-string v34, "liveshow"

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v33 .. v41}, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v33

    sget-object v2, Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;->LANDSCAPE:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-direct {v0, v1, v2, v11}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Z)V

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    const-string v2, "Live"

    invoke-direct {v1, v13, v2}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    const/16 v29, 0x20

    const-string v22, "LIVE-section"

    const/16 v24, 0x0

    move-object/from16 v28, v0

    move-object/from16 v23, v1

    move-object/from16 v25, v15

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v21

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    const-wide/32 v5, 0x1c9c380

    invoke-virtual {v1, v5, v6}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {v0, v1, v6}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;-><init>(Ljava/time/Instant;Z)V

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    const-string v2, "Event card"

    invoke-direct {v1, v13, v2}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    const-string v22, "EVENT-section"

    move-object/from16 v28, v0

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v18, v21

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;

    invoke-direct {v0, v10, v6, v10}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Simple;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v26, Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;->RATIO_16X9:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    const-string v2, "16/9 card"

    invoke-direct {v1, v13, v2}, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    const-string v22, "16x9-section"

    move-object/from16 v28, v0

    move-object/from16 v23, v1

    invoke-direct/range {v21 .. v30}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v19, v21

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v1, "D\u00e9couvrez la collection Vivienne pour la fin d\u2019ann\u00e9e"

    const-string v2, "Vivienne Winter holiday"

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;

    const-string v2, "slide_01"

    invoke-direct {v1, v2, v4, v10}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;

    const-string v5, "slide_02"

    invoke-direct {v2, v5, v4, v10}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    filled-new-array {v1, v2}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselLSingleItemUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v21, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;

    const-string v22, "feed_carousel_L_single"

    move-object/from16 v23, v0

    move-object/from16 v26, v1

    move-object/from16 v25, v3

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLSingleUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    move-object/from16 v28, v21

    new-instance v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v0, "Mon monogram personalization"

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v5, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    const-string v1, "slide_01"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    move-object v13, v0

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v0, "Sacs Femme"

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v5, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    const-string v1, "slide_02"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    filled-new-array {v13, v0}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    const-string v2, "feed_carousel_multi"

    invoke-direct {v8, v2, v10, v0, v1}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    new-instance v10, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v1, "D\u00e9couvrez le dernier d\u00e9fil\u00e9 de la maison"

    const-string v2, "D\u00e9fil\u00e9s"

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v1, "D\u00e9couvrir le d\u00e9fil\u00e9 Femme Printemps-\u00c9t\u00e9 2026"

    const-string v2, "Surtitle"

    invoke-direct {v13, v1, v2}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    move v5, v11

    new-instance v11, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    move-object/from16 v21, v12

    const-string v12, "slide_01"

    move-object/from16 v16, v1

    move-object v14, v3

    move/from16 v29, v5

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v5, "D\u00e9couvrir le d\u00e9fil\u00e9 Homme Printemps-\u00c9t\u00e9 2026"

    invoke-direct {v1, v5, v2}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v5, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    move-object v2, v0

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    move-object v12, v2

    move-object v2, v1

    const-string v1, "slide_02"

    move-object v13, v12

    move-object/from16 v12, v21

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    filled-new-array {v11, v0}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    const-string v2, "feed_carousel_multi_with_titles"

    invoke-direct {v10, v2, v13, v0, v1}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselLMultipleUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    move-object/from16 v24, v20

    new-instance v20, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;

    const/16 v26, 0x10

    const-string v21, "capsule_section_key"

    const-string v22, "Explore the new arrivals"

    const-string v23, "Discover the latest trends in fashion with our new arrivals section."

    const/16 v25, 0x0

    invoke-direct/range {v20 .. v27}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$HighLightUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v30, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    new-instance v32, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    const/16 v25, 0x6

    const/16 v26, 0x0

    const-string v22, "Products for you"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v32

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v33, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    filled-new-array {v12, v12, v12}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v35

    const/16 v38, 0x60

    const-string v31, "carousel_S"

    const/16 v34, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v30 .. v39}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v11, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v0, "Explorez les Essentiels de l\'Automne"

    const-string v1, "Pr\u00eat-\u00e0-porter Femme"

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v5, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    const-string v1, "carouselM_01"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    move-object v12, v0

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    const-string v0, "D\u00e9couvrez l\u2019\u00e9charpe Reykjvaik"

    const-string v1, "Accessoires Femme"

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v5, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    const-string v1, "carouselM_02"

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    filled-new-array {v12, v0}, [Lcom/vuitton/android/presentation/common/editorial/models/CarouselMItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-direct {v1, v7}, Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;-><init>(Ljava/util/List;)V

    const-string v2, "feed_carousel_M"

    const-string v5, "S\u00e9lectionn\u00e9s pour vous"

    invoke-direct {v11, v2, v5, v0, v1}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;)V

    new-instance v21, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;

    const/16 v7, 0x20

    move-object v1, v8

    const/4 v8, 0x0

    move-object v2, v1

    const-string v1, "SlideShowId_1"

    move-object v5, v2

    const-string v2, "SlideShow Title 1"

    move-object/from16 v24, v3

    const-string v3, "SlideShow Surtitle 1"

    move v12, v6

    const/4 v6, 0x0

    move v13, v12

    move-object v12, v5

    move-object v5, v4

    move-object/from16 v4, v24

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v14, v0

    move-object v3, v4

    move-object v4, v5

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;

    const-string v1, "SlideShowId_2"

    const-string v2, "SlideShow Title 2"

    move-object/from16 v24, v3

    const-string v3, "SlideShow Surtitle 2"

    move-object/from16 v4, v24

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v14, v0}, [Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v26, 0x8

    const-string v22, "slideshow_section_key"

    const-string v23, "Slide Show"

    const/16 v25, 0x0

    invoke-direct/range {v21 .. v27}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$SlideShowUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    aput-object v17, v1, v29

    aput-object v18, v1, v13

    const/4 v2, 0x2

    aput-object v12, v1, v2

    const/4 v3, 0x3

    aput-object v9, v1, v3

    const/4 v4, 0x4

    aput-object v28, v1, v4

    const/4 v4, 0x5

    aput-object v20, v1, v4

    const/4 v4, 0x6

    aput-object v19, v1, v4

    const/4 v4, 0x7

    aput-object v10, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedMocksKt;->b:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    new-array v1, v3, [Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    aput-object v11, v1, v29

    aput-object v30, v1, v13

    aput-object v21, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    return-void
.end method

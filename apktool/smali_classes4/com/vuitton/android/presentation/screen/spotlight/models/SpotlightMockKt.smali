.class public abstract Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;
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
.field public static final a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-direct {v4, v5, v2}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    sget-object v3, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v13, 0xc

    const/4 v14, 0x0

    const-string v6, "id"

    const-string v7, "https://example.com/intro1.mp4"

    const/4 v9, 0x0

    const-string v12, "url"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v5

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const-string v6, "id"

    const-string v7, "https://example.com/outro1.mp4"

    const-string v12, "url"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3e4ccccd    # 0.2f

    invoke-direct {v6, v7, v8}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;-><init>(FF)V

    move-object v7, v5

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-object v8, v6

    const-string v6, "id"

    move-object v9, v7

    const-string v7, "https://example.com/hotspot1.mp4"

    move-object v10, v8

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v17, v12

    const-string v12, "url"

    move-object/from16 v19, v16

    move-object/from16 v18, v17

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-direct {v6, v2, v5}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    new-instance v7, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    new-instance v20, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v24, 0x6

    const/16 v25, 0x0

    const-string v21, "https://example.com/image.jpg"

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v20 .. v25}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v20

    new-instance v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    new-instance v10, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    const-string v12, "https://example.com/shopnow"

    invoke-direct {v10, v12}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;-><init>(Ljava/lang/String;)V

    const-string v13, "Shop Now"

    invoke-direct {v9, v13, v10}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    const-string v10, "TODO()"

    const-string v14, " TODO()"

    invoke-direct {v7, v10, v14, v8, v9}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;)V

    new-instance v20, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    const-string v24, "$100"

    const-string v21, "sku_1"

    const-string v22, "Product 1"

    const-string v23, "https://example.com/product1.jpg"

    invoke-direct/range {v20 .. v25}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v20

    const-string v9, "sku_1"

    invoke-direct {v5, v9, v7, v8, v2}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v7, "hotspot_1"

    move-object/from16 v8, v18

    move-object/from16 v10, v19

    invoke-direct {v8, v7, v10, v6, v5}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    const v7, 0x3e99999a    # 0.3f

    const v9, 0x3ecccccd    # 0.4f

    invoke-direct {v6, v7, v9}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;-><init>(FF)V

    move-object v7, v5

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-object v9, v13

    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object v10, v6

    const-string v6, "id"

    move-object/from16 v16, v7

    const-string v7, "https://example.com/hotspot2.mp4"

    move-object/from16 v17, v8

    const/4 v8, 0x0

    move-object/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v20, v12

    const-string v12, "url"

    move-object/from16 v27, v16

    move-object/from16 v26, v17

    move-object/from16 v29, v18

    move-object/from16 v28, v19

    move-object/from16 v30, v20

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-direct {v6, v2, v5}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    new-instance v9, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    new-instance v16, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v20, 0x6

    const/16 v21, 0x0

    const-string v17, "https://example.com/content1.jpg"

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v16

    new-instance v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    move-object/from16 v13, v30

    invoke-direct {v8, v13}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;-><init>(Ljava/lang/String;)V

    const-string v10, "Learn More"

    invoke-direct {v5, v10, v8}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    const-string v8, "Content 1"

    const-string v10, "Description of content 1"

    invoke-direct {v9, v8, v10, v2, v5}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;)V

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "sku_1"

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "hotspot_2"

    move-object/from16 v5, v27

    move-object/from16 v10, v28

    invoke-direct {v5, v2, v10, v6, v7}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V

    move-object/from16 v7, v26

    filled-new-array {v7, v5}, [Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;->DARK:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    new-instance v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;

    invoke-direct {v2, v13}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$WebView;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v29

    invoke-direct {v10, v5, v2}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    const/4 v11, 0x0

    const-string v2, "slide_1"

    move-object v5, v3

    const-string v3, "Slide 1"

    move-object v6, v5

    const/high16 v5, 0x3fc00000    # 1.5f

    move-object v7, v15

    invoke-direct/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Z)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "spotlight_1"

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    return-void
.end method

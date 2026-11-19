.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001QB\u008b\u0005\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u0012\u001a\u0008\u0002\u0010\u0018\u001a\u0014\u0012\u0004\u0012\u00020\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u000e0\u0015\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u000e\u0008\u0002\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000e\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001c\u0012\u0010\u0008\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010!\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010-\u0012\n\u0008\u0002\u0010/\u001a\u0004\u0018\u00010-\u0012\n\u0008\u0002\u00100\u001a\u0004\u0018\u00010-\u0012\u0008\u0008\u0002\u00102\u001a\u000201\u0012\n\u0008\u0002\u00103\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u00104\u001a\u000201\u0012\u0008\u0008\u0002\u00105\u001a\u000201\u0012\u0008\u0008\u0002\u00106\u001a\u000201\u0012\u0008\u0008\u0002\u00107\u001a\u000201\u0012\u0008\u0008\u0002\u00108\u001a\u000201\u0012\u0006\u00109\u001a\u000201\u0012\u0008\u0008\u0002\u0010:\u001a\u000201\u0012\u0008\u0008\u0002\u0010;\u001a\u000201\u0012\u0008\u0008\u0002\u0010<\u001a\u000201\u0012\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010=\u0012\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010?\u0012\u0008\u0008\u0002\u0010B\u001a\u00020A\u0012\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010C\u0012\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010G\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010\u000e\u0012\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00020H0\u000e\u0012\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020J0\u000e\u0012\n\u0008\u0002\u0010L\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010N\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008O\u0010P\u00a8\u0006R"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
        "Landroid/os/Parcelable;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "",
        "name",
        "skuKey",
        "packagingVariation",
        "commercialTag",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;",
        "identifier",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;",
        "type",
        "description",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;",
        "panelInfos",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;",
        "environmentInfo",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;",
        "background",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;",
        "variations",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;",
        "mainAsset",
        "medias",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;",
        "detailedFeature",
        "bundleSkuIds",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;",
        "virtualTryOn",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;",
        "edito",
        "color",
        "colorIconUrl",
        "colorFamily",
        "finish",
        "material",
        "materialIconUrl",
        "size",
        "carat",
        "language",
        "webUrl",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;",
        "width",
        "depth",
        "height",
        "",
        "isSizeGuideEnabled",
        "sizeGuideId",
        "isBackInStock",
        "isWishlistable",
        "isARAvailable",
        "isLocateInStore",
        "isDiamondProductAndPDPFeatureEnabled",
        "isShadeFinderEnabled",
        "isBundle",
        "isTrunkSpeaker",
        "isHorizonSpeaker",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;",
        "skuAvailability",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;",
        "disclaimer",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;",
        "sellableStatus",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;",
        "customization",
        "launchDate",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;",
        "highlights",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;",
        "editorialContents",
        "Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;",
        "modelSizeVariationList",
        "contextualSizingImageUrl",
        "shareUrl",
        "fitInformationMention",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final d1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field public final D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

.field public final E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

.field public final F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

.field public final G:Z

.field public final H:Ljava/lang/String;

.field public final I:Z

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field public final Q:Z

.field public final R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

.field public final S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

.field public final T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

.field public final V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

.field public final W:Ljava/lang/String;

.field public final X:Ljava/util/List;

.field public final Y:Ljava/util/List;

.field public final Z:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final b1:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

.field public final h0:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/List;

.field public final k:Ljava/util/List;

.field public final l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

.field public final m:Ljava/util/Map;

.field public final n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

.field public final o:Ljava/util/List;

.field public final p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

.field public final q:Ljava/util/List;

.field public final r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

.field public final s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

.field public final t:Ljava/lang/String;

.field public final t0:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 58

    move/from16 v0, p54

    move/from16 v1, p55

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->d:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;->PRODUCT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v15

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/16 v16, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v16, p13

    :goto_c
    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v17, v6

    goto :goto_d

    :cond_d
    move-object/from16 v17, p14

    :goto_d
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$None;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$None;

    move-object/from16 v18, v6

    goto :goto_e

    :cond_e
    move-object/from16 v18, p15

    :goto_e
    const v6, 0x8000

    and-int v19, v0, v6

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v19, p16

    :goto_f
    const/high16 v20, 0x10000

    and-int v20, v0, v20

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v20, p17

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    const/16 v21, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v21, p18

    :goto_11
    const/high16 v22, 0x40000

    and-int v23, v0, v22

    if-eqz v23, :cond_12

    const/16 v23, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v23, p19

    :goto_12
    const/high16 v24, 0x80000

    and-int v25, v0, v24

    if-eqz v25, :cond_13

    const/16 v25, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v25, p20

    :goto_13
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_14

    const/16 v26, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v26, p21

    :goto_14
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_15

    const/16 v27, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v27, p22

    :goto_15
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_16

    const/16 v28, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v28, p23

    :goto_16
    const/high16 v29, 0x800000

    and-int v29, v0, v29

    if-eqz v29, :cond_17

    const/16 v29, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v29, p24

    :goto_17
    const/high16 v30, 0x1000000

    and-int v30, v0, v30

    if-eqz v30, :cond_18

    const/16 v30, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v30, p25

    :goto_18
    const/high16 v31, 0x2000000

    and-int v31, v0, v31

    if-eqz v31, :cond_19

    const/16 v31, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v31, p26

    :goto_19
    const/high16 v32, 0x4000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1a

    const/16 v32, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v32, p27

    :goto_1a
    const/high16 v33, 0x8000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1b

    goto :goto_1b

    :cond_1b
    move-object/from16 v3, p28

    :goto_1b
    const/high16 v33, 0x10000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1c

    const/16 v33, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v33, p29

    :goto_1c
    const/high16 v34, 0x20000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1d

    const/16 v34, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v34, p30

    :goto_1d
    const/high16 v35, 0x40000000    # 2.0f

    and-int v35, v0, v35

    if-eqz v35, :cond_1e

    const/16 v35, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v35, p31

    :goto_1e
    const/high16 v36, -0x80000000

    and-int v0, v0, v36

    const/16 v36, 0x0

    if-eqz v0, :cond_1f

    move/from16 v0, v36

    goto :goto_1f

    :cond_1f
    move/from16 v0, p32

    :goto_1f
    and-int/lit8 v37, v1, 0x1

    if-eqz v37, :cond_20

    const/16 v37, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v37, p33

    :goto_20
    and-int/lit8 v38, v1, 0x2

    if-eqz v38, :cond_21

    move/from16 v38, v36

    goto :goto_21

    :cond_21
    move/from16 v38, p34

    :goto_21
    and-int/lit8 v39, v1, 0x4

    if-eqz v39, :cond_22

    move/from16 v39, v36

    goto :goto_22

    :cond_22
    move/from16 v39, p35

    :goto_22
    and-int/lit8 v40, v1, 0x8

    if-eqz v40, :cond_23

    move/from16 v40, v36

    goto :goto_23

    :cond_23
    move/from16 v40, p36

    :goto_23
    and-int/lit8 v41, v1, 0x10

    if-eqz v41, :cond_24

    move/from16 v41, v36

    goto :goto_24

    :cond_24
    move/from16 v41, p37

    :goto_24
    and-int/lit8 v42, v1, 0x20

    if-eqz v42, :cond_25

    move/from16 v42, v36

    goto :goto_25

    :cond_25
    move/from16 v42, p38

    :goto_25
    move/from16 p2, v6

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_26

    move/from16 v43, v36

    goto :goto_26

    :cond_26
    move/from16 v43, p40

    :goto_26
    and-int/lit16 v6, v1, 0x100

    if-eqz v6, :cond_27

    move/from16 v44, v36

    goto :goto_27

    :cond_27
    move/from16 v44, p41

    :goto_27
    and-int/lit16 v6, v1, 0x200

    if-eqz v6, :cond_28

    move/from16 v45, v36

    goto :goto_28

    :cond_28
    move/from16 v45, p42

    :goto_28
    and-int/lit16 v6, v1, 0x400

    if-eqz v6, :cond_29

    const/16 v46, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v46, p43

    :goto_29
    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_2a

    const/16 v47, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v47, p44

    :goto_2a
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_2b

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;

    move/from16 p3, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;

    move-object/from16 p56, v2

    const/4 v2, 0x2

    move-object/from16 p4, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;)V

    move-object/from16 v48, v6

    goto :goto_2b

    :cond_2b
    move/from16 p3, v0

    move-object/from16 p56, v2

    move-object/from16 p4, v3

    const/4 v3, 0x0

    move-object/from16 v48, p45

    :goto_2b
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2c

    move-object/from16 v49, v3

    goto :goto_2c

    :cond_2c
    move-object/from16 v49, p46

    :goto_2c
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2d

    move-object/from16 v50, v3

    goto :goto_2d

    :cond_2d
    move-object/from16 v50, p47

    :goto_2d
    and-int v0, v1, p2

    if-eqz v0, :cond_2e

    move-object/from16 v51, v3

    goto :goto_2e

    :cond_2e
    move-object/from16 v51, p48

    :goto_2e
    and-int v0, v1, v22

    if-eqz v0, :cond_2f

    move-object/from16 v54, v3

    goto :goto_2f

    :cond_2f
    move-object/from16 v54, p51

    :goto_2f
    and-int v0, v1, v24

    if-eqz v0, :cond_30

    move-object/from16 v55, v3

    goto :goto_30

    :cond_30
    move-object/from16 v55, p52

    :goto_30
    const/16 v57, 0x0

    move-object/from16 v3, p0

    move-object/from16 v52, p49

    move-object/from16 v53, p50

    move-object/from16 v56, p53

    move-object/from16 v6, p56

    move-object/from16 v22, v23

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v36, v37

    move/from16 v37, v38

    move/from16 v38, v39

    move/from16 v39, v40

    move/from16 v40, v41

    move/from16 v41, v42

    move/from16 v35, p3

    move-object/from16 v31, p4

    move/from16 v42, p39

    invoke-direct/range {v3 .. v57}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    move-object v0, p14

    .line 577
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p45 .. p45}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p49 .. p49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p50 .. p50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    .line 580
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    .line 581
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    .line 582
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    .line 583
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    .line 584
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    .line 585
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    .line 586
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    .line 587
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    .line 588
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    .line 589
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    .line 590
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    .line 591
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    .line 592
    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    move-object/from16 p1, p15

    .line 593
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    move-object/from16 p1, p16

    .line 594
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    move-object/from16 p1, p17

    .line 595
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    move-object/from16 p1, p18

    .line 596
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    move-object/from16 p1, p19

    .line 597
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 598
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 599
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 600
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 601
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 602
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 603
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    move-object/from16 p1, p26

    .line 604
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 605
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 606
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    move-object/from16 p1, p29

    .line 607
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 p1, p30

    .line 608
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 p1, p31

    .line 609
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move/from16 p1, p32

    .line 610
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    move-object/from16 p1, p33

    .line 611
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    move/from16 p1, p34

    .line 612
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    move/from16 p1, p35

    .line 613
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    move/from16 p1, p36

    .line 614
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    move/from16 p1, p37

    .line 615
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    move/from16 p1, p38

    .line 616
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    move/from16 p1, p39

    .line 617
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    move/from16 p1, p40

    .line 618
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    move/from16 p1, p41

    .line 619
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    move/from16 p1, p42

    .line 620
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    move-object/from16 p1, p43

    .line 621
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    move-object/from16 p1, p44

    .line 622
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-object/from16 p1, p45

    .line 623
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    move-object/from16 p1, p46

    .line 624
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    move-object/from16 p1, p47

    .line 625
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    move-object/from16 p1, p48

    .line 626
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    move-object/from16 p1, p49

    .line 627
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    move-object/from16 p1, p50

    .line 628
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    move-object/from16 p1, p51

    .line 629
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    move-object/from16 p1, p52

    .line 630
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    move-object/from16 p1, p53

    .line 631
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    .line 632
    instance-of p1, p13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz p1, :cond_0

    move-object p1, p13

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    move-object p1, v0

    check-cast p1, Ljava/lang/Iterable;

    .line 633
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    instance-of p4, p3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz p4, :cond_1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 635
    :cond_2
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    :cond_3
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/util/ArrayList;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    if-eqz p0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeBlock;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;->c:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeBlock;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;

    new-instance v4, Ll1;

    const/4 p0, 0x6

    invoke-direct {v4, p0, p2, p3}, Ll1;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoNativeItem;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/compose/components/CollapsingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;II)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;
    .locals 55

    move-object/from16 v0, p0

    move/from16 v1, p5

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    move-object v5, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    move-object v9, v8

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    move-object v10, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    move-object v11, v10

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move/from16 v13, p4

    and-int/lit16 v13, v13, 0x800

    if-eqz v13, :cond_0

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    :goto_0
    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    move-object v15, v12

    move-object v12, v13

    move-object v13, v14

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 v32, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 v33, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    move/from16 v34, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    move-object/from16 v35, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    move/from16 v36, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    move/from16 v37, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    move/from16 v38, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    move/from16 v39, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    move/from16 v40, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    move/from16 v41, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    move/from16 v42, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    move/from16 v43, v2

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    move/from16 v44, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-object/from16 p1, v1

    goto :goto_2

    :cond_2
    move-object/from16 p1, p3

    :goto_2
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    move-object/from16 v46, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    move-object/from16 v48, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    move-object/from16 v50, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v53, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/16 v54, 0x0

    move/from16 v52, v43

    move-object/from16 v43, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move/from16 v35, v37

    move/from16 v37, v39

    move/from16 v39, v41

    move/from16 v41, v52

    move-object/from16 v52, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move/from16 v32, v34

    move/from16 v34, v36

    move/from16 v36, v38

    move/from16 v38, v40

    move/from16 v40, v42

    move/from16 v42, v44

    move-object/from16 v44, p1

    invoke-direct/range {v0 .. v54}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final c()Lkotlin/Pair;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MODEL_SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v4, :cond_3

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    if-eq v1, v3, :cond_23

    return v2

    :cond_23
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    if-eq v1, v3, :cond_24

    return v2

    :cond_24
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    if-eq v1, v3, :cond_27

    return v2

    :cond_27
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    if-eq v1, v3, :cond_28

    return v2

    :cond_28
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    if-eq v1, v3, :cond_2a

    return v2

    :cond_2a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    if-eq v1, v3, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    :cond_2f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    :cond_31
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v2

    :cond_32
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    :cond_33
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    return v2

    :cond_36
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    if-nez v0, :cond_d

    move v0, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_d
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    if-nez v0, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_e
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    if-nez v0, :cond_f

    move v0, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_10
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    if-nez v3, :cond_13

    move v3, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    if-nez v3, :cond_14

    move v3, v2

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    if-nez v3, :cond_15

    move v3, v2

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    if-nez v3, :cond_16

    move v3, v2

    goto :goto_16

    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_16
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-nez v3, :cond_17

    move v3, v2

    goto :goto_17

    :cond_17
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->hashCode()I

    move-result v3

    :goto_17
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-nez v3, :cond_18

    move v3, v2

    goto :goto_18

    :cond_18
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->hashCode()I

    move-result v3

    :goto_18
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_19

    :cond_19
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    if-nez v0, :cond_1a

    move v0, v2

    goto :goto_1a

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1a
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    if-nez v0, :cond_1b

    move v0, v2

    goto :goto_1b

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1b
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    if-nez v3, :cond_1c

    move v3, v2

    goto :goto_1c

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1c
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    if-nez v3, :cond_1d

    move v3, v2

    goto :goto_1d

    :cond_1d
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    if-nez p0, :cond_1e

    goto :goto_1e

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1e
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    const-string v0, ", name="

    const-string v1, ", skuKey="

    const-string v2, "ProductUiModel(sku="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packagingVariation="

    const-string v2, ", commercialTag="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", identifier="

    const-string v2, ", type="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", panelInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", environmentInfo="

    const-string v2, ", background="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", variations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainAsset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", detailedFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bundleSkuIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualTryOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", edito="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", colorIconUrl="

    const-string v2, ", colorFamily="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", finish="

    const-string v2, ", material="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", materialIconUrl="

    const-string v2, ", size="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", carat="

    const-string v2, ", language="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", webUrl="

    const-string v2, ", width="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSizeGuideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sizeGuideId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBackInStock="

    const-string v2, ", isWishlistable="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", isARAvailable="

    const-string v2, ", isLocateInStore="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isDiamondProductAndPDPFeatureEnabled="

    const-string v2, ", isShadeFinderEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isBundle="

    const-string v2, ", isTrunkSpeaker="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isHorizonSpeaker="

    const-string v2, ", skuAvailability="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sellableStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launchDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", highlights="

    const-string v2, ", editorialContents="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ", modelSizeVariationList="

    const-string v2, ", contextualSizingImageUrl="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, ", shareUrl="

    const-string v2, ", fitInformationMention="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->j:Ljava/util/List;

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;

    invoke-virtual {v3, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->k:Ljava/util/List;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;

    invoke-virtual {v3, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    invoke-virtual {v4, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->n:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    invoke-static {v2, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->p:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->q:Ljava/util/List;

    if-nez v2, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    :goto_7
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    if-nez v2, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    if-nez v2, :cond_a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->v:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->w:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->x:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->y:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->z:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->B:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->D:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    if-nez v2, :cond_b

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->E:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    if-nez v2, :cond_c

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    :cond_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->F:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    if-nez v2, :cond_d

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->H:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->J:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->N:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->O:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-nez v2, :cond_e

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_d
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->S:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    if-nez v2, :cond_f

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-nez v2, :cond_10

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    :cond_10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_f
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->W:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->X:Ljava/util/List;

    if-nez v2, :cond_11

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :cond_11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;

    invoke-virtual {v1, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_12
    :goto_11
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Y:Ljava/util/List;

    invoke-static {v0, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;

    invoke-virtual {v1, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    :cond_13
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    invoke-static {v0, p1}, Lcj;->p(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    invoke-virtual {v1, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_14
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->h0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b1:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

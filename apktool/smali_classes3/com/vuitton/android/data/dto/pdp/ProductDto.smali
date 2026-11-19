.class public final Lcom/vuitton/android/data/dto/pdp/ProductDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;,
        Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 N2\u00020\u0001:\u0002ONB\u00a1\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010%\u0012\u0010\u0008\u0002\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'\u0012\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020*0\'\u0012\u0010\u0008\u0002\u0010,\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\'\u0012\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0\'\u0012\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020.0\'\u0012\u0010\u0008\u0002\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010\'\u0012\u0006\u00103\u001a\u000202\u0012\n\u0008\u0002\u00105\u001a\u0004\u0018\u000104\u0012\n\u0008\u0002\u00106\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\'\u0012\n\u0008\u0002\u00109\u001a\u0004\u0018\u000107\u0012\u0010\u0008\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010\'\u0012\u0010\u0008\u0002\u0010=\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010\'\u0012\u0010\u0008\u0002\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\'\u0012\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\u001f\u0012\u0006\u0010A\u001a\u00020\u000e\u0012\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020B0\'\u0012\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008F\u0010GB\u0099\u0004\u0008\u0010\u0012\u0006\u0010I\u001a\u00020H\u0012\u0006\u0010J\u001a\u00020H\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0010&\u001a\u0004\u0018\u00010%\u0012\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'\u0012\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\'\u0012\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\'\u0012\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020*\u0018\u00010\'\u0012\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020.\u0018\u00010\'\u0012\u000e\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010\'\u0012\u0008\u00103\u001a\u0004\u0018\u000102\u0012\u0008\u00105\u001a\u0004\u0018\u000104\u0012\u0008\u00106\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u00108\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010\'\u0012\u0008\u00109\u001a\u0004\u0018\u000107\u0012\u000e\u0010;\u001a\n\u0012\u0004\u0012\u00020:\u0018\u00010\'\u0012\u000e\u0010=\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010\'\u0012\u000e\u0010?\u001a\n\u0012\u0004\u0012\u00020>\u0018\u00010\'\u0012\u0008\u0010@\u001a\u0004\u0018\u00010\u001f\u0012\u0006\u0010A\u001a\u00020\u000e\u0012\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010\'\u0012\u0008\u0010D\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010E\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010L\u001a\u0004\u0018\u00010K\u00a2\u0006\u0004\u0008F\u0010M\u00a8\u0006P"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/pdp/ProductDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "name",
        "commercialTag",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductId;",
        "productId",
        "shortDescription",
        "detailedDescription",
        "webPath",
        "Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;",
        "background",
        "",
        "locateInStore",
        "backInStock",
        "showARModel",
        "hideAddToWishlist",
        "sizeGuide",
        "sizeGuideId",
        "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
        "contextualSizingImage",
        "isDiamond",
        "isBackOrder",
        "Lcom/vuitton/android/data/dto/pdp/DimensionsDto;",
        "dimensions",
        "Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;",
        "virtualTryOn",
        "Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;",
        "backupDisclaimer",
        "Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;",
        "color",
        "material",
        "carat",
        "size",
        "language",
        "Lcom/vuitton/android/data/dto/pdp/EditoDto;",
        "edito",
        "",
        "Lcom/vuitton/android/data/dto/pdp/MediaDto;",
        "medias",
        "Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;",
        "skus",
        "skuLook",
        "isRelatedTo",
        "Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;",
        "modelSizeVariations",
        "Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;",
        "panelInformation",
        "Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;",
        "sellableStatus",
        "Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;",
        "customization",
        "packagingVariation",
        "Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;",
        "assets",
        "mainAsset",
        "Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;",
        "details",
        "Lcom/vuitton/android/data/dto/pdp/HighlightDto;",
        "highlights",
        "Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;",
        "editorialContents",
        "finish",
        "isShadeFinderEnabled",
        "Lcom/vuitton/android/data/dto/pdp/FinishVariationDto;",
        "finishVariations",
        "shareUrl",
        "fitInformationMention",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "seen1",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

.field public static final T:[Lkotlin/Lazy;


# instance fields
.field public final A:Ljava/util/List;

.field public final B:Ljava/util/List;

.field public final C:Ljava/util/List;

.field public final D:Ljava/util/List;

.field public final E:Ljava/util/List;

.field public final F:Ljava/util/List;

.field public final G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

.field public final H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

.field public final I:Ljava/lang/String;

.field public final J:Ljava/util/List;

.field public final K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

.field public final L:Ljava/util/List;

.field public final M:Ljava/util/List;

.field public final N:Ljava/util/List;

.field public final O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

.field public final P:Z

.field public final Q:Ljava/util/List;

.field public final R:Ljava/lang/String;

.field public final S:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

.field public final p:Z

.field public final q:Ljava/lang/Boolean;

.field public final r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

.field public final s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

.field public final t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

.field public final u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

.field public final v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

.field public final w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

.field public final x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

.field public final y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

.field public final z:Lcom/vuitton/android/data/dto/pdp/EditoDto;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lgp0;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lgp0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lgp0;

    const/16 v5, 0x16

    invoke-direct {v4, v5}, Lgp0;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v6, Lgp0;

    const/16 v7, 0x17

    invoke-direct {v6, v7}, Lgp0;-><init>(I)V

    invoke-static {v0, v6}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v6

    new-instance v8, Lgp0;

    const/16 v9, 0x18

    invoke-direct {v8, v9}, Lgp0;-><init>(I)V

    invoke-static {v0, v8}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v8

    new-instance v10, Lgp0;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Lgp0;-><init>(I)V

    invoke-static {v0, v10}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v10

    new-instance v12, Lgp0;

    const/16 v13, 0x1a

    invoke-direct {v12, v13}, Lgp0;-><init>(I)V

    invoke-static {v0, v12}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v12

    new-instance v14, Lgp0;

    const/16 v15, 0x1b

    invoke-direct {v14, v15}, Lgp0;-><init>(I)V

    invoke-static {v0, v14}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v14

    move-object/from16 v16, v1

    new-instance v1, Lgp0;

    move/from16 v17, v3

    const/16 v3, 0x1c

    invoke-direct {v1, v3}, Lgp0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    move/from16 v18, v3

    new-instance v3, Lgp0;

    move/from16 v19, v5

    const/16 v5, 0x12

    invoke-direct {v3, v5}, Lgp0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    move/from16 v20, v5

    new-instance v5, Lgp0;

    move/from16 v21, v7

    const/16 v7, 0x13

    invoke-direct {v5, v7}, Lgp0;-><init>(I)V

    invoke-static {v0, v5}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    move/from16 v22, v7

    new-instance v7, Lgp0;

    move/from16 v23, v9

    const/16 v9, 0x14

    invoke-direct {v7, v9}, Lgp0;-><init>(I)V

    invoke-static {v0, v7}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v7

    move/from16 v24, v9

    new-instance v9, Lgp0;

    move/from16 v25, v11

    const/16 v11, 0x15

    invoke-direct {v9, v11}, Lgp0;-><init>(I)V

    invoke-static {v0, v9}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v9, 0x2d

    new-array v9, v9, [Lkotlin/Lazy;

    const/16 v26, 0x0

    aput-object v16, v9, v26

    const/16 v26, 0x1

    aput-object v16, v9, v26

    const/16 v26, 0x2

    aput-object v16, v9, v26

    const/16 v26, 0x3

    aput-object v16, v9, v26

    const/16 v26, 0x4

    aput-object v16, v9, v26

    const/16 v26, 0x5

    aput-object v16, v9, v26

    const/16 v26, 0x6

    aput-object v16, v9, v26

    const/16 v26, 0x7

    aput-object v2, v9, v26

    const/16 v2, 0x8

    aput-object v16, v9, v2

    const/16 v2, 0x9

    aput-object v16, v9, v2

    const/16 v2, 0xa

    aput-object v16, v9, v2

    const/16 v2, 0xb

    aput-object v16, v9, v2

    const/16 v2, 0xc

    aput-object v16, v9, v2

    const/16 v2, 0xd

    aput-object v16, v9, v2

    const/16 v2, 0xe

    aput-object v16, v9, v2

    const/16 v2, 0xf

    aput-object v16, v9, v2

    const/16 v2, 0x10

    aput-object v16, v9, v2

    aput-object v16, v9, v17

    aput-object v16, v9, v20

    aput-object v16, v9, v22

    aput-object v16, v9, v24

    aput-object v16, v9, v11

    aput-object v16, v9, v19

    aput-object v16, v9, v21

    aput-object v16, v9, v23

    aput-object v16, v9, v25

    aput-object v4, v9, v13

    aput-object v6, v9, v15

    aput-object v8, v9, v18

    const/16 v2, 0x1d

    aput-object v10, v9, v2

    const/16 v2, 0x1e

    aput-object v12, v9, v2

    const/16 v2, 0x1f

    aput-object v14, v9, v2

    const/16 v2, 0x20

    aput-object v16, v9, v2

    const/16 v2, 0x21

    aput-object v16, v9, v2

    const/16 v2, 0x22

    aput-object v16, v9, v2

    const/16 v2, 0x23

    aput-object v1, v9, v2

    const/16 v1, 0x24

    aput-object v16, v9, v1

    const/16 v1, 0x25

    aput-object v3, v9, v1

    const/16 v1, 0x26

    aput-object v5, v9, v1

    const/16 v1, 0x27

    aput-object v7, v9, v1

    const/16 v1, 0x28

    aput-object v16, v9, v1

    const/16 v1, 0x29

    aput-object v16, v9, v1

    const/16 v1, 0x2a

    aput-object v0, v9, v1

    const/16 v0, 0x2b

    aput-object v16, v9, v0

    const/16 v0, 0x2c

    aput-object v16, v9, v0

    sput-object v9, Lcom/vuitton/android/data/dto/pdp/ProductDto;->T:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    const v0, 0x68009fcb

    and-int v1, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit16 v4, p2, 0x601

    const/16 v5, 0x601

    if-eq v5, v4, :cond_1

    move v2, v3

    :cond_1
    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_2

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    and-int/lit8 p3, p1, 0x10

    if-nez p3, :cond_3

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p7, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    :goto_2
    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_4

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p8, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    :goto_3
    iput-object p9, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    move-object/from16 p3, p10

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    move/from16 p3, p11

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    move/from16 p3, p12

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    move/from16 p3, p13

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    move/from16 p3, p14

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    move/from16 p3, p15

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_5

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    :goto_4
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_6

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    :goto_5
    move/from16 p3, p18

    goto :goto_6

    :cond_6
    move-object/from16 p3, p17

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    goto :goto_5

    :goto_6
    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-nez p3, :cond_7

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    move-object/from16 p3, p19

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    :goto_7
    const/high16 p3, 0x20000

    and-int/2addr p3, p1

    if-nez p3, :cond_8

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    goto :goto_8

    :cond_8
    move-object/from16 p3, p20

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    :goto_8
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_9

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    goto :goto_9

    :cond_9
    move-object/from16 p3, p21

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    :goto_9
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-nez p3, :cond_a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    goto :goto_a

    :cond_a
    move-object/from16 p3, p22

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    :goto_a
    const/high16 p3, 0x100000

    and-int/2addr p3, p1

    if-nez p3, :cond_b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    goto :goto_b

    :cond_b
    move-object/from16 p3, p23

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    :goto_b
    const/high16 p3, 0x200000

    and-int/2addr p3, p1

    if-nez p3, :cond_c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    goto :goto_c

    :cond_c
    move-object/from16 p3, p24

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    :goto_c
    const/high16 p3, 0x400000

    and-int/2addr p3, p1

    if-nez p3, :cond_d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    goto :goto_d

    :cond_d
    move-object/from16 p3, p25

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    :goto_d
    const/high16 p3, 0x800000

    and-int/2addr p3, p1

    if-nez p3, :cond_e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    goto :goto_e

    :cond_e
    move-object/from16 p3, p26

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    :goto_e
    const/high16 p3, 0x1000000

    and-int/2addr p3, p1

    if-nez p3, :cond_f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    goto :goto_f

    :cond_f
    move-object/from16 p3, p27

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    :goto_f
    const/high16 p3, 0x2000000

    and-int/2addr p3, p1

    if-nez p3, :cond_10

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    goto :goto_10

    :cond_10
    move-object/from16 p3, p28

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    :goto_10
    const/high16 p3, 0x4000000

    and-int/2addr p3, p1

    if-nez p3, :cond_11

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    :goto_11
    move-object/from16 p3, p30

    goto :goto_12

    :cond_11
    move-object/from16 p3, p29

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    goto :goto_11

    :goto_12
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    const/high16 p3, 0x10000000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    :goto_13
    move-object/from16 p3, p32

    goto :goto_14

    :cond_12
    move-object/from16 p3, p31

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    goto :goto_13

    :goto_14
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    move-object/from16 p3, p33

    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_13

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    :goto_15
    move-object/from16 p1, p35

    goto :goto_16

    :cond_13
    move-object/from16 p1, p34

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    goto :goto_15

    :goto_16
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_14

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    goto :goto_17

    :cond_14
    move-object/from16 p1, p36

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    :goto_17
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_15

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    goto :goto_18

    :cond_15
    move-object/from16 p1, p37

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    :goto_18
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_16

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    goto :goto_19

    :cond_16
    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    :goto_19
    and-int/lit8 p1, p2, 0x10

    if-nez p1, :cond_17

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    goto :goto_1a

    :cond_17
    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    :goto_1a
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_18

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    goto :goto_1b

    :cond_18
    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    :goto_1b
    and-int/lit8 p1, p2, 0x40

    if-nez p1, :cond_19

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    goto :goto_1c

    :cond_19
    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    :goto_1c
    and-int/lit16 p1, p2, 0x80

    if-nez p1, :cond_1a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    goto :goto_1d

    :cond_1a
    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    :goto_1d
    and-int/lit16 p1, p2, 0x100

    if-nez p1, :cond_1b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    :goto_1e
    move/from16 p1, p44

    goto :goto_1f

    :cond_1b
    move-object/from16 p1, p43

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    goto :goto_1e

    :goto_1f
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    move-object/from16 p1, p45

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    and-int/lit16 p1, p2, 0x800

    if-nez p1, :cond_1c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    goto :goto_20

    :cond_1c
    move-object/from16 p1, p46

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    :goto_20
    and-int/lit16 p1, p2, 0x1000

    if-nez p1, :cond_1d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    return-void

    :cond_1d
    move-object/from16 p1, p47

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    return-void

    :cond_1e
    filled-new-array/range {p1 .. p2}, [I

    move-result-object p0

    filled-new-array {v0, v5}, [I

    move-result-object p1

    sget-object p2, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;

    invoke-virtual {p2}, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->a([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v2
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 51

    move/from16 v0, p46

    move/from16 v1, p47

    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, p5

    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    move-object/from16 v10, p6

    :goto_2
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_3

    move-object/from16 v18, v3

    goto :goto_3

    :cond_3
    move-object/from16 v18, p14

    :goto_3
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_4

    move-object/from16 v19, v3

    goto :goto_4

    :cond_4
    move-object/from16 v19, p15

    :goto_4
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_5

    move-object/from16 v21, v3

    goto :goto_5

    :cond_5
    move-object/from16 v21, p17

    :goto_5
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_6

    move-object/from16 v22, v3

    goto :goto_6

    :cond_6
    move-object/from16 v22, p18

    :goto_6
    const/high16 v2, 0x40000

    and-int/2addr v2, v0

    if-eqz v2, :cond_7

    move-object/from16 v23, v3

    goto :goto_7

    :cond_7
    move-object/from16 v23, p19

    :goto_7
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_8

    move-object/from16 v24, v3

    goto :goto_8

    :cond_8
    move-object/from16 v24, p20

    :goto_8
    const/high16 v2, 0x100000

    and-int/2addr v2, v0

    if-eqz v2, :cond_9

    move-object/from16 v25, v3

    goto :goto_9

    :cond_9
    move-object/from16 v25, p21

    :goto_9
    const/high16 v2, 0x200000

    and-int/2addr v2, v0

    if-eqz v2, :cond_a

    move-object/from16 v26, v3

    goto :goto_a

    :cond_a
    move-object/from16 v26, p22

    :goto_a
    const/high16 v2, 0x400000

    and-int/2addr v2, v0

    if-eqz v2, :cond_b

    move-object/from16 v27, v3

    goto :goto_b

    :cond_b
    move-object/from16 v27, p23

    :goto_b
    const/high16 v2, 0x800000

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    move-object/from16 v28, v3

    goto :goto_c

    :cond_c
    move-object/from16 v28, p24

    :goto_c
    const/high16 v2, 0x1000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    move-object/from16 v29, v3

    goto :goto_d

    :cond_d
    move-object/from16 v29, p25

    :goto_d
    const/high16 v2, 0x2000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    move-object/from16 v30, v3

    goto :goto_e

    :cond_e
    move-object/from16 v30, p26

    :goto_e
    const/high16 v2, 0x4000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_f

    move-object/from16 v31, v3

    goto :goto_f

    :cond_f
    move-object/from16 v31, p27

    :goto_f
    const/high16 v2, 0x10000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_10

    move-object/from16 v33, v3

    goto :goto_10

    :cond_10
    move-object/from16 v33, p29

    :goto_10
    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    move-object/from16 v36, v3

    goto :goto_11

    :cond_11
    move-object/from16 v36, p32

    :goto_11
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_12

    move-object/from16 v38, v3

    goto :goto_12

    :cond_12
    move-object/from16 v38, p34

    :goto_12
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_13

    move-object/from16 v39, v3

    goto :goto_13

    :cond_13
    move-object/from16 v39, p35

    :goto_13
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_14

    move-object/from16 v40, v3

    goto :goto_14

    :cond_14
    move-object/from16 v40, p36

    :goto_14
    and-int/lit8 v0, v1, 0x10

    if-eqz v0, :cond_15

    move-object/from16 v41, v3

    goto :goto_15

    :cond_15
    move-object/from16 v41, p37

    :goto_15
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_16

    move-object/from16 v42, v3

    goto :goto_16

    :cond_16
    move-object/from16 v42, p38

    :goto_16
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_17

    move-object/from16 v43, v3

    goto :goto_17

    :cond_17
    move-object/from16 v43, p39

    :goto_17
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_18

    move-object/from16 v44, v3

    goto :goto_18

    :cond_18
    move-object/from16 v44, p40

    :goto_18
    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_19

    move-object/from16 v45, v3

    goto :goto_19

    :cond_19
    move-object/from16 v45, p41

    :goto_19
    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_1a

    move-object/from16 v48, v3

    goto :goto_1a

    :cond_1a
    move-object/from16 v48, p44

    :goto_1a
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_1b

    move-object/from16 v49, v3

    goto :goto_1b

    :cond_1b
    move-object/from16 v49, p45

    :goto_1b
    const/16 v50, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v20, p16

    move-object/from16 v32, p28

    move-object/from16 v34, p30

    move-object/from16 v35, p31

    move-object/from16 v37, p33

    move/from16 v46, p42

    move-object/from16 v47, p43

    .line 472
    invoke-direct/range {v4 .. v50}, Lcom/vuitton/android/data/dto/pdp/ProductDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p43 .. p43}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    .line 428
    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    .line 429
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    .line 430
    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    .line 431
    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    .line 432
    iput-object p6, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    .line 433
    iput-object p7, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    .line 434
    iput-object p8, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    .line 435
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    .line 436
    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    .line 437
    iput-boolean p11, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    .line 438
    iput-boolean p12, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    .line 439
    iput-boolean p13, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    .line 440
    iput-object p14, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    .line 441
    iput-object p15, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    move/from16 p1, p16

    .line 442
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    move-object/from16 p1, p17

    .line 443
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    move-object/from16 p1, p18

    .line 444
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    move-object/from16 p1, p19

    .line 445
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    move-object/from16 p1, p20

    .line 446
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    move-object/from16 p1, p21

    .line 447
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 p1, p22

    .line 448
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 p1, p23

    .line 449
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 p1, p24

    .line 450
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 p1, p25

    .line 451
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 p1, p26

    .line 452
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    move-object/from16 p1, p27

    .line 453
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    move-object/from16 p1, p28

    .line 454
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    move-object/from16 p1, p29

    .line 455
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    move-object/from16 p1, p30

    .line 456
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    move-object/from16 p1, p31

    .line 457
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    move-object/from16 p1, p32

    .line 458
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    move-object/from16 p1, p33

    .line 459
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    move-object/from16 p1, p34

    .line 460
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    move-object/from16 p1, p35

    .line 461
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 462
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    move-object/from16 p1, p37

    .line 463
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    move-object/from16 p1, p38

    .line 464
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    move-object/from16 p1, p39

    .line 465
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    move-object/from16 p1, p40

    .line 466
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    move-object/from16 p1, p41

    .line 467
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move/from16 p1, p42

    .line 468
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    move-object/from16 p1, p43

    .line 469
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    move-object/from16 p1, p44

    .line 470
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    move-object/from16 p1, p45

    .line 471
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    :cond_26
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v2

    :cond_27
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v2

    :cond_28
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    if-eq v1, v3, :cond_2b

    return v2

    :cond_2b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v2

    :cond_2c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    return v2

    :cond_2e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/AssetImageDto;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    iget-object v3, v3, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;->a:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-nez v3, :cond_b

    move v3, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-nez v3, :cond_c

    move v3, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-nez v3, :cond_d

    move v3, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    if-nez v3, :cond_e

    move v3, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/EditoDto;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    if-nez v3, :cond_f

    move v3, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    if-nez v3, :cond_10

    move v3, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;->hashCode()I

    move-result v0

    :goto_12
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    if-nez v0, :cond_13

    move v0, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_13
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_14

    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_14
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    if-nez v0, :cond_15

    move v0, v2

    goto :goto_15

    :cond_15
    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;->hashCode()I

    move-result v0

    :goto_15
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_16

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    if-nez v0, :cond_17

    move v0, v2

    goto :goto_17

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_17
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    if-nez v0, :cond_18

    move v0, v2

    goto :goto_18

    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_18
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_19

    :cond_19
    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->hashCode()I

    move-result v0

    :goto_19
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    if-nez v3, :cond_1a

    move v3, v2

    goto :goto_1a

    :cond_1a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    if-nez p0, :cond_1b

    goto :goto_1b

    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    const-string v0, ", name="

    const-string v1, ", commercialTag="

    const-string v2, "ProductDto(sku="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    const-string v2, ", shortDescription="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", detailedDescription="

    const-string v2, ", webPath="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", locateInStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backInStock="

    const-string v2, ", showARModel="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", hideAddToWishlist="

    const-string v2, ", sizeGuide="

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", sizeGuideId="

    const-string v2, ", contextualSizingImage="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDiamond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBackOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", virtualTryOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backupDisclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", material="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", edito="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skus="

    const-string v2, ", skuLook="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, ", isRelatedTo="

    const-string v2, ", modelSizeVariations="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, ", panelInformation="

    const-string v2, ", sellableStatus="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packagingVariation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assets="

    const-string v2, ", mainAsset="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", highlights="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", editorialContents="

    const-string v2, ", finish="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShadeFinderEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", finishVariations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shareUrl="

    const-string v2, ", fitInformationMention="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    invoke-static {v1, v3, v2, v0, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

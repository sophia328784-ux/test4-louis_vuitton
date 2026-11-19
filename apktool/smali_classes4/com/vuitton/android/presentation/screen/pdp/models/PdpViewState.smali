.class public final Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00c3\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0006\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\"\u0012\u000e\u0008\u0002\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0\u001b\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0008\u0002\u0010)\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010+\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0006\u00a2\u0006\u0004\u0008-\u0010.\u00a8\u0006/"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
        "product",
        "",
        "isError",
        "isLoading",
        "isAddToCartLoading",
        "isAvailabilityLoading",
        "isWishlistLoading",
        "isShareAvailable",
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;",
        "pdpFeatureFlags",
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;",
        "pdpAppConfigValues",
        "Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;",
        "storeButtonType",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;",
        "productAvailability",
        "isStoreMode",
        "",
        "rmsCode",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;",
        "sizeGuide",
        "shouldDisplayYAMLSection",
        "Lkotlinx/collections/immutable/ImmutableList;",
        "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;",
        "ymalProductList",
        "isYmalLoading",
        "isInWishlist",
        "isUserLogged",
        "traceabilityRedirectUrl",
        "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;",
        "catalogMode",
        "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType;",
        "serviceList",
        "shouldShowCancelProductCustomizationBottomSheet",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;",
        "consentBottomSheetContent",
        "isNavigationSimplified",
        "isAutoPlayDisabled",
        "hasAITooltipBeenDisplayed",
        "isExclusiveSale",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;ZLkotlinx/collections/immutable/ImmutableList;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlinx/collections/immutable/ImmutableList;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;ZZZZ)V",
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


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:Z

.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

.field public final j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

.field public final k:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

.field public final l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

.field public final p:Z

.field public final q:Lkotlinx/collections/immutable/ImmutableList;

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Ljava/lang/String;

.field public final v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

.field public final w:Lkotlinx/collections/immutable/ImmutableList;

.field public final x:Z

.field public final y:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

.field public final z:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;ZLkotlinx/collections/immutable/ImmutableList;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlinx/collections/immutable/ImmutableList;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
            "ZZZZZZ",
            "Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;",
            "Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;",
            "Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;",
            "Z",
            "Lkotlinx/collections/immutable/ImmutableList<",
            "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;",
            "Lkotlinx/collections/immutable/ImmutableList<",
            "+",
            "Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType;",
            ">;Z",
            "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;",
            "ZZZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 390
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    .line 391
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->c:Z

    .line 392
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->d:Z

    .line 393
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->e:Z

    .line 394
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->f:Z

    .line 395
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->g:Z

    .line 396
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    .line 397
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    .line 398
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    .line 399
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->k:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    .line 400
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    .line 401
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    .line 402
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->n:Ljava/lang/String;

    .line 403
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    move/from16 p1, p16

    .line 404
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->p:Z

    move-object/from16 p1, p17

    .line 405
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->q:Lkotlinx/collections/immutable/ImmutableList;

    move/from16 p1, p18

    .line 406
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->r:Z

    move/from16 p1, p19

    .line 407
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->s:Z

    move/from16 p1, p20

    .line 408
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->t:Z

    move-object/from16 p1, p21

    .line 409
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->u:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 410
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    move-object/from16 p1, p23

    .line 411
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->w:Lkotlinx/collections/immutable/ImmutableList;

    move/from16 p1, p24

    .line 412
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->x:Z

    move-object/from16 p1, p25

    .line 413
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->y:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    move/from16 p1, p26

    .line 414
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->z:Z

    move/from16 p1, p27

    .line 415
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->A:Z

    move/from16 p1, p28

    .line 416
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    move/from16 p1, p29

    .line 417
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->C:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;ZLkotlinx/collections/immutable/ImmutableList;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlinx/collections/immutable/ImmutableList;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p30

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    move v9, v4

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    const/16 v26, 0x3fff

    const/16 v27, 0x0

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

    invoke-direct/range {v11 .. v27}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;-><init>(ZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    new-instance v12, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    const/16 v20, 0x7f

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v10, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    move v14, v4

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    move/from16 v16, v4

    goto :goto_e

    :cond_e
    move/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    invoke-static {}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v17

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move/from16 v18, v4

    goto :goto_10

    :cond_10
    move/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    move/from16 v19, v4

    goto :goto_11

    :cond_11
    move/from16 v19, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    move/from16 v20, v4

    goto :goto_12

    :cond_12
    move/from16 v20, p20

    :goto_12
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v21, p21

    :goto_13
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p22

    :goto_14
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    invoke-static {}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v23

    goto :goto_15

    :cond_15
    move-object/from16 v23, p23

    :goto_15
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    move/from16 v24, v4

    goto :goto_16

    :cond_16
    move/from16 v24, p24

    :goto_16
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p25

    :goto_17
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    move/from16 v26, v4

    goto :goto_18

    :cond_18
    move/from16 v26, p26

    :goto_18
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    move/from16 v27, v4

    goto :goto_19

    :cond_19
    move/from16 v27, p27

    :goto_19
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    move/from16 v28, v4

    goto :goto_1a

    :cond_1a
    move/from16 v28, p28

    :goto_1a
    const/high16 v29, 0x10000000

    and-int v0, v0, v29

    if-eqz v0, :cond_1b

    move/from16 p31, v4

    :goto_1b
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p17, v2

    move/from16 p5, v3

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move-object/from16 p13, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p14, v13

    move/from16 p15, v14

    move-object/from16 p16, v15

    move/from16 p18, v16

    move-object/from16 p19, v17

    move/from16 p20, v18

    move/from16 p21, v19

    move/from16 p22, v20

    move-object/from16 p23, v21

    move-object/from16 p24, v22

    move-object/from16 p25, v23

    move/from16 p26, v24

    move-object/from16 p27, v25

    move/from16 p28, v26

    move/from16 p29, v27

    move/from16 p30, v28

    goto :goto_1c

    :cond_1b
    move/from16 p31, p29

    goto :goto_1b

    :goto_1c
    invoke-direct/range {p2 .. p31}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;ZLkotlinx/collections/immutable/ImmutableList;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlinx/collections/immutable/ImmutableList;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;ZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->k:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->k:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->p:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->q:Lkotlinx/collections/immutable/ImmutableList;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->q:Lkotlinx/collections/immutable/ImmutableList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->r:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->s:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->s:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->t:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->t:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->w:Lkotlinx/collections/immutable/ImmutableList;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->w:Lkotlinx/collections/immutable/ImmutableList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->x:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->x:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->y:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->y:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->z:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->z:Z

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->A:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->A:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->C:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->C:Z

    if-eq p0, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->c:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->d:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->e:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->g:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->k:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->n:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->p:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->q:Lkotlinx/collections/immutable/ImmutableList;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->r:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->s:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->t:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->u:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->w:Lkotlinx/collections/immutable/ImmutableList;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->x:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->y:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->z:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->A:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->C:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PdpViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    const-string v2, ", isAddToCartLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isAvailabilityLoading="

    const-string v2, ", isWishlistLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isShareAvailable="

    const-string v2, ", pdpFeatureFlags="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->i:Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pdpAppConfigValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeButtonType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->k:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->l:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStoreMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rmsCode="

    const-string v2, ", sizeGuide="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->n:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->o:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisplayYAMLSection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ymalProductList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->q:Lkotlinx/collections/immutable/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isYmalLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInWishlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isUserLogged="

    const-string v2, ", traceabilityRedirectUrl="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->s:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->t:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", catalogMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->v:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->w:Lkotlinx/collections/immutable/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowCancelProductCustomizationBottomSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", consentBottomSheetContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->y:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNavigationSimplified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoPlayDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasAITooltipBeenDisplayed="

    const-string v2, ", isExclusiveSale="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->A:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->B:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->C:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

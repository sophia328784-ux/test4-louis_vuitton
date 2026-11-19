.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00c1\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00081\u00102\u00a8\u00063"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;",
        "passAppLinkBuilder",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;",
        "addMediaItemUseCase",
        "Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;",
        "get3dIdAssetUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "getSkusProductsListUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;",
        "getAllAccessibilityValuesUseCase",
        "Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;",
        "getLandingPageDetailsByIdUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;",
        "getImmersiveArticleDetailByKeyUseCase",
        "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;",
        "getLiveVideoUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final C:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final D:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final E:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final F:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final G:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final H:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final J:Lkotlinx/coroutines/flow/StateFlow;

.field public K:Landroid/graphics/Bitmap;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Landroid/app/Application;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Lcom/vuitton/android/core/events/LVEventSender;

.field public final f:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final h:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

.field public final i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final j:Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

.field public final v:Ljava/lang/String;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;)V
    .locals 25
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->c:Landroid/app/Application;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->h:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->i:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;

    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    const-string v3, "ARTICLE_KEY"

    invoke-virtual {v1, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->v:Ljava/lang/String;

    const-string v4, "ARTICLE_TYPE"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v7, 0x0

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-direct {v9, v10, v7, v11, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;-><init>(ZLandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v14, 0x7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p3, v13

    move/from16 p7, v14

    move-object/from16 p8, v15

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    invoke-direct/range {p3 .. p8}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10, v14, v7}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->E:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v15, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    const/16 v16, 0x7f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 p3, v15

    move/from16 p11, v16

    move-object/from16 p12, v17

    move-object/from16 p4, v18

    move-object/from16 p5, v19

    move-object/from16 p6, v20

    move-object/from16 p7, v21

    move/from16 p8, v22

    move-object/from16 p9, v23

    move/from16 p10, v24

    invoke-direct/range {p3 .. p12}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p7, v10

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 p1, v14

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v7, p2

    iget-object v7, v7, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v7}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/16 v7, 0xa

    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    aput-object v8, v7, p7

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const/4 v6, 0x2

    aput-object v5, v7, v6

    aput-object v9, v7, v11

    const/4 v6, 0x4

    aput-object v15, v7, v6

    const/4 v6, 0x5

    aput-object v14, v7, v6

    const/4 v6, 0x6

    aput-object v12, v7, v6

    aput-object v2, v7, p1

    const/16 v2, 0x8

    aput-object v4, v7, v2

    const/16 v2, 0x9

    aput-object v13, v7, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v2, v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    const/16 v8, 0x3fe

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 p9, v7

    move/from16 p20, v8

    move-object/from16 p21, v9

    move/from16 p10, v12

    move/from16 p11, v14

    move-object/from16 p12, v15

    move-object/from16 p13, v16

    move-object/from16 p14, v17

    move/from16 p15, v18

    move-object/from16 p16, v19

    move/from16 p17, v20

    move/from16 p18, v21

    move-object/from16 p19, v22

    invoke-direct/range {p9 .. p21}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;ZLcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;ZZLcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v4, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    if-eqz v3, :cond_1

    sget-object v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->IMMERSIVE_ARTICLE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Fc(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->SEO_LANDING_PAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;

    const/4 v6, 0x0

    move-object/from16 p2, v0

    move-wide/from16 p4, v1

    move-object/from16 p3, v3

    move-object/from16 p1, v5

    move-object/from16 p6, v6

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v4, v2, v2, v1, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$2;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$2;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, v2, v3, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$collectLoginState$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$collectLoginState$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, v2, v3, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    filled-new-array {v3, v4, v5}, [Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;->a([Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_6

    check-cast v2, Ljava/util/Map;

    new-instance v6, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_2

    :cond_3
    move/from16 v4, p7

    :goto_2
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_3

    :cond_4
    move/from16 v5, p7

    :goto_3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_4

    :cond_5
    move/from16 v2, p7

    :goto_4
    invoke-direct {v6, v4, v5, v2}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZ)V

    goto :goto_5

    :cond_6
    new-instance v2, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 p1, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p2, v5

    move/from16 p3, v6

    move/from16 p4, v7

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, p1

    :goto_5
    invoke-interface {v13, v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$3;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$3;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;)Z
    .locals 1

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/ImmersiveArticlePage;->c:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/VideoCtaArticleSection;->b:Ljava/lang/String;

    const-string v0, "video-cta"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->d:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->f:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v5, v1

    move-object v1, v3

    goto :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    sget-object v5, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->h:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->b:Ljava/lang/String;

    :goto_1
    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    move-object/from16 v5, p2

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->c:Ljava/lang/String;

    iput v6, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$reloadLiveSection$1;->f:I

    invoke-virtual {v2, v7, v3}, Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v2, Lkotlin/Result$Failure;

    if-nez v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    const/4 v8, 0x0

    move v9, v8

    :goto_3
    move-object v10, v7

    check-cast v10, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v11

    const/4 v12, -0x1

    if-eqz v11, :cond_6

    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    instance-of v11, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    if-eqz v11, :cond_5

    check-cast v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->a:Ljava/lang/String;

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    move v9, v12

    :goto_4
    if-eq v9, v12, :cond_8

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v20

    invoke-static {v3}, Lcom/vuitton/android/presentation/common/editorial/mapper/EditorialModuleUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    move-result-object v21

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->f:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;->LIVE_UPCOMING:Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;

    if-ne v5, v7, :cond_7

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->e:Ljava/time/Instant;

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v3

    if-ne v3, v6, :cond_7

    move/from16 v22, v6

    goto :goto_5

    :cond_7
    move/from16 v22, v8

    :goto_5
    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->a:Ljava/lang/String;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->b:Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->j:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->k:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->l:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->m:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    move-object/from16 v26, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    invoke-direct/range {v13 .. v26}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTitlesUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;ZLcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowContentUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    invoke-virtual {v4, v9, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "ImmersiveArticleViewModelImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/presentation/notification/NotificationUiModel;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$showNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$showNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/presentation/notification/NotificationUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Dc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->r:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->r:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->p:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->r:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget v4, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->o:I

    iget v8, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->n:I

    iget v9, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->m:I

    iget v10, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->l:I

    iget v11, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->k:I

    iget v12, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->j:I

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->h:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    iget-object v15, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->g:Ljava/util/Collection;

    check-cast v15, Ljava/util/Collection;

    const/16 p1, 0x0

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->f:Ljava/util/Iterator;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->e:Ljava/util/Collection;

    check-cast v6, Ljava/util/Collection;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-object/from16 v17, v1

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    move-object/from16 v18, v1

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v6

    move-object v6, v5

    move v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_3

    :cond_1
    const/16 p1, 0x0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object p1

    :cond_2
    move-object/from16 v17, v1

    const/16 p1, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_8

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    if-eqz v8, :cond_7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    if-eqz v8, :cond_6

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v10, v4

    move v11, v5

    move v12, v6

    move-object v15, v9

    move-object v6, v1

    move-object v4, v2

    move v9, v11

    const/4 v5, 0x0

    move-object v2, v6

    move-object v1, v7

    move-object v7, v8

    const/4 v8, 0x0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object v14, v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    if-eqz v14, :cond_4

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    sget-object v18, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput-object v2, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, Ljava/util/Collection;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->e:Ljava/util/Collection;

    iput-object v7, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->f:Ljava/util/Iterator;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->g:Ljava/util/Collection;

    iput-object v14, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->h:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    iput-object v13, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iput v12, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->j:I

    iput v11, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->k:I

    iput v10, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->l:I

    iput v9, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->m:I

    iput v8, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->n:I

    iput v5, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->o:I

    const/4 v1, 0x1

    iput v1, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$updateProductSectionsWishlist$1;->r:I

    invoke-virtual {v15, v0, v4}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    move-object/from16 v15, v17

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x37

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v14, v0, v2, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;ZZI)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    move-result-object v0

    :goto_4
    move-object/from16 v1, v18

    goto :goto_5

    :cond_4
    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v17, v15

    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v19, v1

    goto :goto_4

    :goto_5
    invoke-static {v13, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v15, v17

    move-object/from16 v2, v19

    goto :goto_2

    :cond_5
    move-object/from16 v18, v1

    move-object v1, v2

    move-object/from16 v17, v15

    const/4 v2, 0x0

    move-object/from16 v15, v17

    check-cast v15, Ljava/util/List;

    move-object v0, v1

    move-object v1, v6

    move v5, v9

    move v6, v12

    move-object/from16 v7, v18

    goto :goto_6

    :cond_6
    move-object v0, v2

    const/4 v2, 0x0

    move-object/from16 v15, p1

    move v10, v4

    move v11, v5

    move-object v4, v0

    move-object v0, v1

    :goto_6
    invoke-static {v7, v15}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move-object v0, v4

    move v4, v10

    move v5, v11

    :goto_7
    const/16 v16, 0x1

    goto :goto_8

    :cond_7
    move-object v0, v2

    const/4 v2, 0x0

    goto :goto_7

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final Ec(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;ZZ)V
    .locals 10

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    if-ltz v1, :cond_6

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    instance-of v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    if-eqz v5, :cond_5

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    if-eqz v5, :cond_5

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    if-eqz v8, :cond_2

    const/16 v9, 0x27

    invoke-static {v8, p2, p3, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;ZZI)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v4

    :goto_2
    invoke-static {v7, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    move-result-object v7

    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    move v1, v3

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v4

    :cond_7
    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;
    .locals 2

    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    check-cast p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140a5a

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Lretrofit2/HttpException;

    if-eqz p1, :cond_2

    check-cast p0, Lretrofit2/HttpException;

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    iget-object p0, p0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistHelper;->a(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140967

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersive3DModels;->a:Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$LoadImmersive3DModels;

    invoke-interface {v0, v1, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->v:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    const-string v3, "id"

    invoke-virtual {v0, v1, v3}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p1

    :goto_0
    const-string v1, "sku"

    invoke-virtual {v0, v2, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final A3()V
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;

    iget-wide v2, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->a:J

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerItemUiModel;->e:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;-><init>(JLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;->a:Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;->a(Lcom/vuitton/foundation/model/domain/model/audioplayer/AudioPlayerItem;)V

    :cond_0
    return-void
.end method

.method public final Fc(Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v0, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticle;->a:Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticle;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {v1, v2, v0}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v7

    const-string v0, "id"

    invoke-virtual {v7, p1, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticleFull;->a:Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Action$OpenImmersiveArticleFull;

    invoke-interface {v1, v2, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-virtual {v1, p1, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$getArticleDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;JLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final L1()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Q2(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    const/4 v1, 0x0

    const/16 v2, 0x5f

    invoke-static {v0, v1, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;I)Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final T1()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$hideScreenshotNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$hideScreenshotNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V
    .locals 22

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ImmersiveArticleScreen;

    const-string v2, "seo_landing_page"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "LVPass/fashion_show/"

    if-eqz v1, :cond_7

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ImmersiveArticleScreen;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ImmersiveArticleScreen;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ImmersiveArticleScreen;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v6, v7

    if-eq v7, v3, :cond_1

    if-ne v7, v4, :cond_0

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-static {v5, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const-string v5, "recommendation"

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    move-object v11, v5

    goto :goto_2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    const-string v2, "news_article"

    move-object v11, v2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v6, v0

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_4

    :goto_3
    move-object v10, v5

    goto :goto_4

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_5
    const-string v0, "fashion_show/"

    invoke-static {v0, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    :cond_6
    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    goto/16 :goto_10

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "click"

    const-string v9, "explore"

    if-eqz v1, :cond_a

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;->a:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    sget-object v12, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    if-eq v12, v3, :cond_9

    if-ne v12, v4, :cond_8

    :goto_5
    move-object v12, v2

    goto :goto_6

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_9
    invoke-static {v5, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :goto_6
    invoke-static {v11, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v2

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v5, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleVideoClickEvent;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v7

    aput-object v5, v0, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "video_cta"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    move-object/from16 v0, p0

    move-object v7, v10

    goto/16 :goto_10

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;

    if-eqz v1, :cond_b

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v2

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v5, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleLookClickEvent;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v7

    aput-object v5, v0, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "look_cta"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;

    if-eqz v1, :cond_c

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleDeeplinkClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v1, v7

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "deeplink_cta"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;

    if-eqz v1, :cond_d

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ModuleWallpaperClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "download"

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-array v1, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, v1, v7

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "wallpaper"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;

    const/4 v2, 0x4

    if-eqz v1, :cond_e

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->a:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->d:Ljava/lang/String;

    invoke-static {v11, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v5, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->b:Ljava/lang/String;

    invoke-direct {v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v8

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$CtaListClickEvent;->e:I

    invoke-direct {v9, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v2, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v5, v0, v7

    aput-object v1, v0, v3

    aput-object v8, v0, v4

    aput-object v9, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;

    const-string v8, ""

    if-eqz v1, :cond_10

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "product_selection"

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "navigation"

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v5, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;->b:Ljava/lang/String;

    invoke-direct {v1, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v9

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductClickEvent;->e:Ljava/lang/String;

    if-nez v0, :cond_f

    goto :goto_8

    :cond_f
    move-object v8, v0

    :goto_8
    invoke-direct {v10, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    invoke-static {v12}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v5, v8, v7

    aput-object v1, v8, v3

    aput-object v9, v8, v4

    aput-object v10, v8, v6

    aput-object v0, v8, v2

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object v7, v9

    goto/16 :goto_10

    :cond_10
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;

    const-string v2, "immersive_article"

    if-eqz v1, :cond_11

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "click_banner_cta"

    const-string v15, "click"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_11
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;

    if-eqz v1, :cond_12

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->d(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductsTabsTabClickedEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v13, "tab_selector"

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object v7, v8

    goto/16 :goto_10

    :cond_12
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;

    const-string v10, "3d_model"

    const/4 v11, 0x0

    if-eqz v1, :cond_13

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DTouchedEvent;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x21

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-string v15, "3d_move"

    const-string v17, "product_sheet"

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_9
    move-object/from16 v0, p0

    move-object v7, v12

    goto/16 :goto_10

    :cond_13
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;

    if-eqz v1, :cond_14

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$On3DZoomEvent;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x21

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-string v15, "3d_zoom"

    const-string v17, "product_sheet"

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    :cond_14
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;

    if-eqz v1, :cond_16

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    const-string v5, "services"

    invoke-static {v1, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;->e:Z

    if-eqz v5, :cond_15

    const-string v5, "expand_panel_info"

    :goto_a
    move-object v15, v5

    goto :goto_b

    :cond_15
    const-string v5, "collapse_panel_info"

    goto :goto_a

    :goto_b
    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;->c:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ModuleId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ExpansionListToggleEvent;->d:I

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Index;-><init>(I)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v7

    aput-object v2, v0, v3

    aput-object v5, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x21

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-string v17, "click"

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_9

    :cond_16
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;

    const-string v10, "LVPass/Explore/immersive_article"

    if-eqz v1, :cond_17

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-static {v1, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->d(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Ljava/lang/String;

    move-result-object v18

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnClickSliderEvent;->b:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/4 v13, 0x0

    const-string v15, "click_on_slider"

    const-string v17, "click"

    invoke-direct/range {v12 .. v21}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_9

    :cond_17
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;

    if-eqz v1, :cond_18

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-static {v1, v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnSwipeSliderEvent;->c:Ljava/lang/String;

    const-string v4, "swipe_"

    const-string v5, "/"

    invoke-static {v4, v3, v5, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->d(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x41

    const/16 v20, 0x0

    const/4 v12, 0x0

    const-string v16, "swipe"

    const/16 v18, 0x0

    invoke-direct/range {v11 .. v20}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object v7, v11

    goto/16 :goto_10

    :cond_18
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;

    const-string v2, "fashion_show_article"

    if-eqz v1, :cond_1a

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;->c:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v1

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductAddWishlistClickEvent;->d:Ljava/lang/String;

    if-nez v0, :cond_19

    goto :goto_c

    :cond_19
    move-object v8, v0

    :goto_c
    invoke-direct {v5, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v7

    aput-object v1, v0, v3

    aput-object v5, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x20

    const/16 v19, 0x0

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;

    const-string v15, "add_to_wishlist"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_1a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;

    if-eqz v1, :cond_1c

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;->c:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ArticleId;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    move-result-object v1

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ProductDeleteWishlistClickEvent;->d:Ljava/lang/String;

    if-nez v0, :cond_1b

    goto :goto_d

    :cond_1b
    move-object v8, v0

    :goto_d
    invoke-direct {v5, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Price;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v7

    aput-object v1, v0, v3

    aput-object v5, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x20

    const/16 v19, 0x0

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;

    const-string v15, "delete_from_wishlist"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_1c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;

    if-eqz v1, :cond_1d

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeClickEvent;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "push_notification"

    const-string v15, "notify_me"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_1d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeSuccessEvent;

    if-eqz v1, :cond_1e

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeSuccessEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeSuccessEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeSuccessEvent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "confirm"

    const-string v15, "notify_me"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_1e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;

    if-eqz v1, :cond_1f

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$NotifyMeAlreadyNotifiedEvent;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x21

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "already_activate"

    const-string v15, "notify_me"

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_1f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;

    if-eqz v1, :cond_20

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScreenshotTakenEvent;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v15, "screenshot"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_20
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;

    if-eqz v1, :cond_21

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v15, "share_intention_screenshot"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_21
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;

    const-string v6, "LVPass/player_audio/"

    if-eqz v1, :cond_22

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "open"

    const-string v14, "immersive_article"

    const-string v15, "player_audio"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_22
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;

    if-eqz v1, :cond_23

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v13, "play"

    const-string v14, "immersive_article"

    const-string v15, "player_audio"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_23
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerPlayEvent;

    if-eqz v1, :cond_24

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/player_audio/big_player"

    const-string v13, "play"

    const-string v14, "player_audio"

    const-string v15, "big_player"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_24
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnPlusOrLessButtonClickEvent;

    if-eqz v1, :cond_27

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnPlusOrLessButtonClickEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnPlusOrLessButtonClickEvent;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SeekDirection;

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_26

    if-ne v0, v4, :cond_25

    const-string v0, "less_15s"

    :goto_e
    move-object v13, v0

    goto :goto_f

    :cond_25
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_26
    const-string v0, "plus_15s"

    goto :goto_e

    :goto_f
    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v12, "LVPass/player_audio/big_player"

    const-string v14, "player_audio"

    const-string v15, "big_player"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_27
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;

    if-eqz v1, :cond_28

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;->c:I

    const-string v2, "%"

    invoke-static {v0, v2}, Lcj;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x61

    const/16 v19, 0x0

    const/4 v11, 0x0

    const-string v15, "scroll"

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_7

    :cond_28
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;

    if-eqz v1, :cond_29

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->e(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModelKt;->c(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x61

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v11, "share_intention"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object v7, v6

    :goto_10
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v7}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_29
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->E:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final u0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$onCountdownFinished$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$onCountdownFinished$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final x5()V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    const/4 v1, 0x0

    const/16 v2, 0x6f

    invoke-static {v0, v1, v1, v1, v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;I)Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

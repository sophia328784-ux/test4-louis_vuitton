.class public final Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0099\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010&\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;",
        "getWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;",
        "isStoreModeStillValidUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;",
        "disableStoreModeUseCase",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;",
        "shareWishlistContentUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "getSkusProductsListUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;",
        "getRmsCodeUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "contactUsDelegate",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V",
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

.field public final B:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final C:Lkotlinx/coroutines/flow/StateFlow;

.field public D:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

.field public final a:Landroid/app/Application;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final f:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

.field public final n:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final q:J

.field public final r:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final s:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V
    .locals 19
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->a:Landroid/app/Application;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->n:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v2, p6

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const-wide/16 v3, 0x12c

    iput-wide v3, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->q:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-static {v3, v3, v4, v5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    const/4 v6, -0x2

    const/4 v7, 0x6

    invoke-static {v6, v7, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_SHARE_WISHLIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    move-object/from16 v15, p14

    invoke-virtual {v15, v14}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3, v5, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const/16 v15, 0x9

    new-array v15, v15, [Lkotlinx/coroutines/flow/Flow;

    aput-object v8, v15, v3

    const/4 v3, 0x1

    aput-object v6, v15, v3

    const/4 v3, 0x2

    aput-object v9, v15, v3

    const/4 v3, 0x3

    aput-object v10, v15, v3

    const/4 v6, 0x4

    aput-object v11, v15, v6

    const/4 v6, 0x5

    aput-object v13, v15, v6

    aput-object v14, v15, v7

    aput-object v12, v15, v5

    const/16 v5, 0x8

    aput-object v1, v15, v5

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v15, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    const/16 v8, 0x3fe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 p2, v2

    move-object/from16 p1, v7

    move/from16 p12, v8

    move-object/from16 p13, v9

    move/from16 p3, v10

    move/from16 p4, v11

    move-object/from16 p5, v12

    move-object/from16 p6, v13

    move/from16 p7, v14

    move-object/from16 p8, v15

    move/from16 p9, v16

    move-object/from16 p10, v17

    move-object/from16 p11, v18

    invoke-direct/range {p1 .. p13}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;Ljava/lang/String;ZLkotlin/Result;ZLjava/lang/String;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p1

    invoke-static {v1, v5, v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->C:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$1;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;)V

    invoke-static {v1, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    move-object v5, v3

    check-cast v5, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->b:Ljava/lang/String;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v7, p1

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->a:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->b:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->c:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->d:Ljava/lang/String;

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->e:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    const/4 v15, 0x0

    move/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v8

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v7, p1

    new-instance v3, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->b:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    invoke-direct {v4, v3, v2}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v7, p1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method


# virtual methods
.method public final Ac(I)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$showErrorNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;ILkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final D5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;

    invoke-direct {v0, p2, v1}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$onItemExpanded$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$onItemExpanded$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final D8(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final E3()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->zc(Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F()Z
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->c()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    :cond_0
    return v1
.end method

.method public final G()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final K9(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final W7()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p0

    return-object p0
.end method

.method public final X4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f140d1a

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->Ac(I)V

    return-void

    :cond_0
    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f14097f

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->Ac(I)V

    return-void

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistEvent;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistEvent;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->D:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->C:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistScreen;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyWishlists"

    const-string v4, "mylv/my_wishlist"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistSharedScreen;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistSharedScreen;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$WishlistSharedScreen;->a:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const/4 v0, 0x1

    aput-object v2, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyWishlists"

    const/4 v4, 0x0

    const-string v5, "shared_wishlist"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistEvent;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyWishlists"

    const-string v4, "share_intention"

    const-string v5, "MyLV"

    const-string v6, "my_wishlist"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SwipeToDeleteEvent;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyWishlists"

    const-string v4, "delete_intention"

    const-string v5, "MyLV"

    const-string v6, "my_wishlist"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ConfirmDeleteEvent;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyWishlists"

    const-string v4, "delete_confirmation"

    const-string v5, "MyLV"

    const-string v6, "my_wishlist"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;

    iget-object v4, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$SharedWishlistProductClickEvent;->a:Ljava/lang/String;

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyWishlists"

    const-string v5, "shared_wishlist"

    const-string v6, "product_selection"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$OpenMyLVEvent;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$OpenMyLVEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x41

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "wishlist"

    const-string v4, "open_myLV"

    const-string v5, "wishlist"

    const-string v6, "click"

    const-string v7, "my_wishlist"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistSuccessEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/MyLV/Dashboard/MyWishlists"

    const-string v3, "Share"

    const-string v4, "MyLV"

    const-string v5, "social"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final hc()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final ub(Ljava/util/ArrayList;)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$OpenWishlist;->a:Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$OpenWishlist;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;

    invoke-direct {v4, v0, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;-><init>(Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v2, v2, v4, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_1

    check-cast p1, Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->zc(Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$retrieveProfile$1;

    invoke-direct {v0, v2, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$retrieveProfile$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;)V

    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$load$1;

    invoke-direct {v0, v2, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$load$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;)V

    invoke-static {p1, v2, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->o:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method

.method public final z2()V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    const v0, 0x7f140df4

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f140df3

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$nativeShareWishlist$1$1;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$nativeShareWishlist$1$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final zc(Lcom/vuitton/android/domain/monitoring/MonitorAction;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

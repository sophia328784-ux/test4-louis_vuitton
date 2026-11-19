.class public final Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u00a9\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\'\u001a\u00020&\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010*\u001a\u00020\u0003\u00a2\u0006\u0004\u0008+\u0010,\u00a8\u0006-"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;",
        "getWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishList",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlist",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "analyticsTracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;",
        "getPersonalSelectionsDetailUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "getSkusProductsListUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlistUseCase",
        "contactUsDelegate",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V",
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
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Landroid/app/Application;

.field public final c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final d:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

.field public final e:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final g:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final h:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public final m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final n:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/StateFlow;

.field public final s:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final t:Lkotlinx/coroutines/flow/Flow;

.field public u:Ljava/util/List;

.field public final v:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V
    .locals 16
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p20

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

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->b:Landroid/app/Application;

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v10, p8

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->e:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v8, p12

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v2, p2

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->n:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    const-class v4, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;

    sget-object v5, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v5, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-static {v5, v4, v2}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;->a:Ljava/lang/String;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->o:Ljava/lang/String;

    sget-object v15, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Loading;

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->r:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v4, v11}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->t:Lkotlinx/coroutines/flow/Flow;

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->u:Ljava/util/List;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    move-object v5, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    move-object/from16 v14, p3

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v11, p14

    move-object v1, v5

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v14}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->v:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-interface {v1, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$initContactUsDelegate$1;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$initContactUsDelegate$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;->SERVICES:Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;

    move-object/from16 v1, p20

    invoke-interface {v1, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    instance-of v5, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;

    iget v6, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;

    invoke-direct {v5, v1, v0}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->w:Ljava/lang/Object;

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v7, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    if-eq v7, v10, :cond_2

    if-ne v7, v9, :cond_1

    iget v7, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->u:I

    iget v8, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->t:I

    iget v13, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->s:I

    iget-boolean v14, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->v:Z

    iget v15, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->r:I

    iget v9, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->q:I

    const/16 v16, 0x0

    iget v11, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->p:I

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->n:Ljava/util/Map;

    check-cast v12, Ljava/util/Map;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->m:Ljava/util/Iterator;

    move-object/from16 p1, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->l:Ljava/util/Collection;

    check-cast v0, Ljava/util/Collection;

    move-object/from16 p2, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->k:Ljava/util/Collection;

    check-cast v0, Ljava/util/Collection;

    move-object/from16 p3, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->j:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    move-object/from16 p4, v0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->i:Ljava/util/List;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/List;

    move-object/from16 v19, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->h:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    move-object/from16 p5, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->f:Ljava/lang/String;

    move-object/from16 p6, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->e:Ljava/lang/String;

    move-object/from16 p7, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->d:Ljava/lang/String;

    move-object/from16 p8, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->c:Ljava/lang/String;

    move-object/from16 v20, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    :try_start_0
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v17

    move-object/from16 v17, v3

    move-object v3, v0

    move/from16 v21, v8

    move/from16 v22, v9

    move-object v0, v10

    move/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v15

    move-object/from16 v9, p1

    move-object/from16 v8, p2

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    move-object/from16 v10, p8

    move v15, v7

    move-object/from16 p1, v18

    move-object/from16 v7, p3

    move-object/from16 v18, v2

    move v2, v14

    move-object v14, v5

    move-object/from16 v5, p4

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    move-object/from16 v11, p7

    move-object/from16 v10, p8

    move-object/from16 v17, v3

    move-object v7, v4

    move-object/from16 v14, v18

    move-object/from16 v8, v20

    move-object/from16 v18, v2

    goto/16 :goto_16

    :cond_1
    const/16 v16, 0x0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v19, v4

    const/16 v16, 0x0

    iget-boolean v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->v:Z

    iget v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->r:I

    iget v7, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->q:I

    iget v9, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->p:I

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->i:Ljava/util/List;

    check-cast v10, Ljava/util/List;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->h:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->g:Ljava/util/List;

    check-cast v12, Ljava/util/List;

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->f:Ljava/lang/String;

    iget-object v14, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->e:Ljava/lang/String;

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->d:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->c:Ljava/lang/String;

    move/from16 v20, v4

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    :try_start_1
    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p1, v12

    move-object v12, v13

    move-object v13, v11

    move-object v11, v14

    move-object v14, v10

    move-object v10, v15

    move v15, v9

    move v9, v7

    move-object v7, v4

    :goto_1
    move v4, v0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object v7, v4

    move-object v12, v13

    move-object v13, v11

    move-object v11, v14

    move-object v14, v10

    move-object v10, v15

    goto/16 :goto_16

    :cond_3
    move-object/from16 v17, v0

    move-object/from16 v19, v4

    const/16 v16, 0x0

    invoke-static/range {v17 .. v17}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-object/from16 v7, p6

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_15

    if-eqz v9, :cond_4

    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;->a:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v10, v9}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    :goto_3
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    goto/16 :goto_16

    :cond_4
    move-object/from16 v7, p1

    :try_start_4
    iput-object v7, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_14

    move-object/from16 v9, p2

    :try_start_5
    iput-object v9, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->c:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_13

    move-object/from16 v10, p3

    :try_start_6
    iput-object v10, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->d:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    move-object/from16 v11, p4

    :try_start_7
    iput-object v11, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->e:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    move-object/from16 v12, p5

    :try_start_8
    iput-object v12, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->f:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    :try_start_9
    move-object/from16 v13, p6

    check-cast v13, Ljava/util/List;

    iput-object v13, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->g:Ljava/util/List;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-object/from16 v13, p7

    :try_start_a
    iput-object v13, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->h:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    move-object/from16 v14, p8

    :try_start_b
    iput-object v14, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->i:Ljava/util/List;

    const/4 v15, 0x0

    iput v15, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->p:I

    iput v15, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->q:I

    iput v15, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->r:I

    iput-boolean v0, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->v:Z

    const/4 v15, 0x1

    iput v15, v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    :try_start_c
    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {v4, v8, v5}, Lcom/vuitton/android/domain/repository/CatalogRepository;->k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    if-ne v4, v6, :cond_5

    goto/16 :goto_7

    :cond_5
    move-object/from16 p1, p6

    move-object/from16 v17, v4

    move-object v8, v9

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    goto/16 :goto_1

    :goto_4
    :try_start_d
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Iterable;

    move/from16 p2, v4

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v4

    move-object/from16 p3, v0

    const/16 v0, 0x10

    if-ge v4, v0, :cond_6

    move v4, v0

    :cond_6
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-eqz v17, :cond_7

    move-object/from16 p3, v4

    :try_start_e
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v5

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 p4, v7

    :try_start_f
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v7, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v5, v17

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v7, p4

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 p4, v7

    goto/16 :goto_3

    :cond_7
    move-object/from16 v17, v5

    move-object/from16 p4, v7

    :try_start_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 p1, v0

    const/16 v0, 0xa

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    move-object/from16 p3, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v7

    move v7, v9

    move-object/from16 v9, v17

    move-object/from16 v17, p3

    move-object/from16 p3, v6

    move/from16 v6, p2

    move-object/from16 p2, v14

    move v14, v15

    move/from16 v15, v20

    move-object/from16 v20, p3

    move-object/from16 v18, v2

    move-object v5, v4

    const/16 p3, 0x0

    const/4 v2, 0x0

    move-object/from16 v4, p4

    :goto_6
    :try_start_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move/from16 p4, v2

    move-object/from16 v2, v21

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;

    move/from16 v21, v6

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;->a:Ljava/lang/String;

    move-object/from16 p5, v2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v2, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    if-nez v2, :cond_8

    :try_start_12
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p5 .. p5}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/mappers/PersonalSelectionsInStorePlpMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move/from16 v25, p4

    move-object/from16 v24, v3

    move/from16 v22, v7

    move/from16 v23, v14

    move-object/from16 v6, v20

    move/from16 v7, v21

    move/from16 v21, p3

    move-object v3, v2

    move-object/from16 v20, v8

    move-object v14, v9

    move-object/from16 v8, p1

    move-object v9, v8

    move-object/from16 v2, p2

    goto/16 :goto_a

    :catchall_5
    move-exception v0

    move-object/from16 v14, p2

    move-object v7, v4

    goto/16 :goto_16

    :cond_8
    move-object/from16 p5, v3

    :try_start_13
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    iput-object v8, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->c:Ljava/lang/String;

    iput-object v10, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->d:Ljava/lang/String;

    iput-object v11, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->e:Ljava/lang/String;

    iput-object v12, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->f:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    move-object/from16 p6, v4

    move-object/from16 v4, v16

    :try_start_14
    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->g:Ljava/util/List;

    iput-object v13, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->h:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    move-object/from16 v4, p2

    check-cast v4, Ljava/util/List;

    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->i:Ljava/util/List;

    move-object v4, v5

    check-cast v4, Ljava/util/List;

    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->j:Ljava/util/List;

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->k:Ljava/util/Collection;

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Collection;

    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->l:Ljava/util/Collection;

    iput-object v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->m:Ljava/util/Iterator;

    move-object/from16 v4, p5

    check-cast v4, Ljava/util/Map;

    iput-object v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->n:Ljava/util/Map;

    iput-object v2, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iput v14, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->p:I

    iput v7, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->q:I

    iput v15, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->r:I

    move/from16 v4, v21

    iput-boolean v4, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->v:Z

    move-object/from16 p7, v0

    move/from16 v0, p4

    iput v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->s:I

    move/from16 p4, v0

    move/from16 v0, p3

    iput v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->t:I

    move/from16 v21, v0

    const/4 v0, 0x1

    iput v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->u:I

    const/4 v0, 0x2

    iput v0, v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$enrichProducts$1;->y:I

    invoke-virtual {v3, v6, v9}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v6, v20

    if-ne v3, v6, :cond_9

    :goto_7
    return-object v6

    :cond_9
    move/from16 v25, p4

    move-object/from16 v24, p5

    move-object v0, v2

    move v2, v4

    move/from16 v22, v7

    move-object/from16 v20, v8

    move/from16 v23, v14

    move/from16 v26, v15

    const/4 v15, 0x1

    move-object/from16 v7, p1

    move-object v8, v7

    move-object/from16 p1, p2

    move-object/from16 v4, p6

    move-object v14, v9

    move-object/from16 v9, p7

    :goto_8
    if-eqz v15, :cond_a

    const/4 v15, 0x1

    goto :goto_9

    :cond_a
    const/4 v15, 0x0

    :goto_9
    :try_start_15
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v0, v15, v3, v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;ZZZ)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object v3, v0

    move-object v0, v9

    move/from16 v15, v26

    move-object v9, v7

    move v7, v2

    move-object/from16 v2, p1

    :goto_a
    :try_start_16
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    move-object/from16 p2, v2

    move-object/from16 p1, v8

    move-object v9, v14

    move-object/from16 v8, v20

    move/from16 p3, v21

    move/from16 v14, v23

    move-object/from16 v3, v24

    move/from16 v2, v25

    const/16 v16, 0x0

    move-object/from16 v20, v6

    move v6, v7

    move/from16 v7, v22

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    move-object v14, v2

    :goto_b
    move-object v7, v4

    move-object/from16 v8, v20

    goto/16 :goto_16

    :catchall_7
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_b

    :catchall_8
    move-exception v0

    :goto_c
    move-object/from16 v14, p2

    move-object/from16 v7, p6

    goto/16 :goto_16

    :catchall_9
    move-exception v0

    move-object/from16 p6, v4

    goto :goto_c

    :cond_b
    move-object/from16 p6, v4

    :try_start_17
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;

    invoke-direct {v2, v0, v5}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    move-object/from16 v2, p6

    move-object v7, v13

    move-object/from16 v13, p2

    :goto_d
    move-object v4, v8

    move-object v3, v10

    move-object v5, v11

    move-object v6, v12

    goto/16 :goto_17

    :catchall_a
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 v7, p4

    goto :goto_16

    :catchall_b
    move-exception v0

    move-object/from16 v18, v2

    move-object/from16 v17, v3

    move-object/from16 p4, v7

    goto :goto_16

    :catchall_c
    move-exception v0

    goto :goto_f

    :goto_e
    move-object v8, v9

    goto :goto_16

    :catchall_d
    move-exception v0

    :goto_f
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_e

    :catchall_e
    move-exception v0

    :goto_10
    move-object/from16 v14, p8

    goto :goto_f

    :catchall_f
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    goto :goto_f

    :catchall_10
    move-exception v0

    :goto_11
    move-object/from16 v13, p7

    goto :goto_10

    :catchall_11
    move-exception v0

    :goto_12
    move-object/from16 v12, p5

    goto :goto_11

    :catchall_12
    move-exception v0

    :goto_13
    move-object/from16 v11, p4

    goto :goto_12

    :catchall_13
    move-exception v0

    :goto_14
    move-object/from16 v10, p3

    goto :goto_13

    :catchall_14
    move-exception v0

    :goto_15
    move-object/from16 v9, p2

    goto :goto_14

    :catchall_15
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_15

    :goto_16
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    move-object v2, v7

    move-object v7, v13

    move-object v13, v14

    goto :goto_d

    :goto_17
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_c

    goto :goto_18

    :cond_c
    instance-of v0, v8, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_f

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v8}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v8, Lkotlin/Result;

    invoke-direct {v8, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v8

    :goto_18
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_e

    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;->a:Ljava/util/List;

    iput-object v8, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->u:Ljava/util/List;

    new-instance v9, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Success;

    sget-object v10, Landroidx/paging/PagingData;->e:Landroidx/paging/PagingData$Companion;

    new-instance v11, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;

    const-string v12, "items"

    invoke-direct {v11, v12, v8}, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$Products;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/paging/PagingData$Companion;->a(Ljava/util/List;)Landroidx/paging/PagingData;

    move-result-object v8

    new-instance v10, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {v10, v8}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->U:Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;

    if-eqz v8, :cond_d

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;->a:Ljava/lang/String;

    goto :goto_19

    :cond_d
    const/4 v11, 0x0

    :goto_19
    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_V3_GRID_VIEW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    move-object/from16 v12, v18

    invoke-virtual {v12, v8}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v8

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v12

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;->a:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v1

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/EnrichedProductsUiModel;->b:Ljava/util/List;

    move/from16 v27, v14

    move v14, v1

    move-object v1, v9

    move-object v9, v11

    move v11, v12

    move/from16 v12, v27

    move-object/from16 v27, v10

    move v10, v8

    move-object/from16 v8, v27

    invoke-direct/range {v1 .. v15}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;ZZILjava/util/List;ZLjava/util/List;)V

    move-object/from16 v2, v17

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_e
    move-object/from16 v2, v17

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->o:Ljava/lang/String;

    const-string v3, "Unable to enrich personal selections products for selectionId="

    const-string v4, "PersonalSelectionsInStoreViewModelImpl"

    invoke-static {v3, v1, v0, v4, v8}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Error;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Error;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_f
    throw v8
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->v:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F8()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreViewState$Loading;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$loadDetail$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final H(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->b:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->a:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-direct {v3, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$onWishlistToggled$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$onWishlistToggled$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final K(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->g:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Na()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->b:Landroid/app/Application;

    const v2, 0x7f1411bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$sharePersonalSelection$2;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_1
    :goto_0
    new-instance v0, Lxn0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxn0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "PersonalSelectionsInStoreViewModelImpl"

    invoke-interface {p0, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->r:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final f2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->t:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final g()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->v:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final p1(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$InStoreSelectionScreen;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$InStoreSelectionScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "in_store_selection"

    const/4 v4, 0x0

    const-string v5, "personal_selection"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ProductClickEvent;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ProductClickEvent;

    iget v2, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ProductClickEvent;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ProductClickEvent;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v3, p1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const/4 v0, 0x1

    aput-object v2, p1, v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "in_store_selection"

    const-string v4, "product_page"

    const-string v5, "personal_selection"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$BookAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$BookAppointmentEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "in_store_selection"

    const-string v4, "book_appointment"

    const-string v5, "personal_selection"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ShareEvent;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$ShareEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "in_store_selection"

    const-string v3, "share_intention"

    const-string v4, "personal_selection"

    const-string v5, "click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final t8()V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$refreshWishlistStatus$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl$refreshWishlistStatus$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->v:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->m:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method

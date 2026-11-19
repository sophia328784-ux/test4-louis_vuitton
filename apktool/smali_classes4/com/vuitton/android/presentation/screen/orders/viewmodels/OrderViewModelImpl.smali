.class public final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bi\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;",
        "getOrdersUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;",
        "getOngoingOrdersUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;",
        "clearOrdersCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;",
        "getInvoiceUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
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

.field public final E:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final d:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;

.field public final j:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final k:Ljava/lang/String;

.field public final l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final m:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final n:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final o:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final p:Lkotlinx/coroutines/flow/Flow;

.field public q:Ljava/lang/String;

.field public r:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

.field public final s:Ljava/lang/String;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 26
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

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v2, p4

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->j:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const-string v2, "OrderViewModelImpl"

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->k:Ljava/lang/String;

    move-object/from16 v2, p5

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->o:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->p:Lkotlinx/coroutines/flow/Flow;

    const-string v5, "transactionId"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->q:Ljava/lang/String;

    const-string v5, "item"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->r:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const-string v5, "shippingGroupId"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->s:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 p1, v14

    move/from16 p7, v15

    move-object/from16 p8, v16

    move/from16 p2, v17

    move/from16 p3, v18

    move/from16 p4, v19

    move/from16 p5, v20

    move/from16 p6, v21

    invoke-direct/range {p1 .. p8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v15, 0xb

    new-array v15, v15, [Lkotlinx/coroutines/flow/Flow;

    aput-object v10, v15, v2

    const/4 v2, 0x1

    aput-object v11, v15, v2

    const/4 v10, 0x2

    aput-object v12, v15, v10

    const/4 v10, 0x3

    aput-object v13, v15, v10

    const/4 v11, 0x4

    aput-object v5, v15, v11

    const/4 v5, 0x5

    aput-object v7, v15, v5

    const/4 v5, 0x6

    aput-object v6, v15, v5

    aput-object v8, v15, v3

    const/16 v3, 0x8

    aput-object v9, v15, v3

    const/16 v3, 0x9

    aput-object v1, v15, v3

    const/16 v1, 0xa

    aput-object v14, v15, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v15, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-static {v5, v2}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->a(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v2

    new-instance v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    const/16 v24, 0xfff

    const/16 v25, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v11 .. v25}, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v3, v2, v11}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->E:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$1;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;)V

    invoke-static {v1, v4, v4, v2, v10}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$OpenMyOrders;->a:Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$OpenMyOrders;

    invoke-interface {p1, v2, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v2, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->e:I

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/OrderRepository;->g()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-interface {v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->d()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$1;->e:I

    check-cast v2, Lkotlinx/coroutines/flow/AbstractFlow;

    invoke-virtual {v2, v4, v0}, Lkotlinx/coroutines/flow/AbstractFlow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    move-object p0, p1

    :goto_3
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->j:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v10, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->h:Z

    iget v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v13, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->g:Z

    iget v14, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v19, v11

    const/4 v11, 0x4

    :goto_1
    move/from16 v20, v5

    move/from16 v22, v13

    move v5, v14

    goto/16 :goto_8

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->g:Z

    iget v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iget v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v13

    move v13, v6

    move-object v6, v14

    move v14, v12

    move v12, v5

    goto/16 :goto_6

    :cond_3
    iget-boolean v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->g:Z

    iget v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iget v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iget v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v12

    move-object v12, v11

    move v11, v6

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    move v5, v9

    :goto_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v11}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v11

    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iput v9, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iput v10, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v11, v9, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_6

    goto/16 :goto_7

    :cond_6
    move-object v13, v1

    move-object v12, v6

    move-object v1, v11

    move v11, v5

    move v5, v9

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDER_RETURN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v6}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v6

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iput v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->g:Z

    iput v8, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v6, v9, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_7

    goto/16 :goto_7

    :cond_7
    move/from16 v23, v5

    move v5, v1

    move-object v1, v6

    move/from16 v6, v23

    :goto_4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    move v1, v10

    goto :goto_5

    :cond_8
    move v1, v9

    :goto_5
    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDER_EXCHANGE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    iput-object v13, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iput v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->g:Z

    iput v1, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->f:I

    iput v7, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v14, v9, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_9

    goto :goto_7

    :cond_9
    move-object v15, v12

    move v12, v1

    move-object v1, v14

    move v14, v11

    move v11, v6

    move-object v6, v13

    move v13, v5

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v5}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v5, v5, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->b:Z

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ORDERS_INVOICE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array/range {v16 .. v16}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    iput-object v6, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v15, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->c:Ljava/lang/Object;

    iput v14, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->d:I

    iput v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v13, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->g:Z

    iput v12, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v1, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v5, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->i:Z

    const/4 v11, 0x4

    iput v11, v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$initFeatureFlags$1;->l:I

    invoke-virtual {v2, v7, v9, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_a

    :goto_7
    return-object v4

    :cond_a
    move/from16 v19, v1

    move-object v1, v7

    goto/16 :goto_1

    :goto_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    new-instance v17, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    if-eqz v12, :cond_b

    move/from16 v18, v10

    goto :goto_9

    :cond_b
    move/from16 v18, v9

    :goto_9
    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;-><init>(ZZZZZ)V

    move-object/from16 v1, v17

    invoke-interface {v6, v15, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    move-object v1, v6

    const/4 v7, 0x3

    goto/16 :goto_2
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->c:Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->q:Ljava/lang/String;

    if-nez p1, :cond_5

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "transactionIdParam must not be null"

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->f:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/OrderRepository;->j()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_6

    :cond_6
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->f:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_6

    :cond_7
    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_f

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->q:Ljava/lang/String;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_9

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->q:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_4

    :cond_b
    move-object v6, v5

    :goto_4
    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->q:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Ec(Ljava/lang/String;)V

    :cond_c
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->r:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->e:Ljava/util/List;

    if-eqz v4, :cond_d

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    goto :goto_5

    :cond_d
    move-object v4, v5

    :cond_e
    :goto_5
    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_f
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_11

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->c:Ljava/lang/Throwable;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailData$1;->f:I

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Dc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    :goto_6
    return-object v1

    :cond_10
    move-object v0, v2

    :goto_7
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0, v5}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->s:Ljava/lang/String;

    instance-of v2, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;

    invoke-direct {v2, p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->c:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iput v7, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->e:I

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Cc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_6

    goto/16 :goto_4

    :cond_6
    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_f

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v7, v4}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_8

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->b:Ljava/lang/String;

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_a
    move-object v7, v8

    :goto_3
    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-eqz v7, :cond_d

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->b:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->e:Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->o:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->b:Ljava/lang/Object;

    iput v6, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->e:I

    invoke-interface {p0, v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_f

    goto :goto_4

    :cond_c
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    return-object v8

    :cond_d
    new-instance v4, Lcom/vuitton/foundation/model/domain/error/account/NoShippingGroupFoundException;

    invoke-direct {v4}, Lcom/vuitton/foundation/model/domain/error/account/NoShippingGroupFoundException;-><init>()V

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderDetailFromDeeplink$1;->e:I

    invoke-virtual {p0, v4, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Dc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_e

    :goto_4
    return-object v3

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->k:Ljava/lang/String;

    const-string v2, "No order found for shippingGroupId: "

    invoke-static {v2, v1, p1, p0, v8}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final Cc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->c:Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->f:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/OrderRepository;->g()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->f:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_5

    :cond_6
    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    const/4 v4, 0x0

    if-nez v2, :cond_7

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {v7, v2, v4}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object v7

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {p1, v2, v5}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object p1

    invoke-direct {v6, v7, p1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    move-object p1, v6

    :cond_7
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_a

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_8
    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    move v8, v5

    goto :goto_4

    :cond_9
    move v8, v4

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_d

    :cond_b
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->c:Ljava/lang/Throwable;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$fetchOrdersFromRemote$1;->f:I

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Dc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    :goto_5
    return-object v1

    :cond_c
    move-object v0, p1

    move-object v1, v2

    :goto_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p1, v2, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_d
    return-object p1
.end method

.method public final Dc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/error/account/NoShippingGroupFoundException;

    if-eqz v0, :cond_0

    const p1, 0x7f140d95

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;

    if-eqz p1, :cond_1

    const p1, 0x7f14095d

    goto :goto_0

    :cond_1
    const p1, 0x7f140967

    :goto_0
    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    const/16 v5, 0x3c

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->j:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Ec(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    :cond_1
    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    move-object v1, p1

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final H6()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final I4(Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->q:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Ec(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->r:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final J9(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final R9()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->E:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final b8()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->p:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final u4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$clearCacheAndGetOrders$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$clearCacheAndGetOrders$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

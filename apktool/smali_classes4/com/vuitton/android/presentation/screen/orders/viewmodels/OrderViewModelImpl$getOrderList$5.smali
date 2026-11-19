.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

.field public final synthetic c:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v2, p2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;

    invoke-direct {v2, p0, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->e:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->g:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->d:Ljava/lang/Throwable;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p2, p1, Lkotlin/Result$Failure;

    const/4 v4, 0x0

    if-nez p2, :cond_3

    :try_start_0
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {v7, p2, v4}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object v7

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {p1, p2, v5}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object p1

    invoke-direct {v6, v7, p1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v6

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :cond_3
    :goto_1
    instance-of p2, p1, Lkotlin/Result$Failure;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-nez p2, :cond_7

    move-object p2, p1

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v6, p2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    invoke-interface {v1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, p2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    iget-object v10, v6, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v5

    goto :goto_2

    :cond_5
    move v10, v4

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v8, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, p2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v6, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-string p2, "OngoingOrderNumber"

    invoke-interface {p0, v4, p2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p2, v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-string p2, "HistoryOrderNumber"

    invoke-interface {p0, v4, p2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_8
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v4, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$OpenMyOrdersError;

    invoke-direct {v4, p2}, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$OpenMyOrdersError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->b:Ljava/lang/Object;

    iput-object v0, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    iput-object p2, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->d:Ljava/lang/Throwable;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getOrderList$5$emit$1;->g:I

    invoke-virtual {v0, p2, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Dc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_9

    return-object v3

    :cond_9
    move-object p0, p2

    move-object p1, v0

    :goto_3
    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p1, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    new-instance p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    if-nez p1, :cond_c

    :cond_b
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_c
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    if-eqz p2, :cond_d

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    if-eqz p2, :cond_d

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    if-nez p2, :cond_e

    :cond_d
    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

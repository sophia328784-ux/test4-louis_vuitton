.class final Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$2;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$2;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p2, p1, Lkotlin/Result$Failure;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$updateOngoingOrdersLegacy$2;->b:Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    if-nez p2, :cond_3

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1
    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->b:I

    const/4 v7, 0x0

    const/16 v8, 0x3d

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;IIIIIII)Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    const-string p2, "Unable to retrieve orders list"

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->d:Lcom/vuitton/foundation/logger/Logger;

    sget-object v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImplKt;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;->U:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_5

    new-instance p2, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyOrdersError;

    invoke-direct {p2, p1}, Lcom/vuitton/android/domain/monitoring/mylv/MyLvMonitoring$Error$LoadMyOrdersError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, p2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$getOnlineStoreAppointmentList$1"
    f = "OsaListViewModelImpl.kt"
    l = {
        0x8c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v6, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$OpenMyAppointments;->a:Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$OpenMyAppointments;

    invoke-interface {p1, v3, v6}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$getOnlineStoreAppointmentList$1;->c:I

    invoke-virtual {v3, p0}, Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Required value was null."

    if-eqz v2, :cond_4

    :try_start_1
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/osa/OnlineStoreAppointments;->b:Ljava/util/List;

    if-eqz p1, :cond_3

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_5
    :goto_2
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_c

    move-object v2, p1

    check-cast v2, Lkotlin/Pair;

    iget-object v3, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v2, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lkotlin/Result$Failure;

    if-eqz v9, :cond_7

    move-object v8, v4

    :cond_7
    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz v8, :cond_6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-interface {v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v6, v2

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lkotlin/Result$Failure;

    if-eqz v9, :cond_a

    move-object v8, v4

    :cond_a
    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz v8, :cond_9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->k:Z

    if-eqz v5, :cond_c

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;-><init>(I)V

    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->k:Z

    :cond_c
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_d

    new-instance v2, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$OpenMyAppointmentsError;

    invoke-direct {v2, p1}, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$OpenMyAppointmentsError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const-string p1, "OsaListViewModelImpl"

    const-string v0, "Unable to retrieve the appointments"

    sget-object v2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v2, p1, v0, v4}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

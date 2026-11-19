.class final Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$cancelAppointment$1"
    f = "RepairBffViewModelImpl.kt"
    l = {
        0x15e,
        0x168
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->h:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->h:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->i:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->g:I

    const-string v2, "RepairBffViewModelImpl"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v1

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->f:I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v10, v4

    move v4, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->h:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$CancelRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$CancelRepair;

    invoke-interface {v1, v7, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz v7, :cond_e

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    iget-object v8, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;

    sget-object v9, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->d:Ljava/lang/String;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->f:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->g:I

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->i:Ljava/lang/String;

    invoke-virtual {v8, v7, v4, p0}, Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v7

    move-object v7, p1

    move-object p1, v4

    move v4, v6

    :goto_0
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_b

    move-object v9, p1

    check-cast v9, Lkotlin/Unit;

    const-string v9, "repairId"

    invoke-interface {v1, v8, v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v7, v6}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->k0(Z)V

    iget-object v6, v7, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->f:I

    iput v3, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$cancelAppointment$1;->g:I

    sget-object v3, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v6, v3, p0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    move-object v0, p1

    move-object p0, v1

    move-object v3, v7

    :goto_2
    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_6
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;

    if-eqz p1, :cond_8

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Store;->b:Ljava/lang/String;

    :cond_8
    sget-object p1, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->CANCELLED:Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->f:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    goto :goto_3

    :cond_9
    sget-object v1, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->NOT_LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    :goto_3
    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v6, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v6}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v7, "action"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_a

    const-string p1, "store_id"

    invoke-virtual {v6, p1, v5}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string p1, "login_status"

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, p1, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v2, v1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    move-object v1, p0

    move-object p1, v0

    move-object v7, v3

    :cond_b
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_d

    new-instance p1, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$CancelRepairError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$CancelRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object p1, v7, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "Unable to cancel appointment"

    invoke-interface {p1, v2, v0, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v7, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_c
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    :cond_d
    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

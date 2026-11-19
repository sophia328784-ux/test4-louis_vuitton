.class final Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$cancelAppointment$1"
    f = "RepairViewModelImpl.kt"
    l = {
        0x1de,
        0x1e8,
        0x1ed
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Throwable;

.field public g:I

.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->j:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->j:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->k:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->j:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->i:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->h:I

    const-string v5, "RepairViewModelImpl"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->f:Ljava/lang/Throwable;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->g:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->f:Ljava/lang/Throwable;

    check-cast v2, Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, v4

    move-object v12, v7

    move v4, v1

    move-object v7, v2

    :goto_0
    move-object v13, v8

    goto/16 :goto_2

    :cond_2
    iget v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->g:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    check-cast v11, Lkotlin/Result;

    iget-object v11, v11, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v16, v2

    move v2, v1

    move-object v1, v4

    move-object/from16 v4, v16

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v12, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$CancelRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$CancelRepair;

    invoke-interface {v4, v11, v12}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v11, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz v11, :cond_e

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceMapperKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object v2

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    move-result-object v12

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    const v14, 0x3ffffc

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->k:Ljava/lang/String;

    invoke-static {v2, v13, v12, v15, v14}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object v2

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    sget-object v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->i:Ljava/lang/Object;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->g:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->h:I

    invoke-virtual {v12, v14, v2, v0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v8, v4

    move-object v4, v11

    move-object v11, v2

    move v2, v9

    :goto_1
    sget-object v12, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v12, v11, Lkotlin/Result$Failure;

    if-nez v12, :cond_a

    move-object v12, v11

    check-cast v12, Lkotlin/Unit;

    const-string v12, "repairId"

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-interface {v8, v13, v12}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->k0(Z)V

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->i:Ljava/lang/Object;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->f:Ljava/lang/Throwable;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->g:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->h:I

    sget-object v7, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v9, v7, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v12, v1

    move-object v9, v4

    move-object v7, v11

    move v4, v2

    goto/16 :goto_0

    :goto_2
    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->I:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->CANCELLED:Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;

    iget-object v8, v12, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->f:Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-interface {v8}, Lcom/vuitton/android/domain/repository/LoginStateRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v8}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    goto :goto_3

    :cond_8
    sget-object v8, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->NOT_LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    :goto_3
    iget-object v9, v12, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v11, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v11}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v14, "action"

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v14, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_9

    const-string v2, "store_id"

    invoke-virtual {v11, v2, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v1, "login_status"

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ServiceRepair;-><init>(Ljava/util/Map;)V

    invoke-interface {v9, v5, v2}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    move-object v11, v7

    move-object v2, v12

    move-object v8, v13

    goto :goto_4

    :cond_a
    move v4, v2

    move-object v2, v1

    :goto_4
    invoke-static {v11}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v7, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$CancelRepairError;

    invoke-direct {v7, v1}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$CancelRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v8, v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->i:Ljava/lang/Object;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->c:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->e:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->f:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->g:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$cancelAppointment$1;->h:I

    invoke-static {v2, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    :goto_5
    return-object v3

    :cond_b
    move-object v0, v8

    :goto_6
    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "Unable to cancel appointment"

    invoke-interface {v3, v5, v4, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_c
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v8, v0

    :cond_d
    invoke-interface {v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b()Lkotlin/Unit;

    :cond_f
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.class final Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$rescheduleAppointment$1"
    f = "RepairViewModelImpl.kt"
    l = {
        0x200,
        0x208,
        0x214,
        0x216,
        0x21f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

.field public c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public f:Ljava/lang/Throwable;

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->i:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->i:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->i:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->h:I

    const-string v5, "RepairViewModelImpl"

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v11, :cond_3

    if-eq v4, v9, :cond_2

    if-eq v4, v8, :cond_1

    if-ne v4, v7, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->f:Ljava/lang/Throwable;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v1

    move-object v1, v3

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_1
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->g:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->f:Ljava/lang/Throwable;

    check-cast v9, Lkotlin/Unit;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v7, v4

    move-object v4, v10

    move-object v8, v13

    goto/16 :goto_2

    :cond_3
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v13, p1

    check-cast v13, Lkotlin/Result;

    iget-object v13, v13, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v14, v10

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->B:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-nez v4, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->v:Ljava/lang/String;

    if-eqz v13, :cond_10

    invoke-static {v13}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto/16 :goto_6

    :cond_7
    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v15, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$UpdateRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$UpdateRepair;

    invoke-interface {v10, v14, v15}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v14

    :goto_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v10, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

    new-instance v15, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->j:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    invoke-direct {v15, v13, v8, v7}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;->a(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->h:I

    invoke-virtual {v10, v8, v15, v0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_8

    goto/16 :goto_7

    :cond_8
    move-object/from16 v22, v14

    move-object v14, v4

    move-object/from16 v4, v22

    :goto_1
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v13, Lkotlin/Result$Failure;

    if-nez v7, :cond_b

    move-object v7, v13

    check-cast v7, Lkotlin/Unit;

    const-string v7, "repairId"

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-interface {v4, v8, v7}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->f:Ljava/lang/Throwable;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->g:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->h:I

    sget-object v8, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v7, v8, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_9

    goto/16 :goto_7

    :cond_9
    move-object v9, v1

    move-object v8, v4

    move v7, v6

    move-object v4, v13

    :goto_2
    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Z0(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->H:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v14, 0x7f140926

    invoke-direct {v13, v14, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v20, 0x0

    const/16 v21, 0x34

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v13

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v9

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->f:Ljava/lang/Throwable;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->g:I

    const/4 v7, 0x4

    iput v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->h:I

    invoke-interface {v10, v9, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_a

    goto/16 :goto_7

    :cond_a
    :goto_3
    move-object v13, v4

    move-object v4, v8

    :cond_b
    invoke-static {v13}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_d

    new-instance v8, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$UpdateRepairError;

    invoke-direct {v8, v7}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$UpdateRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->f:Ljava/lang/Throwable;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->g:I

    const/4 v8, 0x5

    iput v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->h:I

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    goto :goto_7

    :cond_c
    move-object v0, v4

    :goto_4
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "Unable to reschedule appointment"

    invoke-interface {v1, v5, v3, v7}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v0

    goto :goto_5

    :cond_d
    move-object v10, v4

    :cond_e
    :goto_5
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_f
    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    goto/16 :goto_0

    :cond_10
    :goto_6
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "Unable to reschedule appointment, appointmentId is blank"

    invoke-interface {v2, v5, v4, v12}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl$rescheduleAppointment$1;->h:I

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    :goto_7
    return-object v3

    :cond_11
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

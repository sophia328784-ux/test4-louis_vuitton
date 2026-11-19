.class final Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$rescheduleAppointment$1"
    f = "RepairBffViewModelImpl.kt"
    l = {
        0x186,
        0x192
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

.field public c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->g:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->g:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->g:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->f:I

    const-string v6, "RepairBffViewModelImpl"

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    if-eq v5, v7, :cond_1

    if-ne v5, v8, :cond_0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlin/Result;

    iget-object v10, v10, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v11, v5

    move-object v5, v7

    move-object v7, v10

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-nez v5, :cond_3

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_3
    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    if-eqz v10, :cond_a

    invoke-static {v10}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$UpdateRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$UpdateRepair;

    invoke-interface {v11, v12, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v11

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v12, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

    sget-object v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v14, v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v9, v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    invoke-direct {v13, v10, v9, v15}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->f:I

    invoke-virtual {v12, v14, v13, v0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    goto :goto_1

    :cond_6
    :goto_0
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, v7, Lkotlin/Result$Failure;

    if-nez v9, :cond_8

    move-object v9, v7

    check-cast v9, Lkotlin/Unit;

    const-string v9, "repairId"

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-interface {v11, v10, v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->d:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->e:Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl$rescheduleAppointment$1;->f:I

    sget-object v10, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v9, v10, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_7

    :goto_1
    return-object v4

    :cond_7
    move-object v4, v1

    move-object v0, v5

    move-object v5, v7

    move-object v7, v11

    :goto_2
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->Z0(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->C:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->e:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v10, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140926

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11, v8, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v13, 0x0

    const/16 v14, 0x34

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v7

    move-object v7, v5

    goto :goto_3

    :cond_8
    move-object v9, v11

    :goto_3
    invoke-static {v7}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v4, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$UpdateRepairError;

    invoke-direct {v4, v0}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$UpdateRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v9, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    const-string v4, "Unable to reschedule appointment"

    invoke-interface {v2, v6, v4, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    :cond_9
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    :goto_4
    const-string v0, "Unable to reschedule appointment, appointmentId is blank"

    const/4 v11, 0x0

    invoke-interface {v2, v6, v0, v11}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

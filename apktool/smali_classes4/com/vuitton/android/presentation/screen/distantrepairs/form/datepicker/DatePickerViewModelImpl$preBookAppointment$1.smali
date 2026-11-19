.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$preBookAppointment$1"
    f = "DatePickerViewModelImpl.kt"
    l = {
        0xdf,
        0xea,
        0xed
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

.field public e:Ljava/lang/Throwable;

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->g:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->f:I

    const/4 v9, 0x3

    const/4 v1, 0x1

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v11, :cond_1

    if-ne v0, v9, :cond_0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->e:Ljava/lang/Throwable;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_1
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    check-cast v0, Ljava/lang/String;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->c:Ljava/lang/Object;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$PrebookRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$PrebookRepair;

    invoke-interface {v0, v2, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v13

    const-string v0, "availabilityId"

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    invoke-virtual {v13, v2, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethodKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    :try_start_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/appointment/PrebookContext;->CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/appointment/PrebookContext;

    iput-object v13, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v12, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->c:Ljava/lang/Object;

    iput v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->f:I

    move-object v1, v3

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;ZLcom/vuitton/foundation/model/domain/model/appointment/PrebookContext;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v8, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object v1, v13

    :goto_0
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v13

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v1, v13

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v3, "appointmentId"

    invoke-interface {v1, v2, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v10, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->e:Ljava/lang/String;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    invoke-direct {v13, v2, v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V

    invoke-interface {v3, v4, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->q:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v3, Lkotlin/Result;

    invoke-direct {v3, v10}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->c:Ljava/lang/Object;

    iput-object v12, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iput v11, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->f:I

    invoke-interface {v2, v3, v5}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v3, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$PrebookRepairError;

    invoke-direct {v3, v2}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$PrebookRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->r:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v13, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140a5a

    invoke-direct {v14, v4, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v17, 0x0

    const/16 v18, 0x3c

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v4

    iput-object v1, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v0, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->c:Ljava/lang/Object;

    iput-object v6, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iput-object v2, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->e:Ljava/lang/Throwable;

    iput v9, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl$preBookAppointment$1;->f:I

    invoke-interface {v3, v4, v5}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    :goto_4
    return-object v8

    :cond_9
    move-object v0, v2

    :goto_5
    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "DatePickerViewModelImpl"

    const-string v4, "Unable to prebook appointment"

    invoke-interface {v2, v3, v4, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    move-object v0, v1

    :cond_b
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v7, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

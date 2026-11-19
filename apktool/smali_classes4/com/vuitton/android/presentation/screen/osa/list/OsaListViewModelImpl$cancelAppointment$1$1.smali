.class final Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;
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
    c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$cancelAppointment$1$1"
    f = "OsaListViewModelImpl.kt"
    l = {
        0xc6,
        0xce
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->f:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->f:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->g:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->f:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->e:I

    const-string v8, "OsaListViewModelImpl"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v6, :cond_2

    if-eq v6, v9, :cond_1

    if-ne v6, v10, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->c:Ljava/lang/Object;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Lkotlin/Result;

    iget-object v6, v6, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->j:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$CancelAppointment;->a:Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Action$CancelAppointment;

    invoke-interface {v6, v12, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v6

    const-string v12, "appointmentId"

    invoke-virtual {v6, v2, v12}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->e:I

    invoke-virtual {v12, v2, v0}, Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_3

    goto/16 :goto_4

    :cond_3
    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    :goto_0
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, v6, Lkotlin/Result$Failure;

    if-nez v9, :cond_b

    move-object v9, v6

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/osa/CancelAppointmentResponseItem;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean v12, v9, Lcom/vuitton/foundation/model/domain/model/osa/CancelAppointmentResponseItem;->a:Z

    if-eqz v12, :cond_a

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-eqz v9, :cond_4

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->a:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v9, v11

    :goto_1
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v11

    :goto_2
    sget-object v12, Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;->CANCELLED:Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v13}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v13

    if-eqz v13, :cond_6

    sget-object v13, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    goto :goto_3

    :cond_6
    sget-object v13, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->NOT_LOGGED:Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;

    :goto_3
    iget-object v14, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v15, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v15}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v7, "action"

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/tracking/OnlineStoreAppointmentActions;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v7, v12}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    const-string v7, "appointment_reason"

    invoke-virtual {v15, v7, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v9, :cond_8

    const-string v1, "store_id"

    invoke-virtual {v15, v1, v9}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v1, "login_status"

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/tracking/LoggedUserStatus;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v1, v7}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object v1

    new-instance v7, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OnlineStoreAppointment;

    invoke-direct {v7, v1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OnlineStoreAppointment;-><init>(Ljava/util/Map;)V

    invoke-interface {v14, v8, v7}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;->b:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->c:Ljava/lang/Object;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->d:Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$cancelAppointment$1$1;->e:I

    sget-object v7, Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;

    invoke-virtual {v1, v7, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_9

    :goto_4
    return-object v5

    :cond_9
    move-object v0, v2

    move-object v1, v3

    move-object v2, v6

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140f30

    invoke-direct {v5, v6, v11, v10, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$showSuccessNotification$1;

    invoke-direct {v7, v1, v5, v11}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$showSuccessNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v6, v11, v11, v7, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object v6, v2

    move-object v2, v0

    goto :goto_6

    :cond_a
    const/4 v1, 0x3

    iget-object v0, v9, Lcom/vuitton/foundation/model/domain/model/osa/CancelAppointmentResponseItem;->e:Ljava/lang/String;

    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v5

    new-instance v7, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$showErrorNotification$1;

    invoke-direct {v7, v3, v0, v11}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v5, v11, v11, v7, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_b
    :goto_6
    invoke-static {v6}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$CancelAppointmentError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/osa/OSAMonitoring$Error$CancelAppointmentError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, ""

    :cond_c
    invoke-static {v3}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$showErrorNotification$1;

    invoke-direct {v5, v3, v1, v11}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl$showErrorNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v4, v11, v11, v5, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v3, "Unable to cancel appointment"

    invoke-virtual {v1, v8, v3, v0}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    invoke-interface {v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

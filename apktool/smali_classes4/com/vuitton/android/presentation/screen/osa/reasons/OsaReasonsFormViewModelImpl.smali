.class public final Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B1\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;",
        "getAppointmentReasonListUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final b:Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;

.field public final c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Ljava/lang/String;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Ljava/lang/String;

.field public final l:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;)V
    .locals 10
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;

    iget-object p2, p3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v4, "OSA_REASON"

    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->i:Ljava/lang/String;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v4, "ORIGIN"

    invoke-virtual {p1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->k:Ljava/lang/String;

    const/4 p1, 0x6

    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    const/4 v4, 0x0

    aput-object p3, p1, v4

    const/4 p3, 0x1

    aput-object v3, p1, p3

    const/4 p3, 0x2

    aput-object p5, p1, p3

    const/4 p3, 0x3

    aput-object v1, p1, p3

    const/4 p5, 0x4

    aput-object p2, p1, p5

    const/4 p2, 0x5

    aput-object v2, p1, p2

    new-instance p2, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$special$$inlined$combine$1;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    const/16 v8, 0x3f

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;-><init>(ZZLjava/util/List;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, p1, p5, v1}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$1;

    invoke-direct {p2, p4, p0, v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$1;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, v0, p2, p3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v4, p1, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;

    if-eqz v4, :cond_0

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->d:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->c:Ljava/util/List;

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->c:Ljava/util/List;

    check-cast v6, Ljava/util/List;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->b:Ljava/lang/Object;

    check-cast v6, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;

    iput-object v7, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->b:Ljava/lang/Object;

    iput v10, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    invoke-virtual {p1, v4}, Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_5

    goto/16 :goto_9

    :cond_5
    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v6

    :goto_3
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_a

    move-object v6, p1

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object p1, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->b:Ljava/lang/Object;

    move-object v13, v6

    check-cast v13, Ljava/util/List;

    iput-object v13, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->c:Ljava/util/List;

    iput v9, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    invoke-interface {v3, v12, v4}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_6

    goto/16 :goto_9

    :cond_6
    move-object v9, p1

    :goto_4
    check-cast v6, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {p1, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;)Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->zc(Ljava/lang/String;)Z

    move-result p1

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz p1, :cond_8

    invoke-virtual {p0, v11}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->G4(Z)V

    goto :goto_6

    :cond_8
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, p1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_9
    :goto_6
    move-object p1, v9

    :cond_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_b

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->b:Ljava/lang/Object;

    iput-object v7, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->c:Ljava/util/List;

    iput v8, v4, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$getOsaReasons$1;->f:I

    invoke-interface {v3, v6, v4}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_b

    goto :goto_9

    :cond_b
    :goto_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    :cond_c
    move v10, v11

    goto :goto_8

    :cond_d
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    :goto_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_9
    return-object v5
.end method


# virtual methods
.method public final C7()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final G4(Z)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;

    invoke-direct {v1, v0, p1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final W3(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->zc(Ljava/lang/String;)Z

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$setPrefilledReason$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl$setPrefilledReason$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final e4()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->PDP:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final r8(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final zc(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    invoke-static {v3, p1, v2}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

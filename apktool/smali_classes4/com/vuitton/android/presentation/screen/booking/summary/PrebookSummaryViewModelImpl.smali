.class public final Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bi\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatchers",
        "Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;",
        "getPreBookSummaryUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;",
        "addPreBookUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;",
        "updatePreBookUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;",
        "deletePreBookUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;",
        "deleteAllPrebooksUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;",
        "confirmPreBookUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;

.field public final g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final h:Lcom/vuitton/foundation/logger/Logger;

.field public final i:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final j:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final k:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final l:Lkotlinx/coroutines/flow/SharedFlow;

.field public final m:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final n:Lkotlinx/coroutines/flow/SharedFlow;

.field public final o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/StateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/StateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/StateFlow;

.field public final v:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->h:Lcom/vuitton/foundation/logger/Logger;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->j:Lcom/vuitton/android/domain/monitoring/Monitor;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x5

    invoke-static {p2, p3, p4, p5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p6

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->k:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p6}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p6

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {p2, p3, p4, p5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlow;

    iget-object p2, p12, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Loading;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->q:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p2, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->s:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->v:Lkotlinx/coroutines/internal/ContextScope;

    return-void
.end method


# virtual methods
.method public final A5(Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExitWarning;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final E7()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->i:Ljava/time/Instant;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExpiredPrebook;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/SummaryBottomSheet$ExpiredPrebook;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->k:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPersonalInfo;->a:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToPersonalInfo;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final Ib()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$deleteAllPrebooks$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$deleteAllPrebooks$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->v:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final J4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V
    .locals 9

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$SummaryScreen;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$SummaryScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "booking_summary"

    const-string v4, "booking_summary"

    const-string v5, "booking"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ModifyEvent;->a:Ljava/lang/String;

    const-string v0, "modify"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteIntentionEvent;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteIntentionEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteIntentionEvent;->a:Ljava/lang/String;

    const-string v0, "delete_intention"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$DeleteConfirmationEvent;->a:Ljava/lang/String;

    const-string v0, "delete_confirmation"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;->a:Ljava/lang/String;

    const-string v0, "extend_your_experience"

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseIntentionEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseIntentionEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string p1, "close_intention"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseAbortedEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseAbortedEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "close_aborted"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseConfirmedEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$CloseConfirmedEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "close_confirmed"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ContinueEvent;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ContinueEvent;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "continue"

    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModelKt;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final Sa(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Y8()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$handlePrebookExpiration$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$handlePrebookExpiration$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->q:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final e()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->u:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final n3(Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$confirm$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$confirm$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lcom/vuitton/foundation/model/domain/model/booking/PreBookConfirmForm;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final q5()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final qc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final t4()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->s:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final w4(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-static {v1, v2, v4}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;ZI)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$deletePreBook$1;

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$deletePreBook$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final y()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->l:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

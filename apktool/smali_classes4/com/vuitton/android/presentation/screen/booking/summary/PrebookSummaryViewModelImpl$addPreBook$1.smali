.class final Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;
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
    c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$addPreBook$1"
    f = "PrebookSummaryViewModelImpl.kt"
    l = {
        0x6c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->c:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->j:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v3, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$PrebookExperience;->a:Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$PrebookExperience;

    invoke-interface {p1, v1, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "experienceType"

    invoke-virtual {p1, v5, v6}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-result-object v3

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$addPreBook$1;->c:I

    invoke-virtual {v5, v3, p0}, Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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

    if-nez v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->k:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;->a:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->h:Lcom/vuitton/foundation/logger/Logger;

    sget v2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImplKt;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$PrebookExperienceError;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$PrebookExperienceError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->ERROR:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/booking/common/BookingErrorExtKt;->a(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

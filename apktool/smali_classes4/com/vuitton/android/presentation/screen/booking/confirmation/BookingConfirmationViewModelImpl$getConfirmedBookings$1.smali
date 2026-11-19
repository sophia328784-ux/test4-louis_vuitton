.class final Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;
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
    c = "com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl$getConfirmedBookings$1"
    f = "BookingConfirmationViewModelImpl.kt"
    l = {
        0x2b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->d:Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->d:Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->d:Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->c:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

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

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadExperienceConfirmationPage;->a:Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$LoadExperienceConfirmationPage;

    invoke-interface {p1, v3, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl$getConfirmedBookings$1;->c:I

    invoke-virtual {v3, p0}, Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/booking/Booking;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Success;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Success;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/booking/Booking;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ConfirmationScreen;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;->ya(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;)V

    :cond_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadExperienceConfirmationPageError;

    invoke-direct {v0, p1}, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$LoadExperienceConfirmationPageError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Error;->a:Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationViewState$Error;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

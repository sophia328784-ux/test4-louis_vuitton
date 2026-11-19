.class final Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;
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
    c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$updateBooking$1"
    f = "BookingListViewModelImpl.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->c:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->g:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$ModifyExperience;->a:Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$ModifyExperience;

    invoke-interface {p1, v4, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    const-string v4, "bookingId"

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v7, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->e:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->a()Ljava/lang/String;

    move-result-object v8

    const-string v9, "experienceType"

    invoke-virtual {p1, v8, v9}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-result-object v4

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$updateBooking$1;->c:I

    invoke-virtual {v8, v7, v4, p0}, Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_2

    return-object v3

    :cond_2
    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    move-object v3, p1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/booking/Booking;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v4, v6, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/List;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;->b:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v6, v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingUpdated;->a:Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingUpdated;

    invoke-virtual {v3, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140448

    const/4 v4, 0x2

    invoke-direct {v7, v3, v5, v4, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x0

    const/16 v11, 0x3c

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->e:Lcom/vuitton/foundation/logger/Logger;

    sget v4, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->x:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$ModifyExperienceError;

    invoke-direct {v3, p1}, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$ModifyExperienceError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->ERROR:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/booking/common/BookingErrorExtKt;->a(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.class final Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;
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
    c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$deleteBooking$1"
    f = "BookingListViewModelImpl.kt"
    l = {
        0xac
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->d:Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->c:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v5, v6, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->g:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->i:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v9, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$CancelExperience;->a:Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Action$CancelExperience;

    invoke-interface {v5, v8, v9}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    const-string v8, "bookingId"

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->e:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    invoke-virtual {v11, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_0

    :cond_3
    move-object v10, v7

    :goto_0
    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    if-eqz v10, :cond_4

    iget-object v8, v10, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;->a()Ljava/lang/String;

    move-result-object v8

    const-string v10, "experienceType"

    invoke-virtual {v5, v8, v10}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl$deleteBooking$1;->c:I

    invoke-virtual {v8, v9, p0}, Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v4, :cond_5

    return-object v4

    :cond_5
    move-object v4, p0

    move-object p0, v5

    :goto_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v4, Lkotlin/Result$Failure;

    const/4 v6, 0x2

    if-nez v5, :cond_b

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;

    :cond_6
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/util/List;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;->a:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/booking/Booking;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/booking/Booking;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v2, v8, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_8
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingList;->b:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingAdditional;)Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    invoke-interface {v8, v2, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_a
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/booking/list/models/ExperienceBottomSheet;

    invoke-interface {v2, v5, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->r:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingDeleted;->a:Lcom/vuitton/android/presentation/screen/booking/list/BookingListNavigationEvent$BookingDeleted;

    invoke-virtual {v2, v5}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f1403ed

    invoke-direct {v9, v2, v7, v6, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->e:Lcom/vuitton/foundation/logger/Logger;

    sget v5, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->x:I

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$CancelExperienceError;

    invoke-direct {v4, v2}, Lcom/vuitton/android/domain/monitoring/booking/BookingMonitoring$Error$CancelExperienceError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->IDLE:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140967

    invoke-direct {v9, v0, v7, v6, v7}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_c
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

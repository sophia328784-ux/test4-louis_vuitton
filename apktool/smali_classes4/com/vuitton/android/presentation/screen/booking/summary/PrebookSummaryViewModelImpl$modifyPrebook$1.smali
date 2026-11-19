.class final Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;
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
    c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$modifyPrebook$1"
    f = "PrebookSummaryViewModelImpl.kt"
    l = {
        0x80
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->c:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->c:Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-result-object v3

    iput v5, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->b:I

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$modifyPrebook$1;->d:Ljava/lang/String;

    invoke-virtual {p1, v5, v3, p0}, Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    move-result-object v6

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->k:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;->a:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookNavigationEvent$NavigateToBookingSummary;

    invoke-virtual {p1, v2}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140448

    const/4 v2, 0x2

    invoke-direct {v6, p1, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->h:Lcom/vuitton/foundation/logger/Logger;

    sget v2, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImplKt;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->ERROR:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/booking/common/BookingErrorExtKt;->a(Ljava/lang/Throwable;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p0

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

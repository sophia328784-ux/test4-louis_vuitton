.class final Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;
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
    c = "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl$getPrebookSummary$1"
    f = "PrebookSummaryViewModelImpl.kt"
    l = {
        0x5c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->d:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->c:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    instance-of v3, p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    if-eqz v3, :cond_2

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    const/4 v3, 0x0

    const/4 v5, 0x5

    invoke-static {p1, v3, v5}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;ZI)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    move-result-object p1

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Loading;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl$getPrebookSummary$1;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_4

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/booking/PreBookSummary;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->h:Lcom/vuitton/foundation/logger/Logger;

    sget v1, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImplKt;->a:I

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Error;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Error;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

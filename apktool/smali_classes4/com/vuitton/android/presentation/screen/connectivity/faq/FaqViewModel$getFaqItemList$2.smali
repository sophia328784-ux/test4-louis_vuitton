.class final Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
    c = "com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel$getFaqItemList$2"
    f = "FaqViewModel.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$displayItemList$1;

    invoke-direct {p0, v3, p1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$displayItemList$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v3, v2, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

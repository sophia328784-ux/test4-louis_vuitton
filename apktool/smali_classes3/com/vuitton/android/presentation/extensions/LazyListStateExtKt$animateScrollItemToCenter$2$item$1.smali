.class final Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;
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
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
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
    c = "com.vuitton.android.presentation.extensions.LazyListStateExtKt$animateScrollItemToCenter$2$item$1"
    f = "LazyListStateExt.kt"
    l = {
        0x43
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(ILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iput p1, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->d:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget p0, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->d:I

    invoke-direct {p1, p0, v0, p2}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;-><init>(ILandroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lvj;

    iget-object v1, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->c:Landroidx/compose/foundation/lazy/LazyListState;

    iget v3, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->d:I

    invoke-direct {p1, v1, v3, v2}, Lvj;-><init>(Landroidx/compose/foundation/lazy/LazyListState;II)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->m(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    iput v2, p0, Lcom/vuitton/android/presentation/extensions/LazyListStateExtKt$animateScrollItemToCenter$2$item$1;->b:I

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method

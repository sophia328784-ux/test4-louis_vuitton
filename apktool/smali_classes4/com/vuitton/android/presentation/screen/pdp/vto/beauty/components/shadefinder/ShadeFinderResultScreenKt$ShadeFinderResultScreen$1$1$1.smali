.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1"
    f = "ShadeFinderResultScreen.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroidx/compose/runtime/MutableIntState;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->e:Landroidx/compose/runtime/MutableIntState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->f:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->e:Landroidx/compose/runtime/MutableIntState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->f:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->d:Ljava/util/List;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lu2;

    const/16 v1, 0x10

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->c:Landroidx/compose/foundation/pager/PagerState;

    invoke-direct {p1, v3, v1}, Lu2;-><init>(Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->m(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->k(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->e:Landroidx/compose/runtime/MutableIntState;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->d:Ljava/util/List;

    invoke-direct {v1, v5, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1$2;-><init>(Ljava/util/List;Landroidx/compose/runtime/MutableIntState;Lkotlin/jvm/functions/Function1;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1;->b:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

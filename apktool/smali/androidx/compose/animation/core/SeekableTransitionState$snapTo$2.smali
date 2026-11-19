.class final Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
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
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.SeekableTransitionState$snapTo$2"
    f = "Transition.kt"
    l = {
        0x1d1
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/compose/animation/core/SeekableTransitionState;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    iput-object p3, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->e:Landroidx/compose/animation/core/Transition;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;

    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->d:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->e:Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v0, p0, v2, v1, p1}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->b:I

    const/4 v4, 0x1

    iget-object v5, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->e:Landroidx/compose/animation/core/Transition;

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Landroidx/compose/animation/core/SeekableTransitionState;->s:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    invoke-virtual {v0}, Landroidx/compose/animation/core/SeekableTransitionState;->l()V

    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, v0, Landroidx/compose/animation/core/SeekableTransitionState;->m:J

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->p(F)V

    iget-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object v6, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->d:Ljava/lang/Object;

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/high16 v7, -0x3fc00000    # -3.0f

    if-eqz v3, :cond_2

    const/high16 v3, -0x3f800000    # -4.0f

    goto :goto_0

    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, -0x3f600000    # -5.0f

    goto :goto_0

    :cond_3
    move v3, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroidx/compose/animation/core/Transition;->r(Ljava/lang/Object;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Landroidx/compose/animation/core/Transition;->p(J)V

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->p(F)V

    invoke-virtual {v0, v6}, Landroidx/compose/animation/core/SeekableTransitionState;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/Transition;->l(F)V

    cmpg-float p1, v3, v7

    if-nez p1, :cond_4

    iput v4, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->b:I

    invoke-static {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState;->i(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->k()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

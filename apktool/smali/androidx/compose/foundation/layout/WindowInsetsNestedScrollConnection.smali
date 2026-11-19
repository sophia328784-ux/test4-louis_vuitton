.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\'\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "Landroid/view/WindowInsetsAnimationControlListener;",
        "Landroidx/compose/foundation/layout/AndroidWindowInsets;",
        "windowInsets",
        "Landroid/view/View;",
        "view",
        "Landroidx/compose/foundation/layout/SideCalculator;",
        "sideCalculator",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "<init>",
        "(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroid/view/View;Landroidx/compose/foundation/layout/SideCalculator;Landroidx/compose/ui/unit/Density;)V",
        "foundation-layout"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

.field public final c:Landroid/view/View;

.field public final d:Landroidx/compose/foundation/layout/SideCalculator;

.field public final e:Landroidx/compose/ui/unit/Density;

.field public f:Landroid/view/WindowInsetsAnimationController;

.field public g:Z

.field public final h:Landroid/os/CancellationSignal;

.field public i:F

.field public j:Lkotlinx/coroutines/Job;

.field public k:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroid/view/View;Landroidx/compose/foundation/layout/SideCalculator;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->c:Landroid/view/View;

    iput-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    iput-object p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->e:Landroidx/compose/ui/unit/Density;

    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->h:Landroid/os/CancellationSignal;

    return-void
.end method

.method public static final a(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;F)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-interface {p0, v1, p1}, Landroidx/compose/foundation/layout/SideCalculator;->c(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A0(IJJ)J
    .locals 0

    const/16 p1, 0x20

    shr-long p1, p4, p1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    const-wide p2, 0xffffffffL

    and-long/2addr p2, p4

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    invoke-interface {p3, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->a(FF)F

    move-result p1

    invoke-virtual {p0, p1, p4, p5}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->e(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final P(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    move-result p1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    move-result p2

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    invoke-interface {v0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->a(FF)F

    move-result v4

    const/4 v5, 0x1

    move-object v6, p5

    check-cast v6, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object v1, p0

    move-wide v2, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d(JFZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    iget-object v1, v1, Landroidx/compose/foundation/layout/AndroidWindowInsets;->d:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$animationEnded$1;->b:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$animationEnded$1;

    invoke-interface {v1, v0, v2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;

    invoke-direct {v2}, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;-><init>()V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g:Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$dispose$1;->b:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$dispose$1;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_2
    return-void
.end method

.method public final d(JFZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v5, p0

    move/from16 v7, p3

    move/from16 v0, p4

    move-object/from16 v1, p5

    instance-of v2, v1, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    iget v3, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->g:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->g:I

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    invoke-direct {v2, v5, v1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->e:Ljava/lang/Object;

    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->g:I

    iget-object v13, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v14, 0x2

    const-wide/16 v3, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v15, :cond_3

    if-eq v2, v14, :cond_2

    if-ne v2, v9, :cond_1

    iget-wide v2, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->b:J

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v0, v10

    goto/16 :goto_7

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget-wide v2, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->b:J

    iget-object v0, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_3
    iget v0, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->c:F

    iget-wide v6, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->b:J

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v1

    move v1, v0

    move-object v0, v14

    move-wide v14, v3

    goto/16 :goto_4

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_5

    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;

    invoke-direct {v2}, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;-><init>()V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_5
    iput-object v8, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    iput v10, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i:F

    cmpg-float v1, v7, v10

    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    iget-object v1, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    iget-object v2, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    if-nez v1, :cond_8

    iget-object v1, v2, Landroidx/compose/foundation/layout/AndroidWindowInsets;->d:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v0, :cond_8

    :cond_7
    sget-object v0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v0, v3, v4}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object v0

    :cond_8
    move-wide/from16 v0, p1

    iput-wide v0, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->b:J

    iput v7, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->c:F

    iput v15, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->g:I

    iget-object v6, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    if-nez v6, :cond_a

    new-instance v6, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v11}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {v6, v3, v15}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iput-object v6, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    iget-boolean v3, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g:Z

    if-nez v3, :cond_9

    iput-boolean v15, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g:Z

    iget-object v3, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    if-eqz v3, :cond_9

    iget v2, v2, Landroidx/compose/foundation/layout/AndroidWindowInsets;->a:I

    const/4 v4, 0x0

    move-object/from16 v18, v6

    move-object v6, v5

    iget-object v5, v6, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->h:Landroid/os/CancellationSignal;

    move v1, v2

    move-object v0, v3

    const-wide/16 v2, -0x1

    const-wide/16 v14, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    move-object v5, v6

    goto :goto_2

    :cond_9
    move-object/from16 v18, v6

    const-wide/16 v14, 0x0

    :goto_2
    invoke-virtual/range {v18 .. v18}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_a
    move-wide v14, v3

    move-object v1, v6

    :goto_3
    if-ne v1, v12, :cond_b

    goto/16 :goto_9

    :cond_b
    move-object v0, v1

    move v1, v7

    move-wide/from16 v6, p1

    :goto_4
    move-object v4, v0

    check-cast v4, Landroid/view/WindowInsetsAnimationController;

    if-nez v4, :cond_c

    sget-object v0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v0, v14, v15}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object v0

    :cond_c
    invoke-interface {v4}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;)I

    move-result v3

    invoke-interface {v4}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-interface {v13, v0}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;)I

    move-result v0

    invoke-interface {v4}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-interface {v13, v2}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;)I

    move-result v2

    cmpg-float v17, v1, v10

    const/16 v18, 0x0

    if-gtz v17, :cond_d

    if-eq v2, v3, :cond_e

    :cond_d
    cmpl-float v17, v1, v10

    if-ltz v17, :cond_10

    if-ne v2, v0, :cond_10

    :cond_e
    if-ne v2, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_5

    :cond_f
    move/from16 v0, v18

    :goto_5
    invoke-interface {v4, v0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    iput-object v8, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    sget-object v0, Landroidx/compose/ui/unit/Velocity;->b:Landroidx/compose/ui/unit/Velocity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v0, v14, v15}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object v0

    :cond_10
    move-wide v7, v6

    new-instance v6, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;

    iget-object v14, v5, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->e:Landroidx/compose/ui/unit/Density;

    invoke-direct {v6, v14}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    int-to-float v14, v2

    invoke-virtual {v6, v1}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->f(F)F

    move-result v15

    add-float/2addr v14, v15

    int-to-float v15, v3

    sub-float v17, v14, v15

    sub-int v10, v0, v3

    int-to-float v10, v10

    div-float v17, v17, v10

    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, v17, v10

    if-lez v10, :cond_11

    const/4 v10, 0x1

    goto :goto_6

    :cond_11
    move/from16 v10, v18

    :goto_6
    move/from16 v16, v3

    if-eqz v10, :cond_12

    move v3, v0

    :cond_12
    int-to-float v9, v0

    cmpl-float v9, v14, v9

    if-gtz v9, :cond_13

    cmpg-float v9, v14, v15

    if-gez v9, :cond_14

    :cond_13
    move-wide v14, v7

    goto :goto_8

    :cond_14
    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;

    const/4 v6, 0x0

    move-wide v14, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;-><init>(FIILandroid/view/WindowInsetsAnimationController;Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/Continuation;Z)V

    iput-wide v14, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->b:J

    const/4 v1, 0x3

    iput v1, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->g:I

    invoke-static {v0, v11}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_15

    goto :goto_9

    :cond_15
    move-wide v2, v14

    const/4 v0, 0x0

    :goto_7
    invoke-interface {v13, v0, v2, v3}, Landroidx/compose/foundation/layout/SideCalculator;->f(FJ)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object v2

    :goto_8
    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    move-object v5, v4

    move v4, v0

    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2;

    const/4 v8, 0x0

    move-object/from16 v7, p0

    move/from16 v3, v16

    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2;-><init>(FIIILandroid/view/WindowInsetsAnimationController;Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$FloatRef;Z)V

    iput-object v9, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-wide v14, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->b:J

    const/4 v1, 0x2

    iput v1, v11, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->g:I

    invoke-static {v0, v11}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_16

    :goto_9
    return-object v12

    :cond_16
    move-object v0, v9

    move-wide v2, v14

    :goto_a
    iget v0, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    invoke-interface {v13, v0, v2, v3}, Landroidx/compose/foundation/layout/SideCalculator;->f(FJ)J

    move-result-wide v0

    new-instance v2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object v2
.end method

.method public final e(FJ)J
    .locals 13

    move-wide v7, p2

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/WindowInsetsAnimationCancelledException;-><init>()V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->j:Lkotlinx/coroutines/Job;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    iget-object v5, v2, Landroidx/compose/foundation/layout/AndroidWindowInsets;->d:Landroidx/compose/runtime/MutableState;

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v5}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    cmpl-float v9, p1, v1

    const/4 v10, 0x1

    if-lez v9, :cond_2

    move v11, v10

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    if-ne v5, v11, :cond_3

    if-nez v0, :cond_3

    :goto_1
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v3

    :cond_3
    iget-object v11, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    if-nez v0, :cond_5

    iput v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i:F

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g:Z

    if-nez v0, :cond_4

    iput-boolean v10, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g:Z

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v1, v2, Landroidx/compose/foundation/layout/AndroidWindowInsets;->a:I

    const/4 v4, 0x0

    iget-object v5, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->h:Landroid/os/CancellationSignal;

    const-wide/16 v2, -0x1

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/view/WindowInsetsController;->controlWindowInsetsAnimation(IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    :cond_4
    invoke-interface {v11, v7, v8}, Landroidx/compose/foundation/layout/SideCalculator;->g(J)J

    move-result-wide v0

    return-wide v0

    :cond_5
    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-interface {v11, v2}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;)I

    move-result v2

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v5

    invoke-interface {v11, v5}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;)I

    move-result v5

    invoke-interface {v0}, Landroid/view/WindowInsetsAnimationController;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object v10

    invoke-interface {v11, v10}, Landroidx/compose/foundation/layout/SideCalculator;->e(Landroid/graphics/Insets;)I

    move-result v12

    if-lez v9, :cond_6

    move v9, v5

    goto :goto_2

    :cond_6
    move v9, v2

    :goto_2
    if-ne v12, v9, :cond_7

    iput v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i:F

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v3

    :cond_7
    int-to-float v3, v12

    add-float/2addr v3, p1

    iget v4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4, v2, v5}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->i:F

    if-eq v2, v12, :cond_8

    invoke-interface {v11, v10, v2}, Landroidx/compose/foundation/layout/SideCalculator;->c(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v3, v1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    :cond_8
    invoke-interface {v11, v7, v8}, Landroidx/compose/foundation/layout/SideCalculator;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final l0(IJ)J
    .locals 2

    const/16 p1, 0x20

    shr-long v0, p2, p1

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    invoke-interface {v1, p1, v0}, Landroidx/compose/foundation/layout/SideCalculator;->d(FF)F

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->e(FJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->b()V

    return-void
.end method

.method public final onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->b()V

    return-void
.end method

.method public final onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->f:Landroid/view/WindowInsetsAnimationController;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->g:Z

    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz p2, :cond_0

    new-instance v0, Lc71;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method

.method public final y1(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d:Landroidx/compose/foundation/layout/SideCalculator;

    invoke-interface {v2, v0, v1}, Landroidx/compose/foundation/layout/SideCalculator;->d(FF)F

    move-result v6

    const/4 v7, 0x0

    move-object v8, p3

    check-cast v8, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object v3, p0

    move-wide v4, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->d(JFZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

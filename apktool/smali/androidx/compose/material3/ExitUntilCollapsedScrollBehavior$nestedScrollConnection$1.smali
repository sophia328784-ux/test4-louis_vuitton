.class public final Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;-><init>(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "material3"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;->b:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    return-void
.end method


# virtual methods
.method public final A0(IJJ)J
    .locals 4

    iget-object p0, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;->b:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    iget-object p1, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->a:Landroidx/compose/material3/TopAppBarState;

    iget-object p0, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v0

    :cond_0
    iget-object p0, p1, Landroidx/compose/material3/TopAppBarState;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result p0

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    add-float/2addr p3, p0

    iget-object p0, p1, Landroidx/compose/material3/TopAppBarState;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->w(F)V

    and-long p3, p4, v2

    long-to-int p0, p3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    const/4 p4, 0x0

    cmpg-float p3, p3, p4

    const/16 p5, 0x20

    if-ltz p3, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    cmpg-float p3, p3, p4

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpl-float p2, p2, p4

    if-lez p2, :cond_2

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    add-float/2addr p0, p3

    invoke-virtual {p1, p0}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p0

    sub-float/2addr p0, p2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, p5

    and-long p2, p3, v2

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0

    :cond_2
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v0

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p3

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p1

    sub-float/2addr p1, p0

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p2, p5

    and-long/2addr p0, v2

    or-long/2addr p0, p2

    sget-object p2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    return-wide p0
.end method

.method public final P(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;->b:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    iget-object v1, v0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->a:Landroidx/compose/material3/TopAppBarState;

    instance-of v2, p5, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;

    if-eqz v2, :cond_0

    move-object v2, p5

    check-cast v2, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;

    iget v3, v2, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->e:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;

    check-cast p5, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-direct {v2, p0, p5}, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;-><init>(Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p5, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->c:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->e:I

    const/4 v9, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v9, :cond_1

    iget-wide p0, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->b:J

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-wide p3, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->b:J

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    move-result p5

    const/4 v3, 0x0

    cmpl-float p5, p5, v3

    if-lez p5, :cond_4

    iget-object p5, v1, Landroidx/compose/material3/TopAppBarState;->b:Landroidx/compose/runtime/MutableFloatState;

    check-cast p5, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {p5, v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->w(F)V

    :cond_4
    iput-wide p3, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->b:J

    iput v4, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->e:I

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-super/range {v3 .. v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;->P(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v2, :cond_5

    goto :goto_3

    :cond_5
    move-wide p3, v6

    :goto_2
    check-cast p5, Landroidx/compose/ui/unit/Velocity;

    iget-wide p0, p5, Landroidx/compose/ui/unit/Velocity;->a:J

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    move-result p2

    iget-object p3, v0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->c:Landroidx/compose/animation/core/DecayAnimationSpec;

    iget-object p4, v0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->b:Landroidx/compose/animation/core/AnimationSpec;

    iput-wide p0, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->b:J

    iput v9, v8, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1;->e:I

    invoke-static {v1, p2, p3, p4, v8}, Landroidx/compose/material3/AppBarKt;->e(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v2, :cond_6

    :goto_3
    return-object v2

    :cond_6
    :goto_4
    check-cast p5, Landroidx/compose/ui/unit/Velocity;

    iget-wide p2, p5, Landroidx/compose/ui/unit/Velocity;->a:J

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/unit/Velocity;->e(JJ)J

    move-result-wide p0

    new-instance p2, Landroidx/compose/ui/unit/Velocity;

    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/unit/Velocity;-><init>(J)V

    return-object p2
.end method

.method public final l0(IJ)J
    .locals 5

    iget-object p0, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;->b:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;

    iget-object p1, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->a:Landroidx/compose/material3/TopAppBarState;

    iget-object p0, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p2

    long-to-int p0, v2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result v4

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    add-float/2addr p0, v4

    invoke-virtual {p1, p0}, Landroidx/compose/material3/TopAppBarState;->c(F)V

    invoke-virtual {p1}, Landroidx/compose/material3/TopAppBarState;->b()F

    move-result p0

    cmpg-float p0, v2, p0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v0

    :cond_1
    const/4 p0, 0x2

    invoke-static {p2, p3, p0, v3}, Landroidx/compose/ui/geometry/Offset;->a(JIF)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-wide v0
.end method

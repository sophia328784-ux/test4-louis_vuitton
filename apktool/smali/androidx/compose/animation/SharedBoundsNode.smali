.class public final Landroidx/compose/animation/SharedBoundsNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/ApproachLayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/animation/BoundsProvider;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/animation/SharedBoundsNode;",
        "Landroidx/compose/ui/layout/ApproachLayoutModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/modifier/ModifierLocalModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/animation/BoundsProvider;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/animation/SharedElementEntry;",
        "state",
        "<init>",
        "(Landroidx/compose/animation/SharedElementEntry;)V",
        "animation"
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
.field public p:Landroidx/compose/ui/geometry/Rect;

.field public q:Z

.field public r:Landroidx/compose/animation/SharedElementEntry;

.field public s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public final t:Landroidx/compose/ui/modifier/SingleLocalMap;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedElementEntry;)V
    .locals 3

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object v0, p1, Landroidx/compose/animation/SharedElementEntry;->n:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    sget-object v0, Landroidx/compose/animation/SharedContentNodeKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/compose/ui/modifier/SingleLocalMap;

    iget-object v0, v1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-direct {p1, v0}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ModifierLocal;)V

    iget-object v2, p1, Landroidx/compose/ui/modifier/SingleLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocal;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Check failed."

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p1, Landroidx/compose/ui/modifier/SingleLocalMap;->b:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    iget-object v1, v1, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode;->t:Landroidx/compose/ui/modifier/SingleLocalMap;

    return-void
.end method


# virtual methods
.method public final I0(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsAnimation;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->c()V

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v1

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionStateMachine;->a:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v1, v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->f(Landroidx/compose/animation/SharedElement;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    :cond_0
    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->c()J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSizeKt;->b(J)J

    move-result-wide p3

    shr-long v4, p3, v3

    long-to-int v0, v4

    and-long/2addr p3, v1

    long-to-int p3, p3

    const p4, 0x7fffffff

    if-eq v0, p4, :cond_3

    if-eq p3, p4, :cond_3

    sget-object p4, Landroidx/compose/ui/unit/Constraints;->b:Landroidx/compose/ui/unit/Constraints$Companion;

    const/4 v4, 0x0

    if-gez v0, :cond_1

    move v0, v4

    :cond_1
    if-gez p3, :cond_2

    move p3, v4

    :cond_2
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    move-result-wide p3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error: Infinite width/height is invalid. animated bounds: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p2}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/animation/BoundsAnimation;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    const-string p2, ", current bounds: "

    invoke-static {p1, p2, p0}, Llc0;->s(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    :goto_0
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget-object p3, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p3}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p3

    iget-object p3, p3, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p3}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->d()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object p3, p3, Landroidx/compose/animation/SharedElementEntry;->g:Landroidx/compose/runtime/MutableState;

    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

    iget-object p4, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p4}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p4

    iget-object p4, p4, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-object p4, p4, Landroidx/compose/animation/SharedTransitionScopeImpl;->b:Landroidx/compose/ui/layout/LookaheadScope;

    invoke-interface {p4, v0}, Landroidx/compose/ui/layout/LookaheadScope;->y(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p4

    invoke-interface {p4}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v4

    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v0, p2, Landroidx/compose/ui/layout/Placeable;->c:I

    int-to-long v6, p4

    shl-long/2addr v6, v3

    int-to-long v8, v0

    and-long/2addr v8, v1

    or-long/2addr v6, v8

    sget-object p4, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-interface {p3, v4, v5, v6, v7}, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;->a(JJ)J

    move-result-wide p3

    goto :goto_1

    :cond_5
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->c:I

    int-to-long v4, p3

    shl-long/2addr v4, v3

    int-to-long p3, p4

    and-long/2addr p3, v1

    or-long/2addr p3, v4

    sget-object v0, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    :goto_1
    shr-long v3, p3, v3

    long-to-int v0, v3

    and-long/2addr p3, v1

    long-to-int p3, p3

    new-instance p4, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;

    invoke-direct {p4, p0, p2}, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;-><init>(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, v0, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final Z1()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->i:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0}, Landroidx/compose/animation/SharedBoundsNode;->j2()V

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->b:Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a2()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl;->f:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroidx/compose/animation/SharedBoundsNode;->q:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->e(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v2

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->e(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v2

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    iget-wide v4, v0, Landroidx/compose/ui/layout/Placeable;->d:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->p:Landroidx/compose/ui/geometry/Rect;

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/compose/animation/SharedBoundsNode;->i2(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iput-object v1, v0, Landroidx/compose/animation/SharedElementEntry;->l:Landroidx/compose/animation/SharedElementEntry;

    iput-object v1, v0, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    iget-object v0, v0, Landroidx/compose/animation/SharedElementEntry;->b:Landroidx/compose/runtime/MutableState;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/animation/SharedBoundsNode;->q:Z

    return-void
.end method

.method public final b2()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->p:Landroidx/compose/ui/geometry/Rect;

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/ui/graphics/GraphicsContext;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedBoundsNode;->i2(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final d0(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    iget-object p1, p1, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->b:Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;

    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->g:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_0
    const-string p0, "Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance v0, Landroidx/compose/animation/SharedBoundsNode$measure$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/animation/SharedBoundsNode$measure$1;-><init>(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, p3, p4, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final e1()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h2()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->f:Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Error: Uninitialized LayoutCoordinates. Please make sure when using the SharedTransitionScope composable function, the modifier passed to the child content is being used, or use SharedTransitionLayout instead."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final i2(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/compose/ui/graphics/GraphicsContext;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object v0, v0, Landroidx/compose/animation/SharedElementEntry;->n:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode;->s:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v2}, Landroidx/compose/animation/SharedElementEntry;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object v3, v3, Landroidx/compose/animation/SharedElementEntry;->i:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    iget-object v4, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object v4, v4, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v5

    iget-object v5, v5, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    invoke-interface {v3, v4}, Landroidx/compose/animation/SharedTransitionScope$OverlayClip;->a(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)Landroidx/compose/ui/graphics/Path;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-object v3, v2, Landroidx/compose/animation/SharedElementEntry;->k:Landroidx/compose/ui/graphics/Path;

    iget-object v2, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object v2, v2, Landroidx/compose/animation/SharedElementEntry;->n:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v2, :cond_3

    new-instance v3, Landroidx/compose/animation/SharedBoundsNode$draw$2;

    invoke-direct {v3, p1, v1, v0}, Landroidx/compose/animation/SharedBoundsNode$draw$2;-><init>(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/animation/SharedElement;)V

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->b:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->c(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->e(JLandroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-static {p1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error: Layer is null when accessed for shared bounds/element : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    const-string v1, ",target: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", is attached: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j2()V
    .locals 12

    sget-object v0, Landroidx/compose/animation/SharedContentNodeKt;->a:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    sget-object v2, Landroidx/compose/ui/modifier/EmptyMap;->a:Landroidx/compose/ui/modifier/EmptyMap;

    iget-object v3, p0, Landroidx/compose/animation/SharedBoundsNode;->t:Landroidx/compose/ui/modifier/SingleLocalMap;

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "In order to provide locals you must override providedValues: ModifierLocalMap"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroidx/compose/ui/modifier/SingleLocalMap;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Any provided key must be initially provided in the overridden providedValues: ModifierLocalMap property. Key "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " was not found."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v3, Landroidx/compose/ui/modifier/SingleLocalMap;->a:Landroidx/compose/ui/modifier/ModifierLocal;

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "Check failed."

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :goto_1
    iget-object v2, v3, Landroidx/compose/ui/modifier/SingleLocalMap;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v2, :cond_3

    const-string v2, "ModifierLocal accessed from an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v2, :cond_4

    const-string v2, "visitAncestors called on an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_4
    iget-object v2, p0, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->f:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    :goto_2
    const/4 v4, 0x0

    if-eqz v3, :cond_f

    iget-object v5, v3, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object v5, v5, Landroidx/compose/ui/node/NodeChain;->f:Landroidx/compose/ui/Modifier$Node;

    iget v5, v5, Landroidx/compose/ui/Modifier$Node;->e:I

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    :goto_3
    if-eqz v2, :cond_d

    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_c

    move-object v5, v2

    move-object v7, v6

    :goto_4
    if-eqz v5, :cond_c

    instance-of v8, v5, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v8, :cond_5

    check-cast v5, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    invoke-interface {v5}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->s0()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/compose/ui/modifier/ModifierLocalMap;->a(Landroidx/compose/ui/modifier/ModifierLocal;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->s0()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/ui/modifier/ModifierLocalMap;->b(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    :cond_5
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_b

    instance-of v8, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v8, :cond_b

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v9, v4

    :goto_5
    const/4 v10, 0x1

    if-eqz v8, :cond_a

    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v10, :cond_6

    move-object v5, v8

    goto :goto_6

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v10, 0x10

    new-array v10, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v10, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object v5, v6

    :cond_8
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_5

    :cond_a
    if-ne v9, v10, :cond_b

    goto :goto_4

    :cond_b
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_4

    :cond_c
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->f:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_d
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->O()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v2, v3, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    if-eqz v2, :cond_e

    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->e:Landroidx/compose/ui/node/TailModifierNode;

    goto/16 :goto_2

    :cond_e
    move-object v2, v6

    goto/16 :goto_2

    :cond_f
    iget-object v0, v0, Landroidx/compose/ui/modifier/ModifierLocal;->a:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    :goto_7
    check-cast v0, Landroidx/compose/animation/SharedElementEntry;

    iput-object v0, v1, Landroidx/compose/animation/SharedElementEntry;->l:Landroidx/compose/animation/SharedElementEntry;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getGraphicsContext()Landroidx/compose/ui/graphics/GraphicsContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedBoundsNode;->i2(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    iput-boolean v4, p0, Landroidx/compose/animation/SharedBoundsNode;->q:Z

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    iput-object p0, v0, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    return-void
.end method

.method public final p1()Landroidx/compose/ui/geometry/Rect;
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/animation/SharedBoundsNode;->q:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->p:Landroidx/compose/ui/geometry/Rect;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedBoundsNode;->h2()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->f0(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;I)J

    move-result-wide v0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->e(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->d:J

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final s0()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedBoundsNode;->t:Landroidx/compose/ui/modifier/SingleLocalMap;

    return-object p0
.end method

.method public final y0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->e()V

    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->i:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

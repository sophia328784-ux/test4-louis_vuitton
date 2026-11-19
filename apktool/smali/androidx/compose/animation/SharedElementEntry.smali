.class public final Landroidx/compose/animation/SharedElementEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/LayerRenderer;
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002BG\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/animation/SharedElementEntry;",
        "Landroidx/compose/animation/LayerRenderer;",
        "Landroidx/compose/runtime/RememberObserver;",
        "Landroidx/compose/animation/SharedElement;",
        "sharedElement",
        "Landroidx/compose/animation/BoundsAnimation;",
        "boundsAnimation",
        "Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;",
        "placeholderSize",
        "",
        "renderOnlyWhenVisible",
        "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;",
        "overlayClip",
        "renderInOverlayDuringTransition",
        "Landroidx/compose/animation/SharedTransitionScope$SharedContentState;",
        "userState",
        "",
        "zIndex",
        "<init>",
        "(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V",
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
.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/runtime/MutableFloatState;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public final f:Landroidx/compose/runtime/MutableState;

.field public final g:Landroidx/compose/runtime/MutableState;

.field public final h:Landroidx/compose/runtime/MutableState;

.field public final i:Landroidx/compose/runtime/MutableState;

.field public final j:Landroidx/compose/runtime/MutableState;

.field public k:Landroidx/compose/ui/graphics/Path;

.field public l:Landroidx/compose/animation/SharedElementEntry;

.field public m:Landroidx/compose/animation/SharedBoundsNode;

.field public final n:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {p8}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p8

    iput-object p8, p0, Landroidx/compose/animation/SharedElementEntry;->c:Landroidx/compose/runtime/MutableFloatState;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p6

    invoke-static {p6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p6

    iput-object p6, p0, Landroidx/compose/animation/SharedElementEntry;->d:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->e:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->f:Landroidx/compose/runtime/MutableState;

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->g:Landroidx/compose/runtime/MutableState;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->h:Landroidx/compose/runtime/MutableState;

    invoke-static {p5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->i:Landroidx/compose/runtime/MutableState;

    invoke-static {p7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElementEntry;->n:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->c:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->a()F

    move-result p0

    return p0
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 9

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNodeDrawScope;->b:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v1, p0, Landroidx/compose/animation/SharedElementEntry;->n:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v2}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->d()J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const-wide v5, 0xffffffffL

    and-long/2addr v2, v5

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->k:Landroidx/compose/ui/graphics/Path;

    if-eqz p0, :cond_2

    sget-object v3, Landroidx/compose/ui/graphics/ClipOp;->a:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/graphics/ClipOp;->b:I

    iget-object v5, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    move-result-wide v6

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/ui/graphics/Canvas;->p()V

    :try_start_0
    iget-object v8, v5, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {v8, p0, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->c(Landroidx/compose/ui/graphics/Path;I)V

    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {p0, v4, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float p1, v4

    neg-float v0, v2

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v5, v6, v7}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    iget-object p1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v0, v4

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v5, v6, v7}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-virtual {p0, v4, v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    :try_start_4
    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p0, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float p1, v4

    neg-float v0, v2

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    return-void

    :catchall_2
    move-exception p0

    iget-object p1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->c:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    iget-object p1, p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    neg-float v0, v4

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->g(FF)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final c()Landroidx/compose/animation/BoundsAnimation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->f:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/BoundsAnimation;

    return-object p0
.end method

.method public final d()V
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/animation/SharedElement;->d:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->e()V

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->a()V

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl;->h:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    move-object v3, v1

    check-cast v3, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/LayerRenderer;

    instance-of v4, v3, Landroidx/compose/animation/SharedElementEntry;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/animation/SharedElementEntry;

    goto :goto_1

    :cond_0
    move-object v3, v6

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v6

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_2
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_5

    if-ne v2, v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->b()V

    return-void
.end method

.method public final e()Landroidx/compose/animation/SharedElement;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->e:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedElement;

    return-object p0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->h:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->d:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final i()V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->S(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/animation/SharedElement;->d:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->S(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/animation/SharedElement;->e:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->e()V

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->a()V

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl;->h:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl;->c:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Landroidx/compose/animation/SharedTransitionScopeImpl$onEntryRemoved$2$1;-><init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/SharedElementEntry;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v0, v3, v3, v2, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->b()V

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->b:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->b:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

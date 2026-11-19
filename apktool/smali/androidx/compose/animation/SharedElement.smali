.class public final Landroidx/compose/animation/SharedElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/animation/SharedElement;",
        "",
        "key",
        "Landroidx/compose/animation/SharedTransitionScopeImpl;",
        "scope",
        "<init>",
        "(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V",
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
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/compose/animation/SharedTransitionScopeImpl;

.field public final c:Landroidx/compose/animation/SharedTransitionStateMachine;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public final f:Landroidx/compose/animation/core/Animatable;

.field public g:Z

.field public final h:Lkotlin/jvm/functions/Function0;

.field public final i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    new-instance p1, Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-direct {p1, p0}, Landroidx/compose/animation/SharedTransitionStateMachine;-><init>(Landroidx/compose/animation/SharedElement;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/SharedElement;->d:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->e:Landroidx/compose/runtime/MutableState;

    new-instance v0, Landroidx/compose/animation/core/Animatable;

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 p1, 0x0

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    sget-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->f:Landroidx/compose/animation/core/TwoWayConverter;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/animation/SharedElement;->f:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/SharedElement$momentumAnimationOffset$1;-><init>(Landroidx/compose/animation/SharedElement;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->h:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/animation/SharedElement$observingVisibilityChange$1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/SharedElement$observingVisibilityChange$1;-><init>(Landroidx/compose/animation/SharedElement;)V

    iput-object p1, p0, Landroidx/compose/animation/SharedElement;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->MatchFound:Landroidx/compose/animation/StateChangeRequest;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->e:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final d()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v3}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/animation/BoundsAnimation;->b:Landroidx/compose/animation/core/Transition;

    :goto_1
    iget-object v4, v3, Landroidx/compose/animation/core/Transition;->b:Landroidx/compose/animation/core/Transition;

    if-eqz v4, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_0
    iget-object v4, v3, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    invoke-virtual {v4}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v4

    iget-object v3, v3, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElementEntry;->j()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/animation/SharedElement;->e:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->a:Landroidx/compose/animation/SharedElement;

    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->d:Landroidx/compose/runtime/MutableIntState;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_2

    if-eqz v4, :cond_2

    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->MatchFound:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    iget v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->c:I

    add-int/2addr v0, v5

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    goto :goto_1

    :cond_2
    iget-object v0, v0, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v4, :cond_4

    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->VisibleContentAbsentDuringTransition:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    iget v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->c:I

    add-int/2addr v0, v5

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->NoRequest:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v0

    iput v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->c:I

    sget-object v0, Landroidx/compose/animation/NoMatchFound;->a:Landroidx/compose/animation/NoMatchFound;

    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->b:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->b()V

    return-void
.end method

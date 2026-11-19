.class public final Landroidx/compose/animation/SharedTransitionStateMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SharedTransitionStateMachine$State;,
        Landroidx/compose/animation/SharedTransitionStateMachine$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/animation/SharedTransitionStateMachine;",
        "",
        "Landroidx/compose/animation/SharedElement;",
        "sharedElement",
        "<init>",
        "(Landroidx/compose/animation/SharedElement;)V",
        "State",
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
.field public final a:Landroidx/compose/animation/SharedElement;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public c:I

.field public final d:Landroidx/compose/runtime/MutableIntState;

.field public e:Landroidx/compose/animation/StateChangeRequest;

.field public f:Landroidx/compose/animation/BoundsProvider;

.field public final g:Landroidx/compose/runtime/MutableIntState;

.field public h:I


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedElement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->a:Landroidx/compose/animation/SharedElement;

    sget-object p1, Landroidx/compose/animation/NoMatchFound;->a:Landroidx/compose/animation/NoMatchFound;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->b:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->d:Landroidx/compose/runtime/MutableIntState;

    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->NoRequest:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->g:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->b:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedTransitionStateMachine$State;

    return-object p0
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->a:Landroidx/compose/animation/SharedElement;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    check-cast v4, Landroidx/compose/animation/SharedElementEntry;

    if-nez v4, :cond_2

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->f:Landroidx/compose/animation/BoundsProvider;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    iget-object v3, v4, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    :cond_3
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->f:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    return-void

    :cond_4
    iget v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->h:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->g:Landroidx/compose/runtime/MutableIntState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    return-void
.end method

.method public final c()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->d:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v1

    iget v2, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->c:I

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->a:Landroidx/compose/animation/SharedElement;

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v0

    iput v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->c:I

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    sget-object v1, Landroidx/compose/animation/SharedTransitionStateMachine$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {v4}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    iget-object v5, v5, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    iget-object v6, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->f:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v0, Landroidx/compose/animation/NoMatchFound;->a:Landroidx/compose/animation/NoMatchFound;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->h()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->f:Landroidx/compose/animation/BoundsProvider;

    invoke-virtual {v0, v1}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->g(Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v0, Landroidx/compose/animation/NoMatchFound;->a:Landroidx/compose/animation/NoMatchFound;

    :goto_1
    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->b:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v0, Landroidx/compose/animation/StateChangeRequest;->NoRequest:Landroidx/compose/animation/StateChangeRequest;

    iput-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->e:Landroidx/compose/animation/StateChangeRequest;

    :cond_6
    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->g:Landroidx/compose/runtime/MutableIntState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v1

    iget v2, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->h:I

    if-eq v1, v2, :cond_e

    iget-object v1, v4, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v1}, Landroidx/compose/animation/SharedTransitionScopeImpl;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    move-object v5, v2

    :goto_3
    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v5, :cond_c

    iget-object v2, v5, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    goto :goto_6

    :cond_9
    invoke-virtual {v4}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_4
    if-ge v3, v4, :cond_b

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    move-object v5, v2

    :goto_5
    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v5, :cond_c

    iget-object v2, v5, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    :cond_c
    :goto_6
    iget-object v1, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->f:Landroidx/compose/animation/BoundsProvider;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iput-object v2, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->f:Landroidx/compose/animation/BoundsProvider;

    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v0

    iput v0, p0, Landroidx/compose/animation/SharedTransitionStateMachine;->h:I

    :cond_e
    return-void
.end method

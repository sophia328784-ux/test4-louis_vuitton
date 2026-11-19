.class public final Landroidx/compose/animation/ActiveMatchFoundConfigPending;
.super Landroidx/compose/animation/SharedTransitionStateMachine$State;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/animation/ActiveMatchFoundConfigPending;",
        "Landroidx/compose/animation/SharedTransitionStateMachine$State;",
        "Landroidx/compose/animation/BoundsProvider;",
        "targetBoundsProviderBeforeConfig",
        "Landroidx/compose/animation/TargetData;",
        "targetData",
        "Landroidx/compose/ui/geometry/Rect;",
        "currentBounds",
        "<init>",
        "(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V",
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
.field public a:Landroidx/compose/animation/BoundsProvider;

.field public final b:Landroidx/compose/animation/TargetData;

.field public final c:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/SharedTransitionStateMachine$State;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->a:Landroidx/compose/animation/BoundsProvider;

    iput-object p2, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->b:Landroidx/compose/animation/TargetData;

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;-><init>(Landroidx/compose/animation/BoundsProvider;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;JJJ)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 10

    iget-object v0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->b:Landroidx/compose/animation/TargetData;

    if-nez v0, :cond_0

    new-instance v1, Landroidx/compose/animation/TargetData;

    invoke-static/range {p5 .. p8}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v4

    const/4 v8, 0x0

    move-wide v2, p3

    move-wide/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Landroidx/compose/animation/TargetData;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->a:Landroidx/compose/animation/BoundsProvider;

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v1, :cond_2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_1
    check-cast v6, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v6, :cond_3

    iget-object p0, v6, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    goto :goto_2

    :cond_3
    move-object p0, v5

    :cond_4
    :goto_2
    invoke-static {p1, p0}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->a(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    if-nez v1, :cond_5

    move-wide v5, p5

    invoke-static {v5, v6, p3, p4}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-wide v5, p5

    :goto_3
    const/4 v9, 0x1

    move-wide v3, p3

    move-wide/from16 v7, p7

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->b(Landroidx/compose/animation/TargetData;JJJZ)V

    new-instance p0, Landroidx/compose/animation/ActiveMatchConfigured;

    invoke-direct {p0, v2, p2, v1}, Landroidx/compose/animation/ActiveMatchConfigured;-><init>(Landroidx/compose/animation/TargetData;Landroidx/compose/animation/BoundsProvider;Landroidx/compose/ui/geometry/Rect;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public final e()Landroidx/compose/animation/TargetData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->b:Landroidx/compose/animation/TargetData;

    return-object p0
.end method

.method public final f(Landroidx/compose/animation/SharedElement;)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->a:Landroidx/compose/animation/BoundsProvider;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->b()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {p1}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_1
    check-cast v4, Landroidx/compose/animation/SharedElementEntry;

    if-eqz v4, :cond_3

    iget-object v0, v4, Landroidx/compose/animation/SharedElementEntry;->m:Landroidx/compose/animation/SharedBoundsNode;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :cond_4
    :goto_2
    invoke-static {p1, v0}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->a(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final g(Landroidx/compose/animation/BoundsProvider;)Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->a:Landroidx/compose/animation/BoundsProvider;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->a:Landroidx/compose/animation/BoundsProvider;

    :cond_0
    return-object p0
.end method

.method public final h()Landroidx/compose/animation/SharedTransitionStateMachine$State;
    .locals 0

    sget-object p0, Landroidx/compose/animation/NoMatchFound;->a:Landroidx/compose/animation/NoMatchFound;

    return-object p0
.end method

.method public final i(Landroidx/compose/ui/geometry/Rect;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ActiveMatchFoundConfigPending;->c:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    return-void
.end method

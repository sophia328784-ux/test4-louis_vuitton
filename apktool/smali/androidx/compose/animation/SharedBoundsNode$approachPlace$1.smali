.class final Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Landroidx/compose/animation/SharedBoundsNode;

.field public final synthetic d:Landroidx/compose/ui/layout/Placeable;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->c:Landroidx/compose/animation/SharedBoundsNode;

    iput-object p2, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->d:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    const/4 v2, 0x1

    iget-object v3, v0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->c:Landroidx/compose/animation/SharedBoundsNode;

    iput-boolean v2, v3, Landroidx/compose/animation/SharedBoundsNode;->q:Z

    const/4 v2, 0x0

    iput-object v2, v3, Landroidx/compose/animation/SharedBoundsNode;->p:Landroidx/compose/ui/geometry/Rect;

    iget-object v4, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v4}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v4}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v4

    iget-object v5, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElementEntry;->j()Z

    move-result v5

    iget-object v0, v0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->d:Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-static {v1, v0, v6, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v4}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->d()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->e()Landroidx/compose/animation/TargetData;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v4}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v4, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v4}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/animation/SharedElement;->b:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v4}, Landroidx/compose/animation/SharedTransitionScopeImpl;->j()Z

    move-result v4

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->w()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v0, v6, v6, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    goto/16 :goto_8

    :cond_1
    iget-object v14, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v14}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v14

    iget-object v14, v14, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v14}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->b()Z

    move-result v14

    invoke-virtual {v3}, Landroidx/compose/animation/SharedBoundsNode;->h2()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v15

    sget-object v16, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v15, v4, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->y(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v12

    invoke-static {v5}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->c(Landroidx/compose/animation/TargetData;)Landroidx/compose/ui/geometry/Rect;

    iget-object v15, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    if-nez v14, :cond_2

    invoke-virtual {v15}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v15

    const-wide p0, 0xffffffffL

    invoke-static {v5}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->c(Landroidx/compose/animation/TargetData;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    new-instance v10, Ldw0;

    invoke-direct {v10, v6}, Ldw0;-><init>(I)V

    invoke-virtual {v15, v7, v9, v10}, Landroidx/compose/animation/BoundsAnimation;->a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Ldw0;)V

    goto :goto_0

    :cond_2
    const-wide p0, 0xffffffffL

    invoke-virtual {v15}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v6

    invoke-static {v5}, Landroidx/compose/animation/SharedTransitionStateMachineKt;->c(Landroidx/compose/animation/TargetData;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v2}, Landroidx/compose/animation/BoundsAnimation;->a(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Ldw0;)V

    :goto_0
    iget-object v6, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v6}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/animation/BoundsAnimation;->c()Landroidx/compose/ui/geometry/Rect;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->d()J

    move-result-wide v9

    iget-object v2, v5, Landroidx/compose/animation/TargetData;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    move-wide/from16 v16, v12

    const/16 v15, 0x20

    iget-wide v11, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v9

    iget-object v2, v5, Landroidx/compose/animation/TargetData;->d:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v11, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/geometry/Offset;->f(JJ)J

    move-result-wide v9

    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v9, v10}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v12

    const/16 v15, 0x20

    :goto_1
    iget-object v5, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v5}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v14, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->d()J

    move-result-wide v2

    :goto_2
    move-wide/from16 v11, v16

    goto :goto_6

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    iget-wide v9, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    goto :goto_4

    :cond_7
    move-wide/from16 v9, v16

    :goto_4
    if-nez v2, :cond_8

    invoke-interface {v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->d(J)J

    move-result-wide v4

    move-wide/from16 v11, v16

    invoke-static {v11, v12, v4, v5}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-wide/from16 v11, v16

    iget-wide v4, v2, Landroidx/compose/ui/geometry/Offset;->a:J

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Rect;->c()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    :goto_5
    iget-object v3, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v3}, Landroidx/compose/animation/SharedElementEntry;->e()Landroidx/compose/animation/SharedElement;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/animation/SharedElement;->c:Landroidx/compose/animation/SharedTransitionStateMachine;

    invoke-virtual {v3}, Landroidx/compose/animation/SharedTransitionStateMachine;->a()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->i(Landroidx/compose/ui/geometry/Rect;)V

    move-wide v2, v9

    :goto_6
    invoke-static {v2, v3, v11, v12}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v2

    shr-long v4, v2, v15

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    and-long v2, v2, p0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    goto :goto_8

    :cond_9
    const-wide p0, 0xffffffffL

    const/16 v15, 0x20

    iget-object v2, v3, Landroidx/compose/animation/SharedBoundsNode;->r:Landroidx/compose/animation/SharedElementEntry;

    invoke-virtual {v2}, Landroidx/compose/animation/SharedElementEntry;->c()Landroidx/compose/animation/BoundsAnimation;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/animation/BoundsAnimation;->b()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->w()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v3}, Landroidx/compose/animation/SharedBoundsNode;->h2()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->y(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v2

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->d()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->b(J)J

    move-result-wide v12

    goto :goto_7

    :cond_a
    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    sget-object v2, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    shr-long v2, v12, v15

    long-to-int v2, v2

    and-long v3, v12, p0

    long-to-int v3, v3

    invoke-virtual {v1, v0, v2, v3, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->j(Landroidx/compose/ui/layout/Placeable;IIF)V

    goto :goto_8

    :cond_b
    invoke-static {v1, v0, v6, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    goto :goto_8

    :cond_c
    const-string v0, "Match State is configured, but current bounds is null. State = "

    invoke-static {v4, v0}, Ltg0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_d
    const-string v0, "Match State is configured, but target data is null. State = "

    invoke-static {v4, v0}, Ltg0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_e
    invoke-static {v1, v0, v6, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->l(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

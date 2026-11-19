.class final Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
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
.field public final synthetic c:Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

.field public final synthetic d:Landroidx/compose/animation/core/Transition;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/animation/SharedTransitionScopeImpl;

.field public final synthetic g:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

.field public final synthetic h:Z

.field public final synthetic i:Landroidx/compose/animation/SharedTransitionScope$OverlayClip;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/core/Transition;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/SharedTransitionScopeImpl;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->c:Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    iput-object p2, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->d:Landroidx/compose/animation/core/Transition;

    iput-object p3, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->f:Landroidx/compose/animation/SharedTransitionScopeImpl;

    sget-object p1, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1;->b:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1;

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->g:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;

    iput-boolean p5, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->h:Z

    iput-object p6, p0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->i:Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/Modifier;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    const v2, -0x5bc2fdb1

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->c:Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    iget-object v2, v2, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->a:Ljava/lang/Object;

    const v3, -0x76fa3b37

    invoke-interface {v5, v3, v2}, Landroidx/compose/runtime/Composer;->A(ILjava/lang/Object;)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    iget-object v8, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->f:Landroidx/compose/animation/SharedTransitionScopeImpl;

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v12, :cond_1

    iget-object v3, v8, Landroidx/compose/animation/SharedTransitionScopeImpl;->i:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/SharedElement;

    if-nez v4, :cond_0

    new-instance v4, Landroidx/compose/animation/SharedElement;

    invoke-direct {v4, v2, v8}, Landroidx/compose/animation/SharedElement;-><init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScopeImpl;)V

    invoke-virtual {v3, v2, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object v3, v4

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v14, v3

    check-cast v14, Landroidx/compose/animation/SharedElement;

    const v3, -0x76fa2c72

    move-object v4, v2

    iget-object v2, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->d:Landroidx/compose/animation/core/Transition;

    invoke-interface {v5, v3, v2}, Landroidx/compose/runtime/Composer;->A(ILjava/lang/Object;)V

    const/4 v13, 0x0

    iget-object v3, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_5

    iget-object v6, v2, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    const v7, -0x684ad4f7

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_2

    if-ne v9, v12, :cond_3

    :cond_2
    invoke-virtual {v6}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->i()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v9

    :cond_4
    const v6, 0x594da253

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    iget-object v9, v2, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    check-cast v9, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/TransitionKt;->b(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    move-object v6, v5

    const v2, -0x6846fcb7

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x0

    if-ne v5, v12, :cond_8

    invoke-virtual {v14}, Landroidx/compose/animation/SharedElement;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v2, v7

    :goto_0
    new-instance v5, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v5, v2}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v5, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/MutableTransitionState;->g(Ljava/lang/Boolean;)V

    const/4 v2, 0x2

    invoke-static {v5, v13, v6, v7, v2}, Landroidx/compose/animation/core/TransitionKt;->e(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_1
    invoke-virtual {v8}, Landroidx/compose/animation/SharedTransitionScopeImpl;->j()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const v4, -0x76f9343b

    invoke-interface {v6, v4, v3}, Landroidx/compose/runtime/Composer;->A(ILjava/lang/Object;)V

    sget-object v3, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect$Companion;

    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->i:Landroidx/compose/animation/core/TwoWayConverter;

    move-object v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    move-result-object v9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->I()V

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Landroidx/compose/animation/SharedTransitionDefaults;->a:Ldw0;

    if-nez v3, :cond_9

    if-ne v4, v12, :cond_a

    :cond_9
    new-instance v6, Landroidx/compose/animation/BoundsAnimation;

    iget-object v11, v14, Landroidx/compose/animation/SharedElement;->h:Lkotlin/jvm/functions/Function0;

    move-object v7, v8

    move-object v8, v2

    invoke-direct/range {v6 .. v11}, Landroidx/compose/animation/BoundsAnimation;-><init>(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/BoundsTransform;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_a
    move-object v15, v4

    check-cast v15, Landroidx/compose/animation/BoundsAnimation;

    iget-object v2, v15, Landroidx/compose/animation/BoundsAnimation;->d:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v15, Landroidx/compose/animation/BoundsAnimation;->d:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v2, v15, Landroidx/compose/animation/BoundsAnimation;->g:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v2, Landroidx/compose/animation/BoundsAnimationKt;->a:Landroidx/compose/animation/core/SpringSpec;

    iput-object v2, v15, Landroidx/compose/animation/BoundsAnimation;->f:Landroidx/compose/animation/core/FiniteAnimationSpec;

    :cond_b
    iget-object v2, v15, Landroidx/compose/animation/BoundsAnimation;->e:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->I()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v16, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1;->b:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion$ContentSize$1;

    iget-boolean v3, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->h:Z

    iget-object v4, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->c:Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl$sharedBoundsImpl$1;->i:Landroidx/compose/animation/SharedTransitionScope$OverlayClip;

    const/16 v21, 0x0

    if-ne v2, v12, :cond_c

    new-instance v13, Landroidx/compose/animation/SharedElementEntry;

    const/16 v19, 0x1

    move-object/from16 v18, v0

    move/from16 v17, v3

    move-object/from16 v20, v4

    invoke-direct/range {v13 .. v21}, Landroidx/compose/animation/SharedElementEntry;-><init>(Landroidx/compose/animation/SharedElement;Landroidx/compose/animation/BoundsAnimation;Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;ZLandroidx/compose/animation/SharedTransitionScope$OverlayClip;ZLandroidx/compose/animation/SharedTransitionScope$SharedContentState;F)V

    move-object/from16 v0, v16

    move-object/from16 v4, v18

    move-object/from16 v3, v20

    move/from16 v6, v21

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v13

    goto :goto_2

    :cond_c
    move/from16 v17, v3

    move-object v3, v4

    move/from16 v6, v21

    move-object v4, v0

    move-object/from16 v0, v16

    :goto_2
    check-cast v2, Landroidx/compose/animation/SharedElementEntry;

    iget-object v7, v3, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/compose/animation/SharedElementEntry;->e:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/compose/animation/SharedElementEntry;->h:Landroidx/compose/runtime/MutableState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/compose/animation/SharedElementEntry;->f:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/compose/animation/SharedElementEntry;->g:Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v2, Landroidx/compose/animation/SharedElementEntry;->i:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v2, Landroidx/compose/animation/SharedElementEntry;->c:Landroidx/compose/runtime/MutableFloatState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->w(F)V

    iget-object v0, v2, Landroidx/compose/animation/SharedElementEntry;->d:Landroidx/compose/runtime/MutableState;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v2, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->I()V

    new-instance v0, Landroidx/compose/animation/SharedBoundsNodeElement;

    invoke-direct {v0, v2}, Landroidx/compose/animation/SharedBoundsNodeElement;-><init>(Landroidx/compose/animation/SharedElementEntry;)V

    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0
.end method

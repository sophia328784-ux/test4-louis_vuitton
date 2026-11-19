.class public abstract Landroidx/navigation3/ui/NavDisplayKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {}
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/navigation3/scene/SceneState;Landroidx/navigationevent/compose/NavigationEventState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    move-object/from16 v7, p6

    move/from16 v11, p8

    const-string v3, "NavDisplay"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_1
    const v3, -0x121c2265

    move-object/from16 v4, p7

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v3, v11, 0x6

    if-nez v3, :cond_3

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v11

    goto :goto_1

    :cond_3
    move v3, v11

    :goto_1
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_5

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_5
    and-int/lit16 v5, v11, 0x180

    if-nez v5, :cond_7

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x100

    goto :goto_3

    :cond_6
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v3, v5

    :cond_7
    and-int/lit16 v5, v11, 0xc00

    move-object/from16 v13, p3

    if-nez v5, :cond_9

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, 0x800

    goto :goto_4

    :cond_8
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v3, v5

    :cond_9
    and-int/lit16 v5, v11, 0x6000

    const/4 v14, 0x0

    if-nez v5, :cond_b

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x4000

    goto :goto_5

    :cond_a
    const/16 v5, 0x2000

    :goto_5
    or-int/2addr v3, v5

    :cond_b
    const/high16 v5, 0x30000

    and-int v6, v11, v5

    if-nez v6, :cond_d

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/high16 v6, 0x20000

    goto :goto_6

    :cond_c
    const/high16 v6, 0x10000

    :goto_6
    or-int/2addr v3, v6

    :cond_d
    const/high16 v6, 0x180000

    and-int v15, v11, v6

    if-nez v15, :cond_f

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x100000

    goto :goto_7

    :cond_e
    const/high16 v15, 0x80000

    :goto_7
    or-int/2addr v3, v15

    :cond_f
    const/high16 v15, 0xc00000

    and-int v16, v11, v15

    move/from16 p7, v5

    if-nez v16, :cond_11

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x800000

    goto :goto_8

    :cond_10
    const/high16 v16, 0x400000

    :goto_8
    or-int v3, v3, v16

    :cond_11
    const v16, 0x492493

    move/from16 v17, v6

    and-int v6, v3, v16

    move/from16 v16, v15

    const v15, 0x492492

    const/4 v4, 0x0

    if-eq v6, v15, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    :cond_12
    move v6, v4

    :goto_9
    and-int/lit8 v15, v3, 0x1

    invoke-virtual {v12, v15, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v6, v11, 0x1

    if-eqz v6, :cond_14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v6

    if-eqz v6, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_14
    :goto_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v6, v1, Landroidx/navigation3/scene/SceneState;->c:Landroidx/navigation3/scene/Scene;

    iget-object v15, v1, Landroidx/navigation3/scene/SceneState;->a:Ljava/util/List;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v8, :cond_15

    new-instance v5, Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {v5, v6}, Landroidx/compose/animation/core/SeekableTransitionState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v5, Landroidx/compose/animation/core/SeekableTransitionState;

    sget v19, Landroidx/compose/animation/core/SeekableTransitionState;->t:I

    or-int/lit8 v14, v19, 0x30

    move-object/from16 v19, v0

    const-string v0, "scene"

    invoke-static {v5, v0, v12, v14, v4}, Landroidx/compose/animation/core/TransitionKt;->e(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    move-result-object v0

    iget-object v14, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    iget-object v4, v0, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v14}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Landroidx/navigation3/scene/Scene;

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v22, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v22, :cond_16

    if-ne v3, v8, :cond_17

    :cond_16
    move-object v3, v15

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Ljava/util/List;

    move-object/from16 v22, v3

    iget-object v3, v1, Landroidx/navigation3/scene/SceneState;->d:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation3/scene/Scene;

    move-object/from16 v24, v4

    iget-object v4, v2, Landroidx/navigationevent/compose/NavigationEventState;->a:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigationevent/NavigationEventTransitionState;

    instance-of v2, v4, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    move/from16 v25, v2

    const/4 v2, 0x1

    goto :goto_b

    :cond_18
    move/from16 v25, v2

    const/4 v2, 0x0

    :goto_b
    instance-of v11, v4, Landroidx/navigationevent/NavigationEventTransitionState$Idle;

    move-object/from16 v26, v4

    if-eqz v11, :cond_19

    const/4 v4, 0x0

    goto :goto_c

    :cond_19
    if-eqz v25, :cond_59

    move-object/from16 v4, v26

    check-cast v4, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    iget-object v4, v4, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->a:Landroidx/navigationevent/NavigationEvent;

    iget v4, v4, Landroidx/navigationevent/NavigationEvent;->b:F

    :goto_c
    if-eqz v11, :cond_1a

    const/4 v11, 0x2

    goto :goto_d

    :cond_1a
    if-eqz v25, :cond_58

    move-object/from16 v11, v26

    check-cast v11, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;

    iget-object v11, v11, Landroidx/navigationevent/NavigationEventTransitionState$InProgress;->a:Landroidx/navigationevent/NavigationEvent;

    iget v11, v11, Landroidx/navigationevent/NavigationEvent;->a:I

    :goto_d
    move-object/from16 v13, v22

    check-cast v13, Ljava/lang/Iterable;

    move-object/from16 v22, v14

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v25, v15

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/navigation3/runtime/NavEntry;

    iget-object v13, v13, Landroidx/navigation3/runtime/NavEntry;->b:Ljava/lang/Object;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1b
    move-object/from16 v10, v25

    check-cast v10, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v10, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation3/runtime/NavEntry;

    iget-object v10, v10, Landroidx/navigation3/runtime/NavEntry;->b:Ljava/lang/Object;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1c
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    :cond_1d
    :goto_10
    const/4 v9, 0x0

    goto :goto_13

    :cond_1e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v9, v10, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    move-object v10, v9

    check-cast v10, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean v10, v10, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz v10, :cond_21

    move-object v10, v9

    check-cast v10, Lkotlin/collections/IntIterator;

    invoke-virtual {v10}, Lkotlin/collections/IntIterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v25, v10

    check-cast v25, Ljava/lang/Number;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->intValue()I

    move-result v15

    move-object/from16 v25, v9

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20

    goto :goto_12

    :cond_20
    move-object/from16 v9, v25

    const/16 v15, 0xa

    goto :goto_11

    :cond_21
    const/4 v10, 0x0

    :goto_12
    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_1d

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eq v9, v10, :cond_1d

    const/4 v9, 0x1

    :goto_13
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v8, :cond_22

    new-instance v10, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {v10}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object v13, v10

    check-cast v13, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v8, :cond_23

    sget v10, Landroidx/collection/ObjectFloatMapKt;->a:I

    new-instance v10, Landroidx/collection/MutableObjectFloatMap;

    move/from16 v18, v9

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v10, v15, v14, v9}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_14

    :cond_23
    move/from16 v18, v9

    const/4 v14, 0x1

    :goto_14
    move-object v15, v10

    check-cast v15, Landroidx/collection/MutableObjectFloatMap;

    new-instance v9, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation3/scene/Scene;

    invoke-direct {v9, v10}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    new-instance v10, Landroidx/navigation3/ui/AnimatedSceneKey;

    check-cast v24, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v14, v25

    check-cast v14, Landroidx/navigation3/scene/Scene;

    invoke-direct {v10, v14}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    invoke-virtual {v15, v9}, Landroidx/collection/ObjectFloatMap;->a(Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_24

    move/from16 v25, v14

    iget-object v14, v15, Landroidx/collection/ObjectFloatMap;->c:[F

    aget v14, v14, v25

    goto :goto_15

    :cond_24
    const/4 v14, 0x0

    invoke-virtual {v15, v9, v14}, Landroidx/collection/MutableObjectFloatMap;->f(Ljava/lang/Object;F)V

    :goto_15
    move/from16 v25, v14

    if-nez v2, :cond_25

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    invoke-virtual {v15, v10}, Landroidx/collection/ObjectFloatMap;->a(Ljava/lang/Object;)I

    move-result v14

    if-ltz v14, :cond_25

    invoke-virtual {v15, v10}, Landroidx/collection/ObjectFloatMap;->b(Ljava/lang/Object;)F

    move-result v9

    :goto_16
    move v14, v9

    goto :goto_18

    :cond_25
    invoke-virtual {v9, v10}, Landroidx/navigation3/ui/AnimatedSceneKey;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    move/from16 v14, v25

    goto :goto_18

    :cond_26
    const/high16 v9, 0x3f800000    # 1.0f

    if-nez v18, :cond_28

    if-eqz v2, :cond_27

    goto :goto_17

    :cond_27
    add-float v9, v25, v9

    goto :goto_16

    :cond_28
    :goto_17
    sub-float v9, v25, v9

    goto :goto_16

    :goto_18
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v13, v10, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v13, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->c:Ljava/util/Set;

    invoke-virtual {v15, v10, v14}, Landroidx/collection/MutableObjectFloatMap;->f(Ljava/lang/Object;F)V

    iget-object v10, v1, Landroidx/navigation3/scene/SceneState;->b:Ljava/util/List;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_29

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    move-object/from16 v28, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v27, :cond_2b

    if-ne v13, v8, :cond_2a

    goto :goto_19

    :cond_2a
    move/from16 v27, v14

    goto :goto_1a

    :cond_2b
    :goto_19
    new-instance v13, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$10$1;

    move/from16 v27, v14

    const/4 v14, 0x0

    invoke-direct {v13, v10, v1, v14}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$10$1;-><init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1a
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateListKt;->c(Landroidx/compose/runtime/snapshots/SnapshotStateList;)Landroidx/compose/runtime/snapshots/StateListStateRecord;

    move-result-object v14

    iget-object v14, v14, Landroidx/compose/runtime/snapshots/StateListStateRecord;->c:Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-object/from16 v29, v10

    invoke-virtual {v15}, Landroidx/collection/ObjectFloatMap;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v10, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_2d

    if-ne v13, v8, :cond_2c

    goto :goto_1b

    :cond_2c
    move-object/from16 v32, v1

    move-object/from16 v30, v15

    goto/16 :goto_24

    :cond_2d
    :goto_1b
    new-instance v10, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v10}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$lambda$19$0$$inlined$sortedByDescending$1;

    invoke-direct {v14, v15}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$lambda$19$0$$inlined$sortedByDescending$1;-><init>(Landroidx/collection/MutableObjectFloatMap;)V

    invoke-static {v9, v14}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v30, v15

    const/16 v15, 0xa

    invoke-static {v9, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation3/scene/Scene;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2e
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2f
    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation3/scene/Scene;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2f

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_30
    invoke-static {v1, v13}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_1e
    if-ge v15, v14, :cond_37

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v32, v1

    move-object/from16 v1, v31

    check-cast v1, Landroidx/navigation3/scene/Scene;

    invoke-interface {v1}, Landroidx/navigation3/scene/Scene;->getEntries()Ljava/util/List;

    move-result-object v31

    move-object/from16 v33, v7

    move-object/from16 v7, v31

    check-cast v7, Ljava/lang/Iterable;

    move/from16 v31, v13

    new-instance v13, Ljava/util/ArrayList;

    move/from16 v34, v14

    move/from16 p2, v15

    const/16 v14, 0xa

    invoke-static {v7, v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/navigation3/runtime/NavEntry;

    iget-object v15, v15, Landroidx/navigation3/runtime/NavEntry;->b:Ljava/lang/Object;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_31
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_32
    :goto_20
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_33

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_32

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_33
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    if-nez v31, :cond_36

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_36

    new-instance v13, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-direct {v13, v1}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation3/scene/Scene;

    invoke-interface {v1}, Landroidx/navigation3/scene/Scene;->getEntries()Ljava/util/List;

    move-result-object v1

    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v15, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v1

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v14

    move-object/from16 v36, v7

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v14, :cond_34

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v38, v1

    move-object/from16 v1, v37

    check-cast v1, Landroidx/navigation3/runtime/NavEntry;

    iget-object v1, v1, Landroidx/navigation3/runtime/NavEntry;->b:Ljava/lang/Object;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v38

    goto :goto_21

    :cond_34
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_22
    if-ge v14, v7, :cond_35

    move/from16 v37, v7

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v37

    goto :goto_22

    :cond_35
    invoke-virtual {v10, v13, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    goto :goto_23

    :cond_36
    move-object/from16 v36, v7

    new-instance v7, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-direct {v7, v1}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-virtual {v10, v7, v1}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    :goto_23
    move-object/from16 v7, v36

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v9, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v15, p2, 0x1

    move/from16 v13, v31

    move-object/from16 v1, v32

    move-object/from16 v7, v33

    move/from16 v14, v34

    goto/16 :goto_1e

    :cond_37
    move-object/from16 v32, v1

    move/from16 v31, v13

    if-nez v31, :cond_38

    new-instance v1, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation3/scene/Scene;

    invoke-direct {v1, v7}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    sget-object v7, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    invoke-virtual {v10, v1, v7}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    invoke-virtual {v10}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_24
    check-cast v13, Ljava/util/Map;

    cmpl-float v1, v25, v27

    if-ltz v1, :cond_39

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation3/scene/Scene;

    goto :goto_25

    :cond_39
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation3/scene/Scene;

    :goto_25
    if-eqz v2, :cond_3d

    const v6, -0x77939a4b

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    const v6, -0x7792c8cd

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_3a

    if-ne v9, v8, :cond_3b

    :cond_3a
    new-instance v9, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$11$1;

    const/4 v14, 0x0

    invoke-direct {v9, v5, v4, v3, v14}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$11$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;FLandroidx/navigation3/scene/Scene;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v6, v9, v12}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_26

    :cond_3c
    const/4 v15, 0x0

    const v3, -0x778facf9

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_26
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_27

    :cond_3d
    const v3, -0x778e7ce8

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3e

    if-ne v4, v8, :cond_3f

    :cond_3e
    new-instance v4, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$12$1;

    const/4 v14, 0x0

    invoke-direct {v4, v5, v6, v0, v14}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$12$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation3/scene/Scene;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3f
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v6, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_27
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x1c00000

    and-int v4, v23, v4

    xor-int v4, v4, v16

    const/high16 v5, 0x800000

    move-object/from16 v7, p6

    if-le v4, v5, :cond_40

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    :cond_40
    and-int v4, v23, v16

    if-ne v4, v5, :cond_42

    :cond_41
    const/4 v4, 0x1

    goto :goto_28

    :cond_42
    move v4, v15

    :goto_28
    or-int/2addr v3, v4

    move/from16 v4, v18

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    or-int/2addr v3, v5

    const/high16 v5, 0x380000

    and-int v5, v23, v5

    xor-int v5, v5, v17

    const/high16 v6, 0x100000

    move-object/from16 v9, p5

    if-le v5, v6, :cond_43

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    :cond_43
    and-int v5, v23, v17

    if-ne v5, v6, :cond_45

    :cond_44
    const/4 v5, 0x1

    goto :goto_29

    :cond_45
    move v5, v15

    :goto_29
    or-int/2addr v3, v5

    const/high16 v5, 0x70000

    and-int v5, v23, v5

    xor-int v5, v5, p7

    const/high16 v6, 0x20000

    move-object/from16 v10, p4

    if-le v5, v6, :cond_46

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    :cond_46
    and-int v5, v23, p7

    if-ne v5, v6, :cond_48

    :cond_47
    const/4 v5, 0x1

    goto :goto_2a

    :cond_48
    move v5, v15

    :goto_2a
    or-int/2addr v3, v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_4a

    if-ne v5, v8, :cond_49

    goto :goto_2b

    :cond_49
    move-object v11, v8

    move/from16 v1, v23

    move-object/from16 v2, v29

    const/4 v14, 0x1

    goto :goto_2c

    :cond_4a
    :goto_2b
    new-instance v3, Lgg0;

    move-object v5, v1

    move v6, v11

    move/from16 v1, v23

    const/4 v14, 0x1

    move-object v11, v8

    move v8, v4

    move v4, v2

    move-object/from16 v2, v29

    invoke-direct/range {v3 .. v10}, Lgg0;-><init>(ZLandroidx/navigation3/scene/Scene;ILkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v5, v3

    :goto_2c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v24, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct/range {v24 .. v24}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v9, v27

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v4

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4b

    if-ne v4, v11, :cond_4c

    :cond_4b
    new-instance v4, Lqb;

    invoke-direct {v4, v5, v9, v14}, Lqb;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4c
    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v11, :cond_4d

    new-instance v3, Lag0;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lag0;-><init>(I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4d
    move-object v7, v3

    check-cast v7, Lkotlin/jvm/functions/Function1;

    new-instance v21, Lw4;

    const/16 v26, 0x7

    move-object/from16 v22, v0

    move-object/from16 v25, v13

    move-object/from16 v23, v32

    invoke-direct/range {v21 .. v26}, Lw4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v3, v21

    move-object/from16 v0, v23

    move-object/from16 v14, v24

    const v4, -0x45956e3c

    invoke-static {v4, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x70

    const v4, 0x36000

    or-int/2addr v3, v4

    and-int/lit16 v1, v1, 0x1c00

    or-int v10, v3, v1

    move-object/from16 v6, p3

    move-object v9, v12

    move-object/from16 v4, v19

    move-object/from16 v3, v22

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/AnimatedContentKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V

    move-object v1, v3

    move-object v3, v4

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v10, v30

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_4e

    if-ne v5, v11, :cond_4f

    :cond_4e
    new-instance v5, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;

    move-object/from16 v4, v28

    const/4 v6, 0x0

    invoke-direct {v5, v1, v4, v10, v6}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$16$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/snapshots/SnapshotStateMap;Landroidx/collection/MutableObjectFloatMap;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4f
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v5}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_57

    :goto_2d
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation3/scene/OverlayScene;

    const v5, 0x2978da8

    invoke-virtual {v9, v5, v1}, Landroidx/compose/runtime/GapComposer;->A(ILjava/lang/Object;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_2e

    :cond_50
    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    :goto_2e
    invoke-static {v5, v9}, Landroidx/lifecycle/compose/RememberLifecycleOwnerKt;->a(Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/compose/LocalLifecycleOwnerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    sget-object v6, Landroidx/navigation3/scene/SceneSetupNavEntryDecoratorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v7, Landroidx/navigation3/ui/AnimatedSceneKey;

    invoke-direct {v7, v1}, Landroidx/navigation3/ui/AnimatedSceneKey;-><init>(Landroidx/navigation3/scene/Scene;)V

    invoke-static {v13, v7}, Lkotlin/collections/MapsKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v6

    sget-object v7, Landroidx/navigation3/scene/SharedEntryInSceneNavEntryDecoratorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v7

    sget-object v8, Landroidx/navigation3/ui/LocalNavAnimatedContentScopeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    iget-object v10, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v10, :cond_56

    check-cast v10, Landroidx/compose/animation/AnimatedContentScope;

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v8

    filled-new-array {v5, v6, v7, v8}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v5

    new-instance v6, Lw20;

    const/16 v7, 0x13

    invoke-direct {v6, v1, v7}, Lw20;-><init>(Ljava/lang/Object;I)V

    const v7, -0x62b5c837

    invoke-static {v7, v6, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    const/16 v7, 0x38

    invoke-static {v5, v6, v9, v7}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v2

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v6

    move v7, v15

    :goto_2f
    if-ge v7, v6, :cond_51

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation3/scene/OverlayScene;

    invoke-interface {v8}, Landroidx/navigation3/scene/Scene;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_51
    invoke-interface {v1}, Landroidx/navigation3/scene/Scene;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    const v5, 0x5068d9bc

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface {v1}, Landroidx/navigation3/scene/Scene;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_52

    if-ne v7, v11, :cond_53

    :cond_52
    new-instance v7, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$17$3$1;

    const/4 v6, 0x0

    invoke-direct {v7, v1, v0, v6}, Landroidx/navigation3/ui/NavDisplayKt__NavDisplayKt$NavDisplay$17$3$1;-><init>(Landroidx/navigation3/scene/OverlayScene;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_53
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v5, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_30

    :cond_54
    const v1, 0x506b57e6

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_30
    if-gez v4, :cond_55

    goto :goto_31

    :cond_55
    move v1, v4

    goto/16 :goto_2d

    :cond_56
    const-string v0, "animatedContentScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/16 v20, 0x0

    throw v20

    :cond_57
    :goto_31
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_32

    :cond_58
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_59
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_5a
    move-object v3, v0

    move-object v9, v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_32
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_5b

    new-instance v0, Lw3;

    const/4 v9, 0x6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lw3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/Function;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5b
    return-void
.end method

.method public static final b(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move/from16 v10, p10

    const-string v2, "NavDisplay"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_1
    move-object v13, v0

    const v0, -0x7216c6ad

    move-object/from16 v2, p9

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v10

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    and-int/lit8 v7, v10, 0x30

    if-nez v7, :cond_5

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    :cond_5
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_7

    move-object/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x100

    goto :goto_3

    :cond_6
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v2, v8

    goto :goto_4

    :cond_7
    move-object/from16 v7, p2

    :goto_4
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_9

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_5

    :cond_8
    const/16 v8, 0x400

    :goto_5
    or-int/2addr v2, v8

    :cond_9
    and-int/lit16 v8, v10, 0x6000

    if-nez v8, :cond_b

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x4000

    goto :goto_6

    :cond_a
    const/16 v8, 0x2000

    :goto_6
    or-int/2addr v2, v8

    :cond_b
    const/high16 v8, 0x30000

    and-int/2addr v8, v10

    const/4 v11, 0x0

    if-nez v8, :cond_d

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/high16 v8, 0x20000

    goto :goto_7

    :cond_c
    const/high16 v8, 0x10000

    :goto_7
    or-int/2addr v2, v8

    :cond_d
    const/high16 v8, 0x180000

    and-int/2addr v8, v10

    if-nez v8, :cond_f

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/high16 v8, 0x100000

    goto :goto_8

    :cond_e
    const/high16 v8, 0x80000

    :goto_8
    or-int/2addr v2, v8

    :cond_f
    const/high16 v8, 0xc00000

    and-int/2addr v8, v10

    if-nez v8, :cond_11

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x800000

    goto :goto_9

    :cond_10
    const/high16 v12, 0x400000

    :goto_9
    or-int/2addr v2, v12

    goto :goto_a

    :cond_11
    move-object/from16 v8, p5

    :goto_a
    const/high16 v12, 0x6000000

    and-int/2addr v12, v10

    if-nez v12, :cond_13

    move-object/from16 v12, p6

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x4000000

    goto :goto_b

    :cond_12
    const/high16 v14, 0x2000000

    :goto_b
    or-int/2addr v2, v14

    goto :goto_c

    :cond_13
    move-object/from16 v12, p6

    :goto_c
    const/high16 v14, 0x30000000

    and-int/2addr v14, v10

    if-nez v14, :cond_15

    move-object/from16 v14, p7

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    const/high16 v15, 0x20000000

    goto :goto_d

    :cond_14
    const/high16 v15, 0x10000000

    :goto_d
    or-int/2addr v2, v15

    goto :goto_e

    :cond_15
    move-object/from16 v14, p7

    :goto_e
    and-int/lit8 v15, p11, 0x6

    if-nez v15, :cond_17

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    const/4 v15, 0x4

    goto :goto_f

    :cond_16
    const/4 v15, 0x2

    :goto_f
    or-int v15, p11, v15

    goto :goto_10

    :cond_17
    move/from16 v15, p11

    :goto_10
    const v16, 0x12492493

    and-int v6, v2, v16

    const v11, 0x12492492

    if-ne v6, v11, :cond_19

    and-int/lit8 v6, v15, 0x3

    const/4 v11, 0x2

    if-eq v6, v11, :cond_18

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    goto :goto_12

    :cond_19
    :goto_11
    const/4 v6, 0x1

    :goto_12
    and-int/lit8 v11, v2, 0x1

    invoke-virtual {v0, v11, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v6, v10, 0x1

    if-eqz v6, :cond_1b

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v6

    if-eqz v6, :cond_1a

    goto :goto_13

    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_1b
    :goto_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_31

    and-int/lit8 v6, v2, 0xe

    shr-int/lit8 v11, v2, 0x6

    and-int/lit8 v18, v11, 0x70

    or-int v6, v6, v18

    and-int/lit16 v3, v11, 0x380

    or-int/2addr v3, v6

    and-int/lit16 v6, v11, 0x1c00

    or-int/2addr v3, v6

    shl-int/lit8 v6, v15, 0xc

    const v20, 0xe000

    and-int v6, v6, v20

    or-int/2addr v3, v6

    invoke-static {v9, v0}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    move/from16 v21, v2

    const v2, -0x3aae554c

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v2, Landroidx/navigation3/scene/SceneSetupNavEntryDecoratorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    move/from16 v19, v3

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_1c

    new-instance v2, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v2, v8, v7, v8}, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v2, Landroidx/navigation3/scene/SceneSetupNavEntryDecorator;

    and-int/lit8 v7, v19, 0xe

    invoke-static {v1, v0}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    move-object/from16 v19, v2

    new-instance v2, Landroidx/navigation3/runtime/NavEntryDecorator;

    new-instance v10, Llc;

    move/from16 v22, v11

    const/4 v11, 0x0

    invoke-direct {v10, v11, v8}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;)V

    const v8, 0x403bfc2c

    invoke-static {v8, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    move/from16 v18, v11

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v2, v10, v8, v11, v10}, Landroidx/navigation3/runtime/NavEntryDecorator;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x3

    move-object/from16 p9, v10

    new-array v10, v8, [Landroidx/navigation3/runtime/NavEntryDecorator;

    aput-object p9, v10, v18

    aput-object v19, v10, v11

    const/16 v16, 0x2

    aput-object v2, v10, v16

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2, v0, v7}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt;->c(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Ljava/util/ArrayList;

    move-result-object v2

    move-object v7, v4

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_1e

    if-ne v10, v3, :cond_1d

    goto :goto_14

    :cond_1d
    move/from16 v23, v8

    const/4 v4, 0x0

    goto/16 :goto_1e

    :cond_1e
    :goto_14
    new-instance v7, Landroidx/navigation3/scene/SceneDecoratorStrategyScope;

    new-instance v10, Lu00;

    const/16 v11, 0x1b

    invoke-direct {v10, v11, v6}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-direct {v7, v10}, Landroidx/navigation3/scene/SceneDecoratorStrategyScope;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v7, v2, v4, v5}, Landroidx/navigation3/scene/SceneStateKt;->a(Landroidx/navigation3/scene/SceneDecoratorStrategyScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/navigation3/scene/Scene;

    move-result-object v6

    const/4 v11, 0x1

    new-array v10, v11, [Landroidx/navigation3/scene/Scene;

    const/16 v18, 0x0

    aput-object v6, v10, v18

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    :goto_15
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Landroidx/navigation3/scene/OverlayScene;

    if-eqz v11, :cond_1f

    check-cast v10, Landroidx/navigation3/scene/OverlayScene;

    goto :goto_16

    :cond_1f
    move-object/from16 v10, p9

    :goto_16
    if-eqz v10, :cond_20

    invoke-interface {v10}, Landroidx/navigation3/scene/OverlayScene;->b()Ljava/util/List;

    move-result-object v11

    goto :goto_17

    :cond_20
    move-object/from16 v11, p9

    :goto_17
    if-eqz v11, :cond_22

    move-object/from16 v19, v11

    check-cast v19, Ljava/util/Collection;

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_21

    invoke-static {v7, v11, v4, v5}, Landroidx/navigation3/scene/SceneStateKt;->a(Landroidx/navigation3/scene/SceneDecoratorStrategyScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/navigation3/scene/Scene;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_21
    const-string v0, "Overlaid entries from "

    const-string v1, " must not be empty"

    invoke-static {v0, v10, v1}, Llc0;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_22
    :goto_18
    if-nez v11, :cond_30

    const/4 v11, 0x1

    invoke-static {v11, v6}, Lkotlin/collections/CollectionsKt;->x(ILjava/util/List;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    move/from16 v23, v8

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v11, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v10

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    move-object/from16 v19, v6

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v8, :cond_23

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroidx/navigation3/scene/Scene;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v25, v6

    move-object/from16 v6, v24

    check-cast v6, Landroidx/navigation3/scene/OverlayScene;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v25, 0x1

    goto :goto_19

    :cond_23
    invoke-static/range {v19 .. v19}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation3/scene/Scene;

    const/4 v8, 0x1

    new-array v10, v8, [Landroidx/navigation3/scene/Scene;

    invoke-static/range {v19 .. v19}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    const/16 v18, 0x0

    aput-object v8, v10, v18

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    :goto_1a
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation3/scene/Scene;

    if-eqz v10, :cond_24

    invoke-interface {v10}, Landroidx/navigation3/scene/Scene;->a()Ljava/util/List;

    move-result-object v10

    goto :goto_1b

    :cond_24
    move-object/from16 v10, p9

    :goto_1b
    move-object/from16 v19, v10

    check-cast v19, Ljava/util/Collection;

    if-eqz v19, :cond_25

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_26

    :cond_25
    const/4 v4, 0x0

    goto :goto_1c

    :cond_26
    invoke-static {v7, v10, v4, v5}, Landroidx/navigation3/scene/SceneStateKt;->a(Landroidx/navigation3/scene/SceneDecoratorStrategyScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Landroidx/navigation3/scene/Scene;

    move-result-object v10

    const/4 v4, 0x0

    invoke-virtual {v8, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1c
    if-eqz v19, :cond_28

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_27

    goto :goto_1d

    :cond_27
    move-object/from16 v4, p3

    goto :goto_1a

    :cond_28
    :goto_1d
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v10, Landroidx/navigation3/scene/SceneState;

    invoke-direct {v10, v2, v11, v6, v8}, Landroidx/navigation3/scene/SceneState;-><init>(Ljava/util/List;Ljava/util/List;Landroidx/navigation3/scene/Scene;Ljava/util/List;)V

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1e
    move-object v11, v10

    check-cast v11, Landroidx/navigation3/scene/SceneState;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, v11, Landroidx/navigation3/scene/SceneState;->c:Landroidx/navigation3/scene/Scene;

    new-instance v6, Landroidx/navigation3/scene/SceneInfo;

    invoke-direct {v6, v2}, Landroidx/navigation3/scene/SceneInfo;-><init>(Landroidx/navigation3/scene/Scene;)V

    iget-object v7, v11, Landroidx/navigation3/scene/SceneState;->d:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation3/scene/Scene;

    new-instance v4, Landroidx/navigation3/scene/SceneInfo;

    invoke-direct {v4, v10}, Landroidx/navigation3/scene/SceneInfo;-><init>(Landroidx/navigation3/scene/Scene;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    goto :goto_1f

    :cond_29
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_2a

    new-instance v7, Landroidx/navigationevent/compose/NavigationEventState;

    invoke-direct {v7, v6, v8, v4}, Landroidx/navigationevent/compose/NavigationEventState;-><init>(Landroidx/navigationevent/NavigationEventInfo;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v25, v7

    check-cast v25, Landroidx/navigationevent/compose/NavigationEventState;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v7, v10

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v7, :cond_2b

    if-ne v10, v3, :cond_2c

    :cond_2b
    new-instance v24, Lr0;

    const/16 v29, 0x19

    move-object/from16 v28, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    invoke-direct/range {v24 .. v29}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v10, v24

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v10, v0}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-interface {v2}, Landroidx/navigation3/scene/Scene;->a()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/16 v17, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    and-int/lit8 v7, v15, 0xe

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2d

    goto :goto_20

    :cond_2d
    const/16 v17, 0x0

    :goto_20
    or-int v6, v6, v17

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2e

    if-ne v7, v3, :cond_2f

    :cond_2e
    new-instance v7, Lof0;

    const/4 v6, 0x2

    invoke-direct {v7, v1, v2, v9, v6}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2f
    move-object/from16 v17, v7

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const/16 v19, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v0

    move v15, v4

    move-object/from16 v14, v25

    invoke-static/range {v14 .. v19}, Landroidx/navigationevent/compose/NavigationEventHandlerKt;->a(Landroidx/navigationevent/compose/NavigationEventState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    shl-int/lit8 v0, v21, 0x3

    and-int/lit16 v0, v0, 0x1f80

    and-int v2, v22, v20

    or-int/2addr v0, v2

    const/high16 v2, 0x70000

    and-int v2, v22, v2

    or-int/2addr v0, v2

    const/high16 v2, 0x380000

    and-int v2, v22, v2

    or-int/2addr v0, v2

    const/high16 v2, 0x1c00000

    and-int v2, v22, v2

    or-int v19, v0, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v17, p7

    move-object/from16 v16, v12

    move-object/from16 v12, v25

    invoke-static/range {v11 .. v19}, Landroidx/navigation3/ui/NavDisplayKt;->a(Landroidx/navigation3/scene/SceneState;Landroidx/navigationevent/compose/NavigationEventState;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v0, v18

    goto :goto_21

    :cond_30
    move/from16 v23, v8

    const/16 v17, 0x1

    move-object/from16 v4, p3

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    goto/16 :goto_15

    :cond_31
    const-string v0, "NavDisplay entries cannot be empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_32
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_21
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_33

    new-instance v0, Lsg;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v2, v13

    invoke-direct/range {v0 .. v11}, Lsg;-><init>(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method

.method public static final c(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p4

    move-object/from16 v11, p10

    move/from16 v12, p12

    const-string v2, "NavDisplay"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_1
    const v3, 0x535ca750

    move-object/from16 v4, p11

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v12, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v12

    goto :goto_1

    :cond_3
    move v4, v12

    :goto_1
    or-int/lit16 v4, v4, 0x1b0

    and-int/lit16 v6, v12, 0xc00

    if-nez v6, :cond_5

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x800

    goto :goto_2

    :cond_4
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v4, v7

    goto :goto_3

    :cond_5
    move-object/from16 v6, p3

    :goto_3
    and-int/lit16 v7, v12, 0x6000

    if-nez v7, :cond_7

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x4000

    goto :goto_4

    :cond_6
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v4, v7

    :cond_7
    const/high16 v7, 0x30000

    and-int/2addr v7, v12

    if-nez v7, :cond_8

    const/high16 v7, 0x10000

    or-int/2addr v4, v7

    :cond_8
    const/high16 v7, 0x6d80000

    or-int/2addr v4, v7

    const/high16 v7, 0x30000000

    and-int/2addr v7, v12

    move-object/from16 v8, p7

    if-nez v7, :cond_a

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/high16 v7, 0x20000000

    goto :goto_5

    :cond_9
    const/high16 v7, 0x10000000

    :goto_5
    or-int/2addr v4, v7

    :cond_a
    invoke-virtual {v3, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x100

    goto :goto_6

    :cond_b
    const/16 v7, 0x80

    :goto_6
    const/16 v9, 0x36

    or-int/2addr v7, v9

    const v9, 0x12492493

    and-int/2addr v9, v4

    const v10, 0x12492492

    const/4 v13, 0x0

    if-ne v9, v10, :cond_d

    and-int/lit16 v9, v7, 0x93

    const/16 v10, 0x92

    if-eq v9, v10, :cond_c

    goto :goto_7

    :cond_c
    move v9, v13

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v9, 0x1

    :goto_8
    and-int/lit8 v10, v4, 0x1

    invoke-virtual {v3, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v9, v12, 0x1

    const v10, -0x70001

    if-eqz v9, :cond_f

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int v2, v4, v10

    move-object/from16 v15, p2

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    :goto_9
    move-object v14, v0

    goto :goto_b

    :cond_f
    :goto_a
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    new-instance v9, Landroidx/navigation3/scene/SinglePaneSceneStrategy;

    invoke-direct {v9}, Landroidx/navigation3/scene/SinglePaneSceneStrategy;-><init>()V

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    and-int/2addr v4, v10

    sget-object v10, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v15, v2

    move v2, v4

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    goto :goto_9

    :goto_b
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    and-int/lit8 v0, v2, 0xe

    shr-int/lit8 v4, v2, 0x9

    and-int/lit8 v9, v4, 0x70

    or-int/2addr v0, v9

    and-int/lit16 v7, v7, 0x380

    or-int/2addr v0, v7

    move-object v7, v1

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_10

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v9, :cond_14

    :cond_10
    instance-of v9, v1, Ljava/util/RandomAccess;

    if-eqz v9, :cond_12

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_c
    if-ge v13, v9, :cond_11

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/navigation3/runtime/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation3/runtime/NavEntry;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_11
    move-object v10, v7

    goto :goto_e

    :cond_12
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroidx/navigation3/runtime/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/navigation3/runtime/NavEntry;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_13
    move-object v10, v9

    :goto_e
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v10, Ljava/util/List;

    and-int/lit8 v0, v0, 0x70

    invoke-static {v10, v5, v3, v0}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt;->c(Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/Composer;I)Ljava/util/ArrayList;

    move-result-object v13

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit16 v0, v2, 0x3f0

    shr-int/lit8 v2, v2, 0x6

    const v7, 0xe000

    and-int/2addr v7, v2

    or-int/2addr v0, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v2

    or-int/2addr v0, v7

    const/high16 v7, 0x380000

    and-int/2addr v7, v2

    or-int/2addr v0, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v2, v7

    or-int/2addr v0, v2

    const/high16 v2, 0x36000000

    or-int v23, v0, v2

    and-int/lit8 v24, v4, 0xe

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move-object/from16 v22, v3

    move-object/from16 v21, v6

    move-object/from16 v18, v8

    invoke-static/range {v13 .. v24}, Landroidx/navigation3/ui/NavDisplayKt;->b(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    goto :goto_f

    :cond_15
    const-string v0, "NavDisplay backstack cannot be empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_16
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v2, v0

    :goto_f
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_17

    new-instance v0, Lf3;

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lf3;-><init>(Ljava/util/List;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/navigation3/runtime/a;I)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method

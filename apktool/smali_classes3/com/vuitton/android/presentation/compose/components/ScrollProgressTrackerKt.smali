.class public abstract Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "hasUserScrolled",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v7, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x51e03f5c

    move-object/from16 v3, p4

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v0, v7, 0x6

    const/4 v3, 0x4

    if-nez v0, :cond_1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    and-int/lit8 v4, v7, 0x30

    const/16 v5, 0x20

    if-nez v4, :cond_3

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_3
    and-int/lit16 v4, v7, 0x180

    const/16 v6, 0x100

    if-nez v4, :cond_5

    move/from16 v4, p2

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v6

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v0, v9

    goto :goto_4

    :cond_5
    move/from16 v4, p2

    :goto_4
    and-int/lit16 v9, v7, 0xc00

    if-nez v9, :cond_7

    move-object/from16 v9, p3

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_5

    :cond_6
    const/16 v11, 0x400

    :goto_5
    or-int/2addr v0, v11

    goto :goto_6

    :cond_7
    move-object/from16 v9, p3

    :goto_6
    and-int/lit16 v11, v0, 0x493

    const/16 v12, 0x492

    const/4 v13, 0x0

    if-eq v11, v12, :cond_8

    const/4 v11, 0x1

    goto :goto_7

    :cond_8
    move v11, v13

    :goto_7
    and-int/lit8 v12, v0, 0x1

    invoke-virtual {v8, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_17

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v12, :cond_9

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v11}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v11, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v12, :cond_a

    new-instance v15, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_f

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    move-result v16

    if-nez v16, :cond_b

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    move-result v16

    if-eqz v16, :cond_f

    :cond_b
    const v14, 0x119be86

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v14, v0, 0xe

    if-ne v14, v3, :cond_c

    const/4 v14, 0x1

    goto :goto_8

    :cond_c
    move v14, v13

    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v14, :cond_d

    if-ne v10, v12, :cond_e

    :cond_d
    new-instance v10, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$1$1;

    const/4 v14, 0x0

    invoke-direct {v10, v1, v11, v14}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_f
    const v10, 0x11dd99e

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    invoke-virtual {v15}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v10

    sget-object v14, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eq v10, v14, :cond_16

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_16

    if-lez v2, :cond_16

    const v10, 0x1215fe3

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    and-int/lit8 v11, v0, 0xe

    if-ne v11, v3, :cond_10

    const/4 v3, 0x1

    goto :goto_a

    :cond_10
    move v3, v13

    :goto_a
    and-int/lit16 v11, v0, 0x380

    if-ne v11, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_b

    :cond_11
    move v6, v13

    :goto_b
    or-int/2addr v3, v6

    and-int/lit8 v6, v0, 0x70

    if-ne v6, v5, :cond_12

    const/4 v5, 0x1

    goto :goto_c

    :cond_12
    move v5, v13

    :goto_c
    or-int/2addr v3, v5

    and-int/lit16 v0, v0, 0x1c00

    const/16 v5, 0x800

    if-ne v0, v5, :cond_13

    const/4 v14, 0x1

    goto :goto_d

    :cond_13
    move v14, v13

    :goto_d
    or-int v0, v3, v14

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_14

    if-ne v3, v12, :cond_15

    :cond_14
    new-instance v0, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1;

    const/4 v6, 0x0

    move v3, v2

    move v2, v4

    move-object v5, v9

    move-object v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$PaginatedScrollProgressTracker$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILandroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v10, v3, v8}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_16
    const v0, 0x132a9be

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_17
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v0, Lhu0;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lhu0;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/jvm/functions/Function1;I)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/ScrollState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x201ece34

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    and-int/lit8 v0, p3, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v2, p3, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit8 v2, v0, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v4, :cond_5

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_b

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->d()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollState;->b()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_7
    const v8, -0x1f1bf186

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v8, v0, 0xe

    if-ne v8, v1, :cond_8

    move v8, v6

    goto :goto_4

    :cond_8
    move v8, v5

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_9

    if-ne v10, v4, :cond_a

    :cond_9
    new-instance v10, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$4$1;

    invoke-direct {v10, p0, v2, v9}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$4$1;-><init>(Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p0, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_b
    const v8, -0x1f17e572

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v8

    sget-object v10, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v8, v10, :cond_10

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, -0x1f14e5d5

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v2, v0, 0xe

    if-ne v2, v1, :cond_c

    move v1, v6

    goto :goto_6

    :cond_c
    move v1, v5

    :goto_6
    and-int/lit8 v0, v0, 0x70

    if-ne v0, v3, :cond_d

    goto :goto_7

    :cond_d
    move v6, v5

    :goto_7
    or-int v0, v1, v6

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    if-ne v1, v4, :cond_f

    :cond_e
    new-instance v1, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$5$1;

    invoke-direct {v1, p0, v7, p1, v9}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$5$1;-><init>(Landroidx/compose/foundation/ScrollState;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_10
    const v0, -0x1f0bf032

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_11
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_12

    new-instance v0, Lg2;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, p1, p3, v1}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final c(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x51bf5159

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    and-int/lit8 v0, p3, 0x6

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v2, p3, 0x30

    const/16 v3, 0x20

    if-nez v2, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v0, v2

    :cond_3
    and-int/lit8 v2, v0, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v4, :cond_5

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_b

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->b()Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_7
    const v8, 0x6e19cb1

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v8, v0, 0xe

    if-ne v8, v1, :cond_8

    move v8, v6

    goto :goto_4

    :cond_8
    move v8, v5

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_9

    if-ne v10, v4, :cond_a

    :cond_9
    new-instance v10, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$1$1;

    invoke-direct {v10, p0, v2, v9}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$1$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p0, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_b
    const v8, 0x6e5b7c9

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_5
    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v8

    sget-object v10, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v8, v10, :cond_10

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    const v2, 0x6e8eafc

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v2, v0, 0xe

    if-ne v2, v1, :cond_c

    move v1, v6

    goto :goto_6

    :cond_c
    move v1, v5

    :goto_6
    and-int/lit8 v0, v0, 0x70

    if-ne v0, v3, :cond_d

    goto :goto_7

    :cond_d
    move v6, v5

    :goto_7
    or-int v0, v1, v6

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    if-ne v1, v4, :cond_f

    :cond_e
    new-instance v1, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$2$1;

    invoke-direct {v1, p0, v7, p1, v9}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt$ScrollProgressTracker$2$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_10
    const v0, 0x6f81fc9

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_11
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_12

    new-instance v0, Lg2;

    const/16 v1, 0x1c

    invoke-direct {v0, p0, p1, p3, v1}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

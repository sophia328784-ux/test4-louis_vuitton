.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;",
        "currentSelectedTab",
        "",
        "hasSyncedInitialTab",
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
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->DISCOVER:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;->FOR_YOU:Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p4

    move-object/from16 v6, p21

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x5c49a130

    move-object/from16 v3, p25

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p26, v0

    if-nez v2, :cond_1

    const/4 v7, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    :goto_1
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v0, v7

    move/from16 v12, p2

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x100

    goto :goto_3

    :cond_3
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v0, v7

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x4000

    goto :goto_4

    :cond_4
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v0, v7

    move-object/from16 v7, p5

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    const/high16 v17, 0x10000

    const/high16 v18, 0x20000

    if-eqz v16, :cond_5

    move/from16 v16, v18

    goto :goto_5

    :cond_5
    move/from16 v16, v17

    :goto_5
    or-int v0, v0, v16

    move-object/from16 v8, p6

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    const/high16 v20, 0x80000

    const/high16 v21, 0x100000

    if-eqz v19, :cond_6

    move/from16 v19, v21

    goto :goto_6

    :cond_6
    move/from16 v19, v20

    :goto_6
    or-int v0, v0, v19

    move-object/from16 v13, p7

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    const/high16 v23, 0x800000

    const/high16 v24, 0x400000

    if-eqz v22, :cond_7

    move/from16 v22, v23

    goto :goto_7

    :cond_7
    move/from16 v22, v24

    :goto_7
    or-int v0, v0, v22

    move-object/from16 v14, p8

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    const/high16 v26, 0x2000000

    const/high16 v27, 0x4000000

    if-eqz v25, :cond_8

    move/from16 v25, v27

    goto :goto_8

    :cond_8
    move/from16 v25, v26

    :goto_8
    or-int v0, v0, v25

    move-object/from16 v15, p9

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    const/high16 v29, 0x10000000

    const/high16 v30, 0x20000000

    if-eqz v28, :cond_9

    move/from16 v28, v30

    goto :goto_9

    :cond_9
    move/from16 v28, v29

    :goto_9
    or-int v0, v0, v28

    move-object/from16 v3, p10

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    const/16 v32, 0x4

    :goto_a
    move-object/from16 v11, p11

    goto :goto_b

    :cond_a
    const/16 v32, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_b

    const/16 v33, 0x20

    goto :goto_c

    :cond_b
    const/16 v33, 0x10

    :goto_c
    or-int v32, v32, v33

    move-object/from16 v4, p12

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_c

    const/16 v34, 0x100

    goto :goto_d

    :cond_c
    const/16 v34, 0x80

    :goto_d
    or-int v32, v32, v34

    move-object/from16 v5, p13

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    const/16 v36, 0x400

    const/16 v37, 0x800

    if-eqz v35, :cond_d

    move/from16 v35, v37

    goto :goto_e

    :cond_d
    move/from16 v35, v36

    :goto_e
    or-int v32, v32, v35

    move-object/from16 v11, p14

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    const/16 v35, 0x4000

    goto :goto_f

    :cond_e
    const/16 v35, 0x2000

    :goto_f
    or-int v32, v32, v35

    move-object/from16 v11, p15

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    move/from16 v17, v18

    :cond_f
    or-int v17, v32, v17

    move-object/from16 v11, p16

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    move/from16 v20, v21

    :cond_10
    or-int v17, v17, v20

    move-object/from16 v11, p17

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v23, v24

    :goto_10
    or-int v17, v17, v23

    move-object/from16 v11, p18

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    move/from16 v26, v27

    :cond_12
    or-int v17, v17, v26

    move/from16 v18, v0

    move-object/from16 v0, p19

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    move/from16 v29, v30

    :cond_13
    or-int v17, v17, v29

    move-object/from16 v0, p20

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/16 v20, 0x4

    goto :goto_11

    :cond_14
    const/16 v20, 0x2

    :goto_11
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    const/16 v16, 0x20

    goto :goto_12

    :cond_15
    const/16 v16, 0x10

    :goto_12
    or-int v16, v20, v16

    move-object/from16 v11, p22

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    const/16 v22, 0x100

    goto :goto_13

    :cond_16
    const/16 v22, 0x80

    :goto_13
    or-int v16, v16, v22

    move-object/from16 v11, p23

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    move/from16 v36, v37

    :cond_17
    or-int v16, v16, v36

    move-object/from16 v11, p24

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const/16 v25, 0x4000

    goto :goto_14

    :cond_18
    const/16 v25, 0x2000

    :goto_14
    or-int v0, v16, v25

    const v16, 0x12492493

    and-int v3, v18, v16

    const v4, 0x12492492

    if-ne v3, v4, :cond_1a

    and-int v3, v17, v16

    if-ne v3, v4, :cond_1a

    and-int/lit16 v3, v0, 0x2493

    const/16 v4, 0x2492

    if-eq v3, v4, :cond_19

    goto :goto_15

    :cond_19
    const/4 v3, 0x0

    goto :goto_16

    :cond_1a
    :goto_15
    const/4 v3, 0x1

    :goto_16
    and-int/lit8 v4, v18, 0x1

    invoke-virtual {v10, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v2, :cond_1b

    const/4 v3, -0x1

    :goto_17
    const/4 v4, -0x1

    goto :goto_18

    :cond_1b
    sget-object v3, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    goto :goto_17

    :goto_18
    if-eq v3, v4, :cond_1d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1d

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_19

    :cond_1c
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1d
    const/4 v3, 0x0

    :goto_19
    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v5, :cond_1e

    new-instance v4, Ltx;

    move/from16 v19, v0

    const/4 v0, 0x7

    invoke-direct {v4, v0}, Ltx;-><init>(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_1e
    move/from16 v19, v0

    :goto_1a
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x180

    const/4 v7, 0x2

    invoke-static {v3, v4, v10, v0, v7}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v3

    invoke-static {v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    const/4 v4, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    and-int/lit8 v4, v18, 0x70

    const/16 v8, 0x20

    if-ne v4, v8, :cond_1f

    const/16 v20, 0x1

    goto :goto_1b

    :cond_1f
    const/16 v20, 0x0

    :goto_1b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v20, :cond_20

    if-ne v8, v5, :cond_21

    :cond_20
    new-instance v8, Lss;

    const/16 v11, 0xb

    invoke-direct {v8, v2, v11}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    invoke-static {v7, v8, v10, v11}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v8, v8, v17

    and-int/lit8 v11, v19, 0x70

    move/from16 v19, v8

    const/16 v8, 0x20

    if-ne v11, v8, :cond_22

    const/4 v8, 0x1

    goto :goto_1c

    :cond_22
    const/4 v8, 0x0

    :goto_1c
    or-int v8, v19, v8

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    move/from16 v19, v8

    const/4 v8, 0x0

    if-nez v19, :cond_23

    if-ne v11, v5, :cond_24

    :cond_23
    new-instance v11, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$2$1;

    invoke-direct {v11, v3, v6, v0, v8}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$2$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v3, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v0, 0x20

    if-ne v4, v0, :cond_25

    const/4 v4, 0x1

    goto :goto_1d

    :cond_25
    const/4 v4, 0x0

    :goto_1d
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v4

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_26

    if-ne v4, v5, :cond_27

    :cond_26
    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;

    invoke-direct {v4, v2, v3, v7, v8}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$3$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v2, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const v7, 0xe000

    and-int v7, v18, v7

    const/16 v11, 0x4000

    if-ne v7, v11, :cond_28

    const/16 v17, 0x1

    goto :goto_1e

    :cond_28
    const/16 v17, 0x0

    :goto_1e
    or-int v4, v4, v17

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_29

    if-ne v7, v5, :cond_2a

    :cond_29
    new-instance v7, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;

    invoke-direct {v7, v1, v9, v8}, Lcom/vuitton/android/presentation/screen/feed/components/FeedScreenKt$FeedScreen$4$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v0, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lq8;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v7, p19

    move-object/from16 v8, p20

    invoke-direct/range {v0 .. v8}, Lq8;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    move-object v2, v3

    const v1, -0x6bd8ec74

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    new-instance v0, Lg0;

    const/16 v1, 0x1b

    move-object/from16 v5, p3

    invoke-direct {v0, v5, v1}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v1, -0x2c067b6

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    new-instance v0, Lgy;

    move-object/from16 v1, p0

    move-object/from16 v18, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v11, p15

    move-object/from16 v19, p22

    move-object/from16 v20, p23

    move-object/from16 v38, v10

    move v4, v12

    move-object v6, v14

    move-object/from16 v17, v15

    move/from16 v3, v16

    move-object/from16 v10, p14

    move-object/from16 v12, p16

    move-object/from16 v14, p18

    move-object/from16 v15, p24

    move-object/from16 v16, v13

    move-object/from16 v13, p17

    invoke-direct/range {v0 .. v20}, Lgy;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Landroidx/compose/foundation/pager/PagerState;ZZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    const v1, 0x4c61b0e1    # 5.9163524E7f

    move-object/from16 v13, v38

    invoke-static {v1, v0, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const v14, 0x30000c30

    const/16 v15, 0x1f5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1f

    :cond_2b
    move-object v13, v10

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2c

    move-object v1, v0

    new-instance v0, Lhy;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p26

    move-object/from16 v39, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v26}, Lhy;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;ZLandroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lqb0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ld1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    move-object/from16 v1, v39

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2c
    return-void
.end method

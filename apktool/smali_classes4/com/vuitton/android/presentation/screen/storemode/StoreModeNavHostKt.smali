.class public abstract Lcom/vuitton/android/presentation/screen/storemode/StoreModeNavHostKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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


# direct methods
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute;Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x3c060dc1

    move-object/from16 v2, p7

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    move-object/from16 v7, p1

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v1, v2

    move-object/from16 v3, p2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x100

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v1, v2

    move-object/from16 v2, p3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v1, v5

    move-object/from16 v5, p4

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x4000

    goto :goto_4

    :cond_4
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v1, v8

    move-object/from16 v8, p5

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    const/high16 v12, 0x20000

    if-eqz v11, :cond_5

    move v11, v12

    goto :goto_5

    :cond_5
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v1, v11

    move-object/from16 v11, p6

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/high16 v13, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v13, 0x80000

    :goto_6
    or-int/2addr v13, v1

    const v1, 0x92493

    and-int/2addr v1, v13

    const v15, 0x92492

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eq v1, v15, :cond_7

    move/from16 v1, v17

    goto :goto_7

    :cond_7
    move/from16 v1, v16

    :goto_7
    and-int/lit8 v15, v13, 0x1

    invoke-virtual {v10, v15, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v15, :cond_8

    new-instance v1, Ll01;

    const/16 v14, 0x9

    invoke-direct {v1, v14}, Ll01;-><init>(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_9

    new-instance v1, Ll01;

    const/16 v9, 0xa

    invoke-direct {v1, v9}, Ll01;-><init>(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_a

    new-instance v1, Ll01;

    const/16 v6, 0xb

    invoke-direct {v1, v6}, Ll01;-><init>(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_b

    new-instance v1, Ll01;

    const/16 v6, 0xc

    invoke-direct {v1, v6}, Ll01;-><init>(I)V

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v1, v13, 0x380

    if-eq v1, v4, :cond_c

    move/from16 v1, v16

    goto :goto_8

    :cond_c
    move/from16 v1, v17

    :goto_8
    const/high16 v4, 0x70000

    and-int/2addr v4, v13

    if-ne v4, v12, :cond_d

    move/from16 v4, v17

    goto :goto_9

    :cond_d
    move/from16 v4, v16

    :goto_9
    or-int/2addr v1, v4

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    and-int/lit16 v4, v13, 0x1c00

    const/16 v6, 0x800

    if-eq v4, v6, :cond_e

    move/from16 v4, v16

    goto :goto_a

    :cond_e
    move/from16 v4, v17

    :goto_a
    or-int/2addr v1, v4

    const v4, 0xe000

    and-int/2addr v4, v13

    const/16 v6, 0x4000

    if-ne v4, v6, :cond_f

    move/from16 v4, v17

    goto :goto_b

    :cond_f
    move/from16 v4, v16

    :goto_b
    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v13

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_10

    move/from16 v16, v17

    :cond_10
    or-int v1, v1, v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_11

    if-ne v4, v15, :cond_12

    :cond_11
    new-instance v0, Lg4;

    move-object v4, v2

    move-object v1, v3

    move-object v2, v8

    move-object v6, v11

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lg4;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_12
    check-cast v4, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v13, 0xe

    const/high16 v1, 0x36d80000

    or-int/2addr v0, v1

    and-int/lit8 v1, v13, 0x70

    or-int v11, v0, v1

    const/16 v12, 0x43c

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v9

    move-object v9, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v5, v14

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_13
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_14

    new-instance v0, Lo;

    const/16 v9, 0x16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method

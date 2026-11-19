.class public abstract Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutPrivacyMenuNavHostKt;
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
.method public static final a(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p5

    move-object/from16 v6, p6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x486cfcb8    # 242674.88f

    move-object/from16 v2, p7

    invoke-static {v7, v6, v2, v1}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

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

    move-object/from16 v2, p1

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    move-object/from16 v3, p2

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/16 v8, 0x100

    if-eqz v5, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v1, v5

    move-object/from16 v5, p3

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/16 v11, 0x800

    if-eqz v9, :cond_3

    move v9, v11

    goto :goto_3

    :cond_3
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v1, v9

    move-object/from16 v9, p4

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x4000

    if-eqz v12, :cond_4

    move v12, v13

    goto :goto_4

    :cond_4
    const/16 v12, 0x2000

    :goto_4
    or-int/2addr v1, v12

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/high16 v12, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v12, 0x10000

    :goto_5
    or-int/2addr v1, v12

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    const/high16 v15, 0x100000

    if-eqz v12, :cond_6

    move v12, v15

    goto :goto_6

    :cond_6
    const/high16 v12, 0x80000

    :goto_6
    or-int/2addr v12, v1

    const v1, 0x92493

    and-int/2addr v1, v12

    const v14, 0x92492

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eq v1, v14, :cond_7

    move/from16 v1, v17

    goto :goto_7

    :cond_7
    move/from16 v1, v16

    :goto_7
    and-int/lit8 v14, v12, 0x1

    invoke-virtual {v10, v14, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v14, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OpOutMenu;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OpOutMenu;

    and-int/lit8 v1, v12, 0x70

    if-ne v1, v4, :cond_8

    move/from16 v1, v17

    goto :goto_8

    :cond_8
    move/from16 v1, v16

    :goto_8
    and-int/lit16 v4, v12, 0x1c00

    if-ne v4, v11, :cond_9

    move/from16 v4, v17

    goto :goto_9

    :cond_9
    move/from16 v4, v16

    :goto_9
    or-int/2addr v1, v4

    const v4, 0xe000

    and-int/2addr v4, v12

    if-ne v4, v13, :cond_a

    move/from16 v4, v17

    goto :goto_a

    :cond_a
    move/from16 v4, v16

    :goto_a
    or-int/2addr v1, v4

    and-int/lit16 v4, v12, 0x380

    if-ne v4, v8, :cond_b

    move/from16 v4, v17

    goto :goto_b

    :cond_b
    move/from16 v4, v16

    :goto_b
    or-int/2addr v1, v4

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v12

    if-ne v4, v15, :cond_c

    move/from16 v4, v17

    goto :goto_c

    :cond_c
    move/from16 v4, v16

    :goto_c
    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v12

    const/high16 v8, 0x20000

    if-ne v4, v8, :cond_d

    move/from16 v16, v17

    :cond_d
    or-int v1, v1, v16

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v1, :cond_f

    :cond_e
    new-instance v0, Lnk;

    move-object v1, v2

    move-object v4, v3

    move-object v2, v5

    move-object v3, v9

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v7}, Lnk;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_f
    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v12, 0xe

    or-int/lit8 v11, v0, 0x30

    const/16 v12, 0x7fc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static/range {v0 .. v12}, Landroidx/navigation/compose/NavHostKt;->b(Landroidx/navigation/NavHostController;Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_d

    :cond_10
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_11

    new-instance v0, Lo;

    const/16 v9, 0x9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lo;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_11
    return-void
.end method

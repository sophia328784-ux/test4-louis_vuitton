.class public abstract Lcom/vuitton/android/presentation/screen/orders/OrderNavHostKt;
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
.method public static final a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7276f999

    move-object/from16 v2, p7

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p8, v1

    move-object/from16 v2, p1

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v1, v3

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v1, v3

    move-object/from16 v3, p3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v1, v5

    move-object/from16 v5, p4

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x4000

    goto :goto_4

    :cond_4
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v1, v7

    move-object/from16 v7, p5

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v10, 0x10000

    :goto_5
    or-int/2addr v1, v10

    move-object/from16 v10, p6

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

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

    invoke-virtual {v9, v15, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v11, :cond_8

    const-string v1, "list"

    move-object v15, v1

    goto :goto_8

    :cond_8
    move-object v15, v11

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v14, :cond_9

    new-instance v1, Lch0;

    const/16 v8, 0x12

    invoke-direct {v1, v8}, Lch0;-><init>(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_a

    new-instance v1, Lch0;

    const/16 v12, 0x13

    invoke-direct {v1, v12}, Lch0;-><init>(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_b

    new-instance v1, Lch0;

    const/16 v6, 0x14

    invoke-direct {v1, v6}, Lch0;-><init>(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v18, v1

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_c

    new-instance v1, Lch0;

    const/16 v6, 0x15

    invoke-direct {v1, v6}, Lch0;-><init>(I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v19, v1

    check-cast v19, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v1, v13, 0x70

    if-eq v1, v4, :cond_d

    move/from16 v1, v16

    goto :goto_9

    :cond_d
    move/from16 v1, v17

    :goto_9
    and-int/lit16 v4, v13, 0x1c00

    const/16 v6, 0x800

    if-ne v4, v6, :cond_e

    move/from16 v4, v17

    goto :goto_a

    :cond_e
    move/from16 v4, v16

    :goto_a
    or-int/2addr v1, v4

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v13

    const/high16 v6, 0x20000

    if-ne v4, v6, :cond_f

    move/from16 v4, v17

    goto :goto_b

    :cond_f
    move/from16 v4, v16

    :goto_b
    or-int/2addr v1, v4

    const v4, 0xe000

    and-int/2addr v4, v13

    const/16 v6, 0x4000

    if-ne v4, v6, :cond_10

    move/from16 v4, v17

    goto :goto_c

    :cond_10
    move/from16 v4, v16

    :goto_c
    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v13

    const/high16 v6, 0x100000

    if-ne v4, v6, :cond_11

    move/from16 v16, v17

    :cond_11
    or-int v1, v1, v16

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_12

    if-ne v4, v14, :cond_13

    :cond_12
    new-instance v0, Lg4;

    move-object v1, v2

    move-object v2, v3

    move-object v4, v7

    move-object v6, v10

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lg4;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function0;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_13
    check-cast v4, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v13, 0xe

    const/high16 v1, 0x6db0000

    or-int v10, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v8, v4

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v5, v12

    move-object v1, v15

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt;->c(Landroidx/navigation/NavHostController;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_d

    :cond_14
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_15

    new-instance v0, Lo;

    const/16 v9, 0xa

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v3, v11

    invoke-direct/range {v0 .. v9}, Lo;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final b(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    sget-boolean v0, Landroidx/navigation/NavController;->i:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "list"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/navigation/internal/NavControllerImpl;->q(Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/navigation/internal/NavControllerImpl;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;->u4()V

    return-void

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

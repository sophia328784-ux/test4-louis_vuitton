.class public abstract Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope$ComposeDefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComposeDefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    const-string v1, "TopBarAction$default"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x42f3fd30

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v12, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v11, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v11, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v11

    goto :goto_1

    :cond_3
    move v4, v11

    :goto_1
    and-int/lit8 v5, v11, 0x30

    if-nez v5, :cond_5

    move/from16 v5, p1

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    goto :goto_3

    :cond_5
    move/from16 v5, p1

    :goto_3
    and-int/lit16 v6, v11, 0x180

    if-nez v6, :cond_7

    move-object/from16 v6, p2

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v4, v7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p2

    :goto_5
    and-int/lit16 v7, v11, 0xc00

    if-nez v7, :cond_9

    move-object/from16 v7, p3

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x800

    goto :goto_6

    :cond_8
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v4, v8

    goto :goto_7

    :cond_9
    move-object/from16 v7, p3

    :goto_7
    and-int/lit16 v8, v11, 0x6000

    if-nez v8, :cond_b

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x4000

    goto :goto_8

    :cond_a
    const/16 v8, 0x2000

    :goto_8
    or-int/2addr v4, v8

    :cond_b
    and-int/lit8 v8, v12, 0x20

    const/high16 v10, 0x30000

    if-eqz v8, :cond_c

    :goto_9
    or-int/2addr v4, v10

    goto :goto_b

    :cond_c
    and-int/2addr v10, v11

    if-nez v10, :cond_f

    if-nez p5, :cond_d

    const/4 v10, -0x1

    goto :goto_a

    :cond_d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_a
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_e

    const/high16 v10, 0x20000

    goto :goto_9

    :cond_e
    const/high16 v10, 0x10000

    goto :goto_9

    :cond_f
    :goto_b
    and-int/lit8 v10, v12, 0x40

    const/high16 v13, 0x180000

    if-eqz v10, :cond_11

    or-int/2addr v4, v13

    :cond_10
    move-object/from16 v13, p6

    goto :goto_d

    :cond_11
    and-int/2addr v13, v11

    if-nez v13, :cond_10

    move-object/from16 v13, p6

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v14, 0x80000

    :goto_c
    or-int/2addr v4, v14

    :goto_d
    and-int/lit16 v14, v12, 0x80

    const/high16 v15, 0xc00000

    if-eqz v14, :cond_14

    or-int/2addr v4, v15

    :cond_13
    move/from16 v15, p7

    goto :goto_f

    :cond_14
    and-int/2addr v15, v11

    if-nez v15, :cond_13

    move/from16 v15, p7

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_15

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_15
    const/high16 v16, 0x400000

    :goto_e
    or-int v4, v4, v16

    :goto_f
    const/high16 v16, 0x6000000

    and-int v16, v11, v16

    if-nez v16, :cond_18

    const/high16 v16, 0x8000000

    and-int v16, v11, v16

    if-nez v16, :cond_16

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_10

    :cond_16
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    :goto_10
    if-eqz v16, :cond_17

    const/high16 v16, 0x4000000

    goto :goto_11

    :cond_17
    const/high16 v16, 0x2000000

    :goto_11
    or-int v4, v4, v16

    :cond_18
    const v16, 0x2492493

    move-object/from16 p0, v0

    and-int v0, v4, v16

    move/from16 p9, v3

    const v3, 0x2492492

    const/16 v16, 0x1

    if-eq v0, v3, :cond_19

    move/from16 v0, v16

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p9, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_13

    :cond_1a
    move-object/from16 v1, p0

    :goto_13
    if-eqz v8, :cond_1b

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;->Primary:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;

    move-object v6, v0

    goto :goto_14

    :cond_1b
    move-object/from16 v6, p5

    :goto_14
    if-eqz v10, :cond_1c

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_15

    :cond_1c
    move-object v7, v13

    :goto_15
    if-eqz v14, :cond_1d

    move/from16 v8, v16

    goto :goto_16

    :cond_1d
    move v8, v15

    :goto_16
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0xffffffe

    and-int v10, v4, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v9

    move-object v9, v2

    move v2, v5

    move-object/from16 v5, p4

    invoke-interface/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V

    goto :goto_17

    :cond_1e
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    move-object v7, v13

    move v8, v15

    :goto_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_1f

    new-instance v0, Lh41;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p8

    move v10, v11

    move v11, v12

    invoke-direct/range {v0 .. v11}, Lh41;-><init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/FloatingTopBarStyle;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

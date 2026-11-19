.class public abstract Lcom/vuitton/android/presentation/compose/components/DownloadIndicatorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "icon",
        "iterations",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;IILkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;II)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "DownloadIndicator"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->a:Z

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x48da68d8    # 447302.75f

    move-object/from16 v5, p6

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    and-int/lit8 v4, p8, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v5, p7, 0x6

    goto :goto_1

    :cond_1
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int v5, p7, v5

    :goto_1
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x20

    goto :goto_2

    :cond_3
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    and-int/lit8 v6, p8, 0x4

    if-nez v6, :cond_4

    move/from16 v6, p2

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    move/from16 v6, p2

    :cond_5
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v5, v7

    and-int/lit8 v7, p8, 0x8

    if-nez v7, :cond_6

    move/from16 v7, p3

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    move/from16 v7, p3

    :cond_7
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v5, v8

    move-object/from16 v14, p4

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v5, v8

    and-int/lit8 v8, p8, 0x20

    const/high16 v9, 0x30000

    if-eqz v8, :cond_9

    :goto_6
    or-int/2addr v5, v9

    goto :goto_8

    :cond_9
    and-int v9, p7, v9

    if-nez v9, :cond_c

    if-nez p5, :cond_a

    const/4 v9, -0x1

    goto :goto_7

    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_7
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v9, 0x10000

    goto :goto_6

    :cond_c
    :goto_8
    const v9, 0x12493

    and-int/2addr v9, v5

    const v10, 0x12492

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_d

    move v9, v11

    goto :goto_9

    :cond_d
    move v9, v12

    :goto_9
    and-int/lit8 v10, v5, 0x1

    invoke-virtual {v15, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v9, p7, 0x1

    if-eqz v9, :cond_11

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_f

    and-int/lit16 v5, v5, -0x381

    :cond_f
    and-int/lit8 v1, p8, 0x8

    if-eqz v1, :cond_10

    and-int/lit16 v5, v5, -0x1c01

    :cond_10
    move-object/from16 v4, p5

    move v1, v6

    :goto_a
    move v6, v5

    move-object v5, v0

    move v0, v7

    goto :goto_d

    :cond_11
    :goto_b
    if-eqz v4, :cond_12

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_12
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_13

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->t:I

    and-int/lit16 v5, v5, -0x381

    goto :goto_c

    :cond_13
    move v1, v6

    :goto_c
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_14

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->t:I

    and-int/lit16 v5, v5, -0x1c01

    move v7, v4

    :cond_14
    if-eqz v8, :cond_15

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_a

    :cond_15
    move-object/from16 v4, p5

    goto :goto_a

    :goto_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v8, :cond_16

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v7, Landroidx/compose/runtime/MutableIntState;

    if-eqz v3, :cond_17

    const v9, 0x957396

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->u:I

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_17
    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->c:Z

    if-eqz v9, :cond_18

    const v9, 0x96d2c2

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v9, 0x7f080207

    goto :goto_e

    :cond_18
    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;->b:Z

    if-eqz v9, :cond_19

    const v9, 0x98038d

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v9, v0

    goto :goto_e

    :cond_19
    const v9, 0x988a92

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v9, v1

    :goto_e
    invoke-interface {v7, v9}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    const v10, 0x7fffffff

    if-ne v9, v8, :cond_1a

    invoke-static {v10}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v9, Landroidx/compose/runtime/MutableIntState;

    if-eqz v3, :cond_1b

    goto :goto_f

    :cond_1b
    move v11, v10

    :goto_f
    invoke-interface {v9, v11}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    if-ne v4, v3, :cond_1c

    const v3, 0x9cea53

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_1c
    const v3, 0x9dd76d

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    invoke-interface {v7}, Landroidx/compose/runtime/IntState;->f()I

    move-result v7

    invoke-interface {v9}, Landroidx/compose/runtime/IntState;->f()I

    move-result v11

    and-int/lit8 v16, v6, 0xe

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v17, v6, 0xe

    const/16 v18, 0x378

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, v3

    invoke-static/range {v5 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move v3, v1

    move-object v6, v4

    move-object v1, v5

    move v4, v0

    goto :goto_11

    :cond_1d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    move v3, v6

    move v4, v7

    move-object/from16 v6, p5

    :goto_11
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v0, Ldv;

    move-object/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Ldv;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;IILkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method

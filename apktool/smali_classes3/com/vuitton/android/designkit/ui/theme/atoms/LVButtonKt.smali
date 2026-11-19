.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u00a8\u0006\u000f\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0008\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\t\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\r\u001a\u0004\u0018\u00010\u000c8\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000e\u001a\u00020\n8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/IntSize;",
        "size",
        "",
        "isPressed",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;",
        "border",
        "animatingBorder",
        "contentColor",
        "",
        "animatingRatio",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "progress",
        "system"
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
.field public static final a:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Lk40;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lk40;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V
    .locals 37

    move/from16 v10, p0

    move-object/from16 v0, p3

    move-object/from16 v7, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v11, p7

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v8, p11

    const-string v1, "ButtonInternal"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0xd39f890

    move-object/from16 v9, p2

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v2, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v9, v10, 0x6

    const/4 v12, 0x4

    if-nez v9, :cond_2

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v12

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v10

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    and-int/lit8 v14, v10, 0x30

    if-nez v14, :cond_4

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x20

    goto :goto_2

    :cond_3
    const/16 v14, 0x10

    :goto_2
    or-int/2addr v9, v14

    :cond_4
    and-int/lit16 v14, v10, 0x180

    if-nez v14, :cond_6

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x100

    goto :goto_3

    :cond_5
    const/16 v14, 0x80

    :goto_3
    or-int/2addr v9, v14

    :cond_6
    and-int/lit16 v14, v10, 0xc00

    if-nez v14, :cond_8

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/16 v14, 0x800

    goto :goto_4

    :cond_7
    const/16 v14, 0x400

    :goto_4
    or-int/2addr v9, v14

    :cond_8
    and-int/lit16 v14, v10, 0x6000

    if-nez v14, :cond_a

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v14, 0x4000

    goto :goto_5

    :cond_9
    const/16 v14, 0x2000

    :goto_5
    or-int/2addr v9, v14

    :cond_a
    const/high16 v14, 0x30000

    and-int/2addr v14, v10

    move-object/from16 v19, v2

    const/4 v2, 0x0

    if-nez v14, :cond_c

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v14, 0x10000

    :goto_6
    or-int/2addr v9, v14

    :cond_c
    const/high16 v14, 0x180000

    and-int/2addr v14, v10

    if-nez v14, :cond_e

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_d

    const/high16 v14, 0x100000

    goto :goto_7

    :cond_d
    const/high16 v14, 0x80000

    :goto_7
    or-int/2addr v9, v14

    :cond_e
    const/high16 v14, 0xc00000

    and-int/2addr v14, v10

    if-nez v14, :cond_11

    const/high16 v14, 0x1000000

    and-int/2addr v14, v10

    if-nez v14, :cond_f

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    goto :goto_8

    :cond_f
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    :goto_8
    if-eqz v14, :cond_10

    const/high16 v14, 0x800000

    goto :goto_9

    :cond_10
    const/high16 v14, 0x400000

    :goto_9
    or-int/2addr v9, v14

    :cond_11
    const/high16 v14, 0x6000000

    or-int/2addr v9, v14

    const/high16 v14, 0x30000000

    and-int/2addr v14, v10

    if-nez v14, :cond_13

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v14, 0x10000000

    :goto_a
    or-int/2addr v9, v14

    :cond_13
    and-int/lit8 v14, p1, 0x6

    if-nez v14, :cond_15

    move-object/from16 v14, p8

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    goto :goto_b

    :cond_14
    const/4 v12, 0x2

    :goto_b
    or-int v12, p1, v12

    goto :goto_c

    :cond_15
    move-object/from16 v14, p8

    move/from16 v12, p1

    :goto_c
    const v16, 0x12492493

    and-int v13, v9, v16

    const/16 v23, 0x3

    const v2, 0x12492492

    if-ne v13, v2, :cond_17

    and-int/lit8 v2, v12, 0x3

    const/4 v12, 0x2

    if-eq v2, v12, :cond_16

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    goto :goto_e

    :cond_17
    :goto_d
    const/4 v2, 0x1

    :goto_e
    and-int/lit8 v12, v9, 0x1

    invoke-virtual {v15, v12, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v12, :cond_18

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/ui/unit/IntSize;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/unit/IntSize;-><init>(J)V

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_19

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v3, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v4, 0x6

    invoke-static {v3, v15, v4}, Landroidx/compose/foundation/interaction/PressInteractionKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v12, :cond_1a

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    iget-wide v3, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a:J

    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_f

    :cond_1a
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    :goto_f
    move-object v3, v13

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1c

    if-nez v6, :cond_1b

    move v4, v9

    iget-wide v8, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->c:J

    goto :goto_10

    :cond_1b
    move v4, v9

    iget-wide v8, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->a:J

    goto :goto_10

    :cond_1c
    move v4, v9

    iget-wide v8, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->b:J

    :goto_10
    new-instance v13, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v13, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {v3, v13}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v12, :cond_1d

    iget-object v8, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    invoke-static {v8}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_1f

    if-nez v6, :cond_1e

    iget-object v9, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->k:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    goto :goto_11

    :cond_1e
    iget-object v9, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    goto :goto_11

    :cond_1f
    iget-object v9, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->j:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    :goto_11
    invoke-interface {v8, v9}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    instance-of v9, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;

    if-eqz v9, :cond_20

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;

    move-object/from16 v24, v3

    move/from16 v25, v4

    iget-wide v3, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;->a:J

    goto :goto_12

    :cond_20
    move-object/from16 v24, v3

    move/from16 v25, v4

    sget-object v3, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    :goto_12
    const/16 v9, 0x96

    sget-object v13, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    move-wide/from16 v16, v3

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v9, v3, v13, v4}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v14

    move-object v3, v12

    move-wide/from16 v35, v16

    move-object/from16 v16, v13

    move-wide/from16 v12, v35

    const/16 v17, 0x1b0

    const/16 v18, 0x8

    move-object/from16 v30, v15

    const-string v15, "animatingBorder"

    move-object/from16 v6, v16

    move-object/from16 v16, v30

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v18

    move-object/from16 v15, v16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_21

    iget-wide v12, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->d:J

    new-instance v14, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v14, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-virtual {v15, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v12, Landroidx/compose/runtime/MutableState;

    if-nez p10, :cond_22

    iget-wide v13, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->e:J

    goto :goto_13

    :cond_22
    iget-wide v13, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->d:J

    :goto_13
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v13, v14}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_15

    :cond_23
    if-eqz p10, :cond_24

    iget v4, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->l:F

    :goto_14
    const/4 v13, 0x0

    const/4 v14, 0x2

    goto :goto_16

    :cond_24
    :goto_15
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_14

    :goto_16
    invoke-static {v9, v13, v6, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    const/16 v16, 0xc30

    const/16 v17, 0x14

    const-string v14, "animatingRatio"

    move-object v13, v12

    move v12, v4

    move-object v4, v13

    move-object v13, v6

    invoke-static/range {v12 .. v17}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v6

    move-object v9, v15

    iget v12, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->m:F

    iget v13, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->m:F

    invoke-static {v0, v12}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_25

    new-instance v14, Lc30;

    move/from16 v15, v23

    invoke-direct {v14, v15, v2}, Lc30;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v14}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    and-int/lit8 v14, v25, 0x70

    const/16 v15, 0x20

    if-ne v14, v15, :cond_26

    const/4 v14, 0x1

    goto :goto_17

    :cond_26
    const/4 v14, 0x0

    :goto_17
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_27

    if-ne v15, v3, :cond_28

    :cond_27
    new-instance v15, Llt;

    const/16 v14, 0xa

    invoke-direct {v15, v11, v14}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v14, 0x0

    invoke-static {v12, v14, v15}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v17, 0x12

    move-object/from16 v16, p8

    move-object/from16 v34, v0

    move v0, v14

    move-object/from16 v14, v20

    move/from16 v20, v13

    move/from16 v13, p10

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v12

    if-eqz p10, :cond_29

    const v13, -0x596096c8

    invoke-static {v9, v13, v0, v1}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    goto :goto_18

    :cond_29
    const v13, -0x596093c4

    invoke-static {v9, v13, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->e:F

    invoke-static {v13, v14}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    invoke-interface {v12, v13}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v13

    iget-wide v14, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v9, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    if-eqz v19, :cond_37

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 p2, v0

    iget-boolean v0, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_2a

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_19

    :cond_2a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_19
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v13, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v14, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 p2, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v14, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v26, v4

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v12, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/unit/Density;

    move-object/from16 v16, v8

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Landroidx/compose/ui/unit/IntSize;

    iget-wide v10, v10, Landroidx/compose/ui/unit/IntSize;->a:J

    const/16 v17, 0x20

    shr-long v10, v10, v17

    long-to-int v10, v10

    invoke-interface {v12, v10}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v10

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/unit/IntSize;

    move-object/from16 p2, v4

    iget-wide v4, v11, Landroidx/compose/ui/unit/IntSize;->a:J

    const-wide v27, 0xffffffffL

    and-long v4, v4, v27

    long-to-int v4, v4

    invoke-interface {v12, v4}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v4

    invoke-static {v8, v10, v4}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_2b

    if-ne v8, v3, :cond_2c

    :cond_2b
    new-instance v8, Lya;

    const/4 v3, 0x3

    invoke-direct {v8, v6, v3}, Lya;-><init>(Landroidx/compose/runtime/State;I)V

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v8}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/graphics/Color;

    iget-wide v4, v4, Landroidx/compose/ui/graphics/Color;->a:J

    const/high16 v6, 0x40000000    # 2.0f

    div-float v8, v20, v6

    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v8

    invoke-static {v3, v4, v5, v8}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    instance-of v4, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;

    if-eqz v4, :cond_2d

    const v4, -0x55c35a54

    invoke-static {v9, v4, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton$Border$Stroke;->b:F

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/graphics/Color;

    iget-wide v10, v8, Landroidx/compose/ui/graphics/Color;->a:J

    div-float v6, v20, v6

    invoke-static {v6}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v6

    invoke-static {v4, v5, v10, v11, v6}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2d
    const/4 v5, 0x0

    const v4, -0x55bed620

    invoke-static {v9, v4, v5, v1}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    :goto_1a
    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v9, v5}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    if-nez p5, :cond_2e

    if-eqz p6, :cond_2f

    :cond_2e
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->h:Landroidx/compose/foundation/layout/PaddingValues;

    goto :goto_1b

    :cond_2f
    iget-object v3, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    :goto_1b
    invoke-static {v1, v3}, Lo60;->e(Ljava/lang/String;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v6, 0x30

    invoke-static {v5, v4, v9, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget-wide v5, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v9, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v19, :cond_36

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_30

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    :cond_30
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1c
    invoke-static {v9, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5, v9, v2, v9, v14}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v0, p2

    invoke-static {v9, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez p5, :cond_31

    const v0, 0x4e1a282c    # 6.4658099E8f

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v15, v9

    goto/16 :goto_21

    :cond_31
    const/4 v5, 0x0

    const v0, 0x4e1a282d    # 6.4658106E8f

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0, v9, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v12

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    const v0, 0x4ecab595

    invoke-static {v9, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v17, 0x0

    const/16 v18, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->n:F

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    move-object v14, v0

    goto :goto_1e

    :cond_32
    const/4 v5, 0x0

    const v0, 0x4ece6354

    invoke-static {v9, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->n:F

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :goto_1e
    if-eqz p11, :cond_33

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_1f
    move-wide v15, v2

    goto :goto_20

    :cond_33
    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->i:J

    goto :goto_1f

    :goto_20
    shr-int/lit8 v0, v25, 0xc

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int v18, v2, v0

    const/16 v19, 0x0

    const/4 v13, 0x0

    move-object/from16 v17, v9

    invoke-static/range {v12 .. v19}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v17

    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    if-nez p6, :cond_34

    const v0, 0x4e26cf11    # 6.9964704E8f

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v5, p9

    goto :goto_22

    :cond_34
    const v0, 0x4e26cf12    # 6.996471E8f

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v8, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v8, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v11, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v12, 0x0

    const/16 v13, 0xb

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v14

    new-instance v2, Li50;

    move/from16 v5, p9

    invoke-direct {v2, v0, v5}, Li50;-><init>(IZ)V

    const v0, -0x5ab48a53

    invoke-static {v0, v2, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    const v20, 0x180036

    const/16 v21, 0x1c

    sget-object v12, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v13, 0x1

    move-object/from16 v30, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v30

    invoke-static/range {v12 .. v21}, Landroidx/compose/animation/AnimatedVisibilityKt;->d(Landroidx/compose/foundation/layout/RowScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v19

    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_22
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_35

    const v0, 0x4e3fdf1a    # 8.0476736E8f

    invoke-static {v15, v0, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v12

    iget-object v0, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Color;

    iget-wide v13, v1, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v24, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    const/16 v23, 0x3

    shr-int/lit8 v1, v25, 0x3

    and-int/lit8 v31, v1, 0xe

    const/16 v32, 0x6180

    const v33, 0x1aff8

    move-object/from16 v30, v15

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v11, p7

    move-object/from16 v29, v0

    invoke-static/range {v11 .. v33}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v15, v30

    const/4 v13, 0x0

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_23
    const/4 v0, 0x1

    goto :goto_24

    :cond_35
    const/4 v13, 0x0

    const v0, 0x4e44ce1c    # 8.2546048E8f

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :goto_24
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_25

    :cond_36
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v22, 0x0

    throw v22

    :cond_37
    const/16 v22, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v22

    :cond_38
    move-object/from16 v34, v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_25
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_39

    new-instance v0, Lh50;

    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v2, p7

    move-object/from16 v9, p8

    move/from16 v6, p10

    move/from16 v8, p11

    move-object/from16 v1, v34

    invoke-direct/range {v0 .. v11}, Lh50;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;ZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_39
    return-void
.end method

.method public static final b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V
    .locals 25

    move/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    const-string v1, "LVButton"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x1b8e4599

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v10, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v10, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_3
    move v4, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_6

    and-int/lit8 v5, v10, 0x40

    if-nez v5, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    :cond_4
    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_3

    :cond_5
    const/16 v5, 0x10

    :goto_3
    or-int/2addr v4, v5

    :cond_6
    and-int/lit16 v5, v10, 0x180

    if-nez v5, :cond_8

    move-object/from16 v5, p7

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x100

    goto :goto_4

    :cond_7
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v4, v6

    goto :goto_5

    :cond_8
    move-object/from16 v5, p7

    :goto_5
    and-int/lit8 v6, v11, 0x8

    if-eqz v6, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v7, p5

    goto :goto_7

    :cond_a
    and-int/lit16 v7, v10, 0xc00

    if-nez v7, :cond_9

    move-object/from16 v7, p5

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_6

    :cond_b
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v4, v8

    :goto_7
    and-int/lit8 v8, v11, 0x10

    if-eqz v8, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-object/from16 v9, p6

    goto :goto_9

    :cond_d
    and-int/lit16 v9, v10, 0x6000

    if-nez v9, :cond_c

    move-object/from16 v9, p6

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v4, v12

    :goto_9
    and-int/lit8 v12, v11, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_10

    or-int/2addr v4, v13

    :cond_f
    move/from16 v13, p9

    goto :goto_b

    :cond_10
    and-int/2addr v13, v10

    if-nez v13, :cond_f

    move/from16 v13, p9

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v15, 0x10000

    :goto_a
    or-int/2addr v4, v15

    :goto_b
    const/high16 v15, 0x180000

    or-int/2addr v15, v4

    move-object/from16 v16, v0

    and-int/lit16 v0, v11, 0x80

    if-eqz v0, :cond_13

    const/high16 v15, 0xd80000

    or-int/2addr v15, v4

    :cond_12
    move/from16 v4, p10

    goto :goto_d

    :cond_13
    const/high16 v4, 0xc00000

    and-int/2addr v4, v10

    if-nez v4, :cond_12

    move/from16 v4, p10

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x800000

    goto :goto_c

    :cond_14
    const/high16 v17, 0x400000

    :goto_c
    or-int v15, v15, v17

    :goto_d
    move/from16 v17, v0

    and-int/lit16 v0, v11, 0x100

    const/high16 v18, 0x6000000

    if-eqz v0, :cond_16

    or-int v15, v15, v18

    :cond_15
    move/from16 v18, v0

    move/from16 v0, p11

    goto :goto_f

    :cond_16
    and-int v18, v10, v18

    if-nez v18, :cond_15

    move/from16 v18, v0

    move/from16 v0, p11

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x4000000

    goto :goto_e

    :cond_17
    const/high16 v19, 0x2000000

    :goto_e
    or-int v15, v15, v19

    :goto_f
    and-int/lit16 v0, v11, 0x200

    const/high16 v19, 0x30000000

    if-eqz v0, :cond_19

    or-int v15, v15, v19

    :cond_18
    move/from16 v19, v0

    move-object/from16 v0, p8

    goto :goto_11

    :cond_19
    and-int v19, v10, v19

    if-nez v19, :cond_18

    move/from16 v19, v0

    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/high16 v20, 0x20000000

    goto :goto_10

    :cond_1a
    const/high16 v20, 0x10000000

    :goto_10
    or-int v15, v15, v20

    :goto_11
    const v20, 0x12492493

    and-int v0, v15, v20

    const v2, 0x12492492

    const/16 v20, 0x0

    const/16 v21, 0x1

    if-eq v0, v2, :cond_1b

    move/from16 v0, v21

    goto :goto_12

    :cond_1b
    move/from16 v0, v20

    :goto_12
    and-int/lit8 v2, v15, 0x1

    invoke-virtual {v14, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz v3, :cond_1c

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_1c
    move-object/from16 v0, v16

    :goto_13
    const/4 v1, 0x0

    move/from16 v2, v17

    if-eqz v6, :cond_1d

    move-object/from16 v17, v1

    goto :goto_14

    :cond_1d
    move-object/from16 v17, v7

    :goto_14
    if-eqz v8, :cond_1e

    move/from16 v24, v18

    move-object/from16 v18, v1

    move/from16 v1, v24

    goto :goto_15

    :cond_1e
    move/from16 v1, v18

    move-object/from16 v18, v9

    :goto_15
    move/from16 v3, v21

    if-eqz v12, :cond_1f

    move/from16 v21, v20

    goto :goto_16

    :cond_1f
    move/from16 v21, v13

    :goto_16
    if-eqz v2, :cond_20

    move/from16 v22, v3

    goto :goto_17

    :cond_20
    move/from16 v22, v4

    :goto_17
    if-eqz v1, :cond_21

    move/from16 v23, v3

    goto :goto_18

    :cond_21
    move/from16 v23, p11

    :goto_18
    if-eqz v19, :cond_23

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v2, :cond_22

    new-instance v1, Lk40;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lk40;-><init>(I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object/from16 v20, v1

    goto :goto_19

    :cond_23
    move-object/from16 v20, p8

    :goto_19
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v1, v15, 0xe

    shr-int/lit8 v2, v15, 0x3

    and-int/lit8 v3, v2, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v2, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v2, 0x1c00

    or-int/2addr v1, v3

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v1, v3

    const/high16 v3, 0x380000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v2, v15, 0x12

    const/high16 v3, 0x1c00000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/high16 v2, 0x70000000

    shl-int/lit8 v3, v15, 0x3

    and-int/2addr v2, v3

    or-int v12, v1, v2

    shr-int/lit8 v1, v15, 0x1b

    and-int/lit8 v13, v1, 0xe

    move-object/from16 v16, p4

    move-object v15, v0

    move-object/from16 v19, v5

    invoke-static/range {v12 .. v23}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object v1, v15

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    goto :goto_1a

    :cond_24
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v7

    move v7, v4

    move-object v4, v1

    move/from16 v8, p11

    move-object v5, v9

    move v6, v13

    move-object/from16 v1, v16

    move-object/from16 v9, p8

    :goto_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_25

    new-instance v0, Lh50;

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v11}, Lh50;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZZZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_25
    return-void
.end method

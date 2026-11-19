.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isPressed",
        "Landroidx/compose/ui/unit/Dp;",
        "currentInnerPadding",
        "currentRadius",
        "isSelectedState",
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ZZFFLandroidx/compose/ui/graphics/Color;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    move-object/from16 v7, p5

    move-object/from16 v2, p6

    move-object/from16 v6, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    const-string v8, "ImageChipInternal-g0mVbm0"

    if-eqz v0, :cond_0

    invoke-static {v0, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v9, v0

    const v0, -0x6204a0a1

    move-object/from16 v4, p10

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v5, v11, 0x6

    const/4 v13, 0x2

    if-nez v5, :cond_2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    move v5, v13

    :goto_0
    or-int/2addr v5, v11

    goto :goto_1

    :cond_2
    move v5, v11

    :goto_1
    and-int/lit8 v14, v11, 0x30

    if-nez v14, :cond_4

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x20

    goto :goto_2

    :cond_3
    const/16 v14, 0x10

    :goto_2
    or-int/2addr v5, v14

    :cond_4
    and-int/lit16 v14, v11, 0x180

    move/from16 p0, v5

    if-nez v14, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v14

    if-eqz v14, :cond_5

    const/16 v14, 0x100

    goto :goto_3

    :cond_5
    const/16 v14, 0x80

    :goto_3
    or-int v14, p0, v14

    goto :goto_4

    :cond_6
    move/from16 v14, p0

    :goto_4
    and-int/lit16 v5, v11, 0xc00

    if-nez v5, :cond_8

    move/from16 v5, p3

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x800

    goto :goto_5

    :cond_7
    const/16 v16, 0x400

    :goto_5
    or-int v14, v14, v16

    goto :goto_6

    :cond_8
    move/from16 v5, p3

    :goto_6
    and-int/lit16 v12, v11, 0x6000

    if-nez v12, :cond_a

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x4000

    goto :goto_7

    :cond_9
    const/16 v16, 0x2000

    :goto_7
    or-int v14, v14, v16

    goto :goto_8

    :cond_a
    move/from16 v12, p4

    :goto_8
    const/high16 v16, 0x30000

    and-int v16, v11, v16

    if-nez v16, :cond_c

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/high16 v16, 0x20000

    goto :goto_9

    :cond_b
    const/high16 v16, 0x10000

    :goto_9
    or-int v14, v14, v16

    :cond_c
    const/high16 v16, 0x180000

    and-int v16, v11, v16

    if-nez v16, :cond_e

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_d
    const/high16 v16, 0x80000

    :goto_a
    or-int v14, v14, v16

    :cond_e
    const/high16 v16, 0xc00000

    and-int v16, v11, v16

    if-nez v16, :cond_10

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x800000

    goto :goto_b

    :cond_f
    const/high16 v15, 0x400000

    :goto_b
    or-int/2addr v14, v15

    :cond_10
    const/high16 v15, 0x6000000

    and-int/2addr v15, v11

    const/4 v3, 0x0

    if-nez v15, :cond_12

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_11

    const/high16 v15, 0x4000000

    goto :goto_c

    :cond_11
    const/high16 v15, 0x2000000

    :goto_c
    or-int/2addr v14, v15

    :cond_12
    const/high16 v15, 0x30000000

    and-int/2addr v15, v11

    if-nez v15, :cond_14

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/high16 v15, 0x20000000

    goto :goto_d

    :cond_13
    const/high16 v15, 0x10000000

    :goto_d
    or-int/2addr v14, v15

    :cond_14
    and-int/lit8 v15, p12, 0x6

    if-nez v15, :cond_16

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v15, 0x4

    goto :goto_e

    :cond_15
    move v15, v13

    :goto_e
    or-int v15, p12, v15

    move/from16 v19, v15

    goto :goto_f

    :cond_16
    move/from16 v19, p12

    :goto_f
    const v15, 0x12492493

    and-int/2addr v15, v14

    const v5, 0x12492492

    move/from16 v17, v14

    const/4 v14, 0x1

    if-ne v15, v5, :cond_18

    and-int/lit8 v5, v19, 0x3

    if-eq v5, v13, :cond_17

    goto :goto_10

    :cond_17
    move v5, v3

    goto :goto_11

    :cond_18
    :goto_10
    move v5, v14

    :goto_11
    and-int/lit8 v15, v17, 0x1

    invoke-virtual {v0, v15, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_2a

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->e:F

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v15

    iget v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    sget-object v18, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const v13, 0xca152b8

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v13, v17, 0x12

    and-int/lit8 v13, v13, 0xe

    invoke-static {v2, v0, v13}, Landroidx/compose/foundation/interaction/PressInteractionKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v20

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_19

    move v13, v12

    :goto_12
    move/from16 v21, v17

    goto :goto_13

    :cond_19
    if-eqz v1, :cond_1a

    move/from16 v13, p3

    goto :goto_12

    :cond_1a
    const/4 v13, 0x0

    goto :goto_12

    :goto_13
    const/16 v17, 0x0

    const/16 v22, 0x2

    const/16 v18, 0xe

    move v12, v13

    const/4 v13, 0x0

    move/from16 v23, v14

    const/4 v14, 0x0

    move/from16 v24, v15

    const/4 v15, 0x0

    move/from16 v16, v23

    move/from16 v23, v5

    move/from16 v5, v16

    move-object/from16 v16, v0

    move/from16 v0, v22

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v25

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_1c

    if-eqz v1, :cond_1b

    goto :goto_14

    :cond_1b
    move/from16 v12, v24

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 v12, v23

    :goto_15
    const/16 v17, 0x0

    const/16 v18, 0xe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v12

    move-object/from16 v13, v16

    if-nez v7, :cond_1f

    const v14, -0x786ed48a

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v14, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt$WhenMappings;->b:[I

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v5, :cond_1e

    if-ne v14, v0, :cond_1d

    const v0, 0xca1a8cb

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->y:J

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_1d
    const v0, 0xca1960c

    invoke-static {v13, v0, v3}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1e
    const v0, 0xca1a005

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :cond_1f
    const v0, 0xca1943b

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-wide v14, v7, Landroidx/compose/ui/graphics/Color;->a:J

    :goto_17
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v9, v0, v3}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move v5, v3

    const/4 v3, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v7, v17

    move/from16 v26, v21

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v17, v4

    move/from16 v4, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move v3, v4

    if-eqz v3, :cond_20

    const v4, -0x38e60a81

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v4, v16

    goto :goto_18

    :cond_20
    const v4, 0xca1e328

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->d:F

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    invoke-static {v0, v4}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move/from16 v4, v26

    and-int/lit16 v5, v4, 0x380

    const/16 v7, 0x100

    if-ne v5, v7, :cond_21

    const/4 v5, 0x1

    goto :goto_19

    :cond_21
    const/4 v5, 0x0

    :goto_19
    const/high16 v7, 0x70000000

    and-int/2addr v7, v4

    move/from16 v21, v4

    const/high16 v4, 0x20000000

    if-ne v7, v4, :cond_22

    const/4 v4, 0x1

    goto :goto_1a

    :cond_22
    const/4 v4, 0x0

    :goto_1a
    or-int/2addr v4, v5

    and-int/lit8 v5, v21, 0x70

    const/16 v7, 0x20

    if-ne v5, v7, :cond_23

    const/4 v5, 0x1

    goto :goto_1b

    :cond_23
    const/4 v5, 0x0

    :goto_1b
    or-int/2addr v4, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_24

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v4, :cond_25

    :cond_24
    new-instance v5, Lf60;

    invoke-direct {v5, v3, v1, v6}, Lf60;-><init>(ZZLkotlin/jvm/functions/Function1;)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v5, Lkotlin/jvm/functions/Function0;

    shr-int/lit8 v4, v21, 0xf

    and-int/lit8 v4, v4, 0x70

    invoke-static {v0, v2, v5, v13, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget-wide v1, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    if-eqz v17, :cond_29

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 p0, v1

    iget-boolean v1, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_26

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    :cond_26
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1c
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v9

    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v9}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v11, 0x3fc00000    # 1.5f

    invoke-static {v11, v14, v15}, Landroidx/compose/foundation/BorderStrokeKt;->a(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v11

    invoke-static/range {v24 .. v24}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v14

    iget v15, v11, Landroidx/compose/foundation/BorderStroke;->a:F

    iget-object v11, v11, Landroidx/compose/foundation/BorderStroke;->b:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v0, v15, v11, v14}, Landroidx/compose/foundation/BorderKt;->b(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v0, v13, v11}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v9}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Dp;

    iget v8, v8, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v0, v8}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Dp;

    iget v8, v8, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v8}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v8

    invoke-static {v0, v8}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v11, 0x0

    invoke-static {v4, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    iget-wide v8, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v17, :cond_28

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_27

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1d

    :cond_27
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1d
    invoke-static {v13, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v13, v3, v13, v2}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v13, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    shl-int/lit8 v0, v19, 0x3

    and-int/lit8 v0, v0, 0x70

    const/4 v1, 0x6

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v10, v1, v13, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_28
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_29
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_2a
    move-object v13, v0

    move-object/from16 v20, v9

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2b

    new-instance v0, Lg60;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v1, v20

    invoke-direct/range {v0 .. v12}, Lg60;-><init>(Landroidx/compose/ui/Modifier;ZZFFLandroidx/compose/ui/graphics/Color;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;Landroidx/compose/ui/graphics/Color;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v9, p9

    const-string v1, "LVImageChip-eq_XX3s"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x184864b6

    move-object/from16 v3, p8

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p10, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v5, v9, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v5, v9, 0x6

    if-nez v5, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v9

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    and-int/lit8 v6, v9, 0x30

    move/from16 v11, p1

    if-nez v6, :cond_5

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v5, v6

    :cond_5
    and-int/lit8 v6, p10, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v5, v5, 0x180

    :cond_6
    move/from16 v7, p2

    goto :goto_4

    :cond_7
    and-int/lit16 v7, v9, 0x180

    if-nez v7, :cond_6

    move/from16 v7, p2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_3

    :cond_8
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v5, v8

    :goto_4
    and-int/lit8 v8, p10, 0x8

    const/4 v10, -0x1

    if-eqz v8, :cond_9

    or-int/lit16 v5, v5, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_c

    if-nez p3, :cond_a

    move v12, v10

    goto :goto_5

    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    :goto_5
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v5, v12

    :cond_c
    :goto_7
    and-int/lit8 v12, p10, 0x10

    if-eqz v12, :cond_e

    or-int/lit16 v5, v5, 0x6000

    :cond_d
    move-object/from16 v13, p4

    goto :goto_9

    :cond_e
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_d

    move-object/from16 v13, p4

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/16 v14, 0x4000

    goto :goto_8

    :cond_f
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v5, v14

    :goto_9
    const/high16 v14, 0x30000

    or-int/2addr v14, v5

    and-int/lit8 v15, p10, 0x40

    if-eqz v15, :cond_10

    const/high16 v10, 0x1b0000

    or-int v14, v5, v10

    goto :goto_c

    :cond_10
    const/high16 v5, 0x180000

    and-int/2addr v5, v9

    if-nez v5, :cond_13

    if-nez p5, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_a
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/high16 v5, 0x100000

    goto :goto_b

    :cond_12
    const/high16 v5, 0x80000

    :goto_b
    or-int/2addr v14, v5

    :cond_13
    :goto_c
    const/high16 v5, 0xc00000

    and-int/2addr v5, v9

    if-nez v5, :cond_15

    move-object/from16 v5, p6

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/high16 v10, 0x800000

    goto :goto_d

    :cond_14
    const/high16 v10, 0x400000

    :goto_d
    or-int/2addr v14, v10

    goto :goto_e

    :cond_15
    move-object/from16 v5, p6

    :goto_e
    const/high16 v10, 0x6000000

    and-int v16, v9, v10

    move/from16 p0, v10

    move-object/from16 v10, p7

    if-nez v16, :cond_17

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    const/high16 v16, 0x4000000

    goto :goto_f

    :cond_16
    const/high16 v16, 0x2000000

    :goto_f
    or-int v14, v14, v16

    :cond_17
    const v16, 0x2492493

    and-int v4, v14, v16

    move-object/from16 v16, v0

    const v0, 0x2492492

    move/from16 v17, v3

    const/4 v3, 0x1

    if-eq v4, v0, :cond_18

    move v0, v3

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz v17, :cond_19

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_19
    move-object/from16 v0, v16

    :goto_11
    move v1, v12

    if-eqz v6, :cond_1a

    move v12, v3

    goto :goto_12

    :cond_1a
    move v12, v7

    :goto_12
    if-eqz v8, :cond_1b

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;->MEDIUM:Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;

    goto :goto_13

    :cond_1b
    move-object/from16 v4, p3

    :goto_13
    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    move/from16 v23, v15

    move-object v15, v1

    move/from16 v1, v23

    goto :goto_14

    :cond_1c
    move v1, v15

    move-object v15, v13

    :goto_14
    if-eqz v1, :cond_1d

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object/from16 v17, v1

    goto :goto_15

    :cond_1d
    move-object/from16 v17, p5

    :goto_15
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v1, v6

    if-eq v6, v3, :cond_1f

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1e

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v6, 0x42d00000    # 104.0f

    goto :goto_16

    :cond_1e
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1f
    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v6, 0x42800000    # 64.0f

    :goto_16
    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v1, v7

    if-eq v7, v3, :cond_21

    const/4 v8, 0x2

    if-ne v7, v8, :cond_20

    const v7, -0x27c1a34e

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_17
    move v13, v7

    goto :goto_18

    :cond_20
    const/4 v8, 0x0

    const v0, -0x27c1b628

    invoke-static {v2, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_21
    const/4 v8, 0x0

    const v7, -0x27c1acce

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_17

    :goto_18
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v3, :cond_23

    const/4 v7, 0x2

    if-ne v1, v7, :cond_22

    const v1, -0x27c18dad

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_22
    const v0, -0x27c19c88

    invoke-static {v2, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_23
    const v1, -0x27c19674

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/high16 v1, 0x40c00000    # 6.0f

    :goto_19
    const v3, 0x2f91e6d1

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v7, :cond_24

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v16, v3

    check-cast v16, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    and-int/lit8 v3, v14, 0x70

    or-int v3, v3, p0

    and-int/lit16 v7, v14, 0x380

    or-int/2addr v3, v7

    shl-int/lit8 v7, v14, 0x3

    const/high16 v8, 0x70000

    and-int/2addr v8, v7

    or-int/2addr v3, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v7, v8

    or-int/2addr v3, v7

    const/high16 v7, 0x70000000

    shl-int/lit8 v8, v14, 0x6

    and-int/2addr v7, v8

    or-int v21, v3, v7

    shr-int/lit8 v3, v14, 0x18

    and-int/lit8 v22, v3, 0xe

    move v14, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v10

    move-object v10, v6

    invoke-static/range {v10 .. v22}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt;->a(Landroidx/compose/ui/Modifier;ZZFFLandroidx/compose/ui/graphics/Color;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v0

    move v3, v12

    move-object v5, v15

    move-object/from16 v6, v17

    goto :goto_1a

    :cond_25
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move v3, v7

    move-object v5, v13

    move-object/from16 v1, v16

    :goto_1a
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_26

    new-instance v0, Lai;

    move/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lai;-><init>(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipSize;Landroidx/compose/ui/graphics/Color;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method

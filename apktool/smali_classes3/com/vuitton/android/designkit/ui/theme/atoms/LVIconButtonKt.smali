.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u00a8\u0006\r\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0008\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\n\u001a\u00020\t8\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u000c\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "isPressed",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;",
        "border",
        "animatingBorder",
        "Lcom/airbnb/lottie/LottieComposition;",
        "composition",
        "",
        "progress",
        "",
        "icon",
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

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Lk40;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lk40;-><init>(I)V

    new-instance v1, Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;IZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 36

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v1, p9

    const-string v12, "IconButtonInternal-_6lLnCg"

    if-eqz v0, :cond_0

    invoke-static {v0, v12}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, -0x775096ee

    move-object/from16 v9, p8

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v9, v1, 0x6

    const/4 v10, 0x4

    if-nez v9, :cond_2

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    and-int/lit8 v13, v1, 0x30

    const/16 v14, 0x10

    const/16 v15, 0x20

    if-nez v13, :cond_4

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move v13, v15

    goto :goto_2

    :cond_3
    move v13, v14

    :goto_2
    or-int/2addr v9, v13

    :cond_4
    and-int/lit16 v13, v1, 0x180

    if-nez v13, :cond_6

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x100

    goto :goto_3

    :cond_5
    const/16 v13, 0x80

    :goto_3
    or-int/2addr v9, v13

    :cond_6
    and-int/lit16 v13, v1, 0xc00

    move/from16 p0, v9

    if-nez v13, :cond_8

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/16 v13, 0x800

    goto :goto_4

    :cond_7
    const/16 v13, 0x400

    :goto_4
    or-int v13, p0, v13

    goto :goto_5

    :cond_8
    move/from16 v13, p0

    :goto_5
    and-int/lit16 v9, v1, 0x6000

    move/from16 v16, v9

    const v20, 0x8000

    if-nez v16, :cond_b

    and-int v16, v1, v20

    if-nez v16, :cond_9

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_6

    :cond_9
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    :goto_6
    if-eqz v16, :cond_a

    const/16 v16, 0x4000

    goto :goto_7

    :cond_a
    const/16 v16, 0x2000

    :goto_7
    or-int v13, v13, v16

    :cond_b
    const/high16 v16, 0x30000

    and-int v16, v1, v16

    const/4 v9, 0x1

    if-nez v16, :cond_d

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_c
    const/high16 v16, 0x10000

    :goto_8
    or-int v13, v13, v16

    :cond_d
    const/high16 v16, 0x180000

    and-int v16, v1, v16

    const/4 v11, 0x0

    if-nez v16, :cond_f

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x100000

    goto :goto_9

    :cond_e
    const/high16 v16, 0x80000

    :goto_9
    or-int v13, v13, v16

    :cond_f
    const/high16 v16, 0xc00000

    or-int v13, v13, v16

    const/high16 v16, 0x6000000

    and-int v16, v1, v16

    move/from16 v11, p5

    if-nez v16, :cond_11

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x2000000

    :goto_a
    or-int v13, v13, v16

    :cond_11
    const/high16 v16, 0x30000000

    and-int v16, v1, v16

    if-nez v16, :cond_13

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_12

    const/high16 v16, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v16, 0x10000000

    :goto_b
    or-int v13, v13, v16

    :cond_13
    and-int/lit8 v16, p10, 0x6

    if-nez v16, :cond_15

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_14

    goto :goto_c

    :cond_14
    const/4 v10, 0x2

    :goto_c
    or-int v10, p10, v10

    goto :goto_d

    :cond_15
    move/from16 v10, p10

    :goto_d
    and-int/lit8 v16, p10, 0x30

    if-nez v16, :cond_17

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_16

    move v14, v15

    :cond_16
    or-int/2addr v10, v14

    :cond_17
    const v14, 0x12492493

    and-int/2addr v14, v13

    const v15, 0x12492492

    if-ne v14, v15, :cond_19

    and-int/lit8 v10, v10, 0x13

    const/16 v14, 0x12

    if-eq v10, v14, :cond_18

    goto :goto_e

    :cond_18
    const/4 v10, 0x0

    goto :goto_f

    :cond_19
    :goto_e
    move v10, v9

    :goto_f
    and-int/lit8 v14, v13, 0x1

    invoke-virtual {v6, v14, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_34

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v14, :cond_1a

    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v10, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v15, 0x6

    invoke-static {v10, v6, v15}, Landroidx/compose/foundation/interaction/PressInteractionKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    move-result-object v15

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v14, :cond_1b

    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    new-instance v9, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v9, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v9, Landroidx/compose/runtime/MutableState;

    if-nez p6, :cond_1d

    iget-object v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->d:Landroidx/compose/ui/graphics/Color;

    if-eqz v7, :cond_1c

    iget-wide v7, v7, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_10

    :cond_1c
    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    goto :goto_10

    :cond_1d
    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1e

    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->a:J

    goto :goto_10

    :cond_1e
    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->b:J

    :goto_10
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_1f

    iget-object v1, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_20

    iget-object v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    goto :goto_11

    :cond_20
    iget-object v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->i:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    :goto_11
    invoke-interface {v1, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    instance-of v7, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;

    if-eqz v7, :cond_21

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;->a:J

    goto :goto_13

    :cond_21
    iget-object v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->h:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    instance-of v8, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;

    if-eqz v8, :cond_22

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;->a:J

    goto :goto_12

    :cond_22
    sget-object v7, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v7, Landroidx/compose/ui/graphics/Color;->h:J

    :goto_12
    const/4 v15, 0x0

    invoke-static {v15, v7, v8}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v7

    :goto_13
    const/16 v15, 0x96

    move-object/from16 v24, v1

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    move-object/from16 v18, v6

    move-wide/from16 v16, v7

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v15, v6, v1, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v15

    move-object/from16 v30, v18

    const/16 v18, 0x1b0

    const/16 v19, 0x8

    move v1, v13

    move-object v7, v14

    move-wide/from16 v13, v16

    const-string v16, "animatingBorder"

    move-object/from16 v17, v30

    invoke-static/range {v13 .. v19}, Landroidx/compose/animation/SingleValueAnimationKt;->b(JLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v13

    move-object/from16 v14, v17

    sget-object v15, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v15}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    move-object/from16 v16, v7

    iget-wide v6, v9, Landroidx/compose/ui/graphics/Color;->a:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v8, v6, v7, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    if-eqz p7, :cond_26

    const v7, 0x34d561fa

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v9, 0x0

    const/16 v11, 0x12

    move-object v7, v6

    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move-object/from16 v34, v0

    move-object v0, v7

    move-object v8, v10

    move-object/from16 p8, v13

    move-object/from16 v35, v16

    const/16 v13, 0x800

    move/from16 v7, p6

    move-object/from16 v10, p7

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    and-int/lit16 v7, v1, 0x1c00

    if-ne v7, v13, :cond_23

    const/4 v9, 0x1

    goto :goto_14

    :cond_23
    const/4 v9, 0x0

    :goto_14
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v8, v35

    if-nez v9, :cond_24

    if-ne v7, v8, :cond_25

    :cond_24
    new-instance v7, Llt;

    const/16 v9, 0xd

    invoke-direct {v7, v4, v9}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x0

    invoke-static {v6, v9, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_26
    move-object/from16 v34, v0

    move-object v0, v6

    move-object/from16 p8, v13

    move-object/from16 v8, v16

    const/4 v9, 0x0

    const v6, 0x34e18cc0

    invoke-static {v14, v6, v9, v12}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    :goto_15
    invoke-interface {v0, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    instance-of v6, v6, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;

    if-eqz v6, :cond_27

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border$Stroke;->b:F

    invoke-interface/range {p8 .. p8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/graphics/Color;

    iget-wide v9, v9, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-static {v6, v7, v9, v10, v15}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    goto :goto_16

    :cond_27
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-interface {v0, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v6

    iget-wide v9, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_33

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_28

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_28
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_17
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "drawable"

    const/4 v9, 0x0

    invoke-static {v6, v7, v9}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    const/16 v7, 0xe

    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    if-eqz v6, :cond_2a

    const v0, -0xa4aac0a

    invoke-static {v14, v0, v12}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    iget-object v6, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v3, :cond_29

    iget v6, v3, Landroidx/compose/ui/unit/Dp;->b:F

    goto :goto_18

    :cond_29
    iget v6, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    :goto_18
    invoke-static {v0, v6}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v10, v0, v6}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    shr-int/lit8 v0, v1, 0x3

    and-int/2addr v0, v7

    invoke-static {v2, v14, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v13

    iget-wide v0, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->e:J

    const/16 v19, 0x38

    const/16 v20, 0x0

    move-object/from16 v30, v14

    const/4 v14, 0x0

    move-wide/from16 v16, v0

    move-object/from16 v18, v30

    invoke-static/range {v13 .. v20}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v14, v18

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_19
    const/4 v0, 0x1

    goto/16 :goto_1d

    :cond_2a
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "raw"

    invoke-static {v0, v6, v9}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_32

    const v0, -0xa40dda5

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v0, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    invoke-direct {v0, v2}, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;-><init>(I)V

    invoke-static {v0, v14, v9}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->c(Lcom/airbnb/lottie/compose/LottieCompositionSpec;Landroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v18, 0x3be

    move-object/from16 v30, v14

    const/4 v14, 0x0

    move/from16 v16, p5

    move-object/from16 v17, v30

    invoke-static/range {v13 .. v18}, Lcom/airbnb/lottie/compose/AnimateLottieCompositionAsStateKt;->a(Lcom/airbnb/lottie/LottieComposition;ZLcom/airbnb/lottie/compose/LottieClipSpec$Frame;ILandroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v6

    move-object/from16 v14, v17

    const-string v11, "**"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/airbnb/lottie/LottieProperty;->I:Landroid/graphics/ColorFilter;

    const/high16 v15, 0x70000

    and-int/2addr v15, v1

    const/high16 v9, 0x20000

    if-ne v15, v9, :cond_2b

    const/4 v9, 0x1

    goto :goto_1a

    :cond_2b
    const/4 v9, 0x0

    :goto_1a
    const v15, 0xe000

    and-int/2addr v15, v1

    const/16 v7, 0x4000

    if-eq v15, v7, :cond_2d

    and-int v1, v1, v20

    if-eqz v1, :cond_2c

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_1b

    :cond_2c
    const/4 v1, 0x0

    goto :goto_1c

    :cond_2d
    :goto_1b
    const/4 v1, 0x1

    :goto_1c
    or-int/2addr v1, v9

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v1, :cond_2e

    if-ne v7, v8, :cond_2f

    :cond_2e
    new-instance v7, Ll00;

    const/16 v1, 0xe

    invoke-direct {v7, v5, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2f
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v11, v7, v14}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->c(Landroid/graphics/ColorFilter;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v1

    filled-new-array {v1}, [Lcom/airbnb/lottie/compose/LottieDynamicProperty;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/airbnb/lottie/compose/LottieDynamicPropertiesKt;->a([Lcom/airbnb/lottie/compose/LottieDynamicProperty;Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieDynamicProperties;

    move-result-object v22

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->g:Landroidx/compose/foundation/layout/PaddingValues;

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v7, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;->f:F

    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v10, v1, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-virtual {v0}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v13

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_30

    if-ne v1, v8, :cond_31

    :cond_30
    new-instance v1, Lx;

    const/4 v0, 0x5

    invoke-direct {v1, v6, v0}, Lx;-><init>(Lcom/airbnb/lottie/compose/LottieAnimationState;I)V

    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/16 v32, 0x0

    const v33, 0x1fdf8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v31, 0x40000000    # 2.0f

    move-object/from16 v30, v14

    move-object v14, v1

    invoke-static/range {v13 .. v33}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v30

    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_19

    :cond_32
    const v0, -0xa2c4aea

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_19

    :goto_1d
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1e

    :cond_33
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_34
    move-object/from16 v34, v0

    move-object v14, v6

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1e
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_35

    new-instance v0, Lmm;

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v1, v34

    invoke-direct/range {v0 .. v10}, Lmm;-><init>(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;IZLkotlin/jvm/functions/Function0;II)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_35
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v13, p13

    const-string v1, "LVIconButton--Ps0j-Y"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x639432a5

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v3, v13, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v6, v11, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v11, 0x6

    if-nez v6, :cond_3

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v11

    goto :goto_1

    :cond_3
    move v6, v11

    :goto_1
    and-int/lit8 v7, v11, 0x30

    if-nez v7, :cond_6

    and-int/lit8 v7, v11, 0x40

    if-nez v7, :cond_4

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    :goto_2
    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_3

    :cond_5
    const/16 v7, 0x10

    :goto_3
    or-int/2addr v6, v7

    :cond_6
    and-int/lit16 v7, v11, 0x180

    if-nez v7, :cond_8

    move/from16 v7, p2

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v6, v9

    goto :goto_5

    :cond_8
    move/from16 v7, p2

    :goto_5
    and-int/lit8 v9, v13, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move-object/from16 v10, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v11, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v6, v12

    :goto_7
    and-int/lit8 v12, v13, 0x10

    if-eqz v12, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move-object/from16 v14, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v11, 0x6000

    if-nez v14, :cond_c

    move-object/from16 v14, p4

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/16 v15, 0x4000

    goto :goto_8

    :cond_e
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v6, v15

    :goto_9
    const/high16 v15, 0x1b0000

    or-int/2addr v15, v6

    and-int/lit16 v4, v13, 0x80

    if-eqz v4, :cond_10

    const/high16 v15, 0xdb0000

    or-int/2addr v15, v6

    :cond_f
    move/from16 v6, p6

    goto :goto_b

    :cond_10
    const/high16 v6, 0xc00000

    and-int/2addr v6, v11

    if-nez v6, :cond_f

    move/from16 v6, p6

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x800000

    goto :goto_a

    :cond_11
    const/high16 v16, 0x400000

    :goto_a
    or-int v15, v15, v16

    :goto_b
    and-int/lit16 v5, v13, 0x100

    const/high16 v16, 0x6000000

    if-eqz v5, :cond_13

    or-int v15, v15, v16

    :cond_12
    move-object/from16 v16, v0

    move/from16 v0, p7

    goto :goto_d

    :cond_13
    and-int v16, v11, v16

    if-nez v16, :cond_12

    move-object/from16 v16, v0

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_14

    const/high16 v17, 0x4000000

    goto :goto_c

    :cond_14
    const/high16 v17, 0x2000000

    :goto_c
    or-int v15, v15, v17

    :goto_d
    const/high16 v17, 0x30000000

    or-int v15, v15, v17

    and-int/lit16 v0, v13, 0x400

    if-eqz v0, :cond_15

    or-int/lit8 v17, p12, 0x6

    move/from16 v18, v17

    move/from16 v17, v0

    move-object/from16 v0, p9

    goto :goto_f

    :cond_15
    and-int/lit8 v17, p12, 0x6

    if-nez v17, :cond_17

    move/from16 v17, v0

    move-object/from16 v0, p9

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    const/16 v18, 0x4

    goto :goto_e

    :cond_16
    const/16 v18, 0x2

    :goto_e
    or-int v18, p12, v18

    goto :goto_f

    :cond_17
    move/from16 v17, v0

    move-object/from16 v0, p9

    move/from16 v18, p12

    :goto_f
    const v19, 0x12492493

    and-int v0, v15, v19

    const v2, 0x12492492

    const/16 v19, 0x1

    if-ne v0, v2, :cond_19

    and-int/lit8 v0, v18, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    goto :goto_11

    :cond_19
    :goto_10
    move/from16 v0, v19

    :goto_11
    and-int/lit8 v2, v15, 0x1

    invoke-virtual {v8, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz v3, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_1a
    move-object/from16 v0, v16

    :goto_12
    const/4 v1, 0x0

    if-eqz v9, :cond_1b

    move-object v2, v1

    goto :goto_13

    :cond_1b
    move-object v2, v10

    :goto_13
    if-eqz v12, :cond_1c

    const-string v3, ""

    goto :goto_14

    :cond_1c
    move-object v3, v14

    :goto_14
    if-eqz v4, :cond_1d

    const v4, 0x7fffffff

    move/from16 v20, v5

    move v5, v4

    move/from16 v4, v20

    goto :goto_15

    :cond_1d
    move v4, v5

    move v5, v6

    :goto_15
    if-eqz v4, :cond_1e

    move/from16 v6, v19

    goto :goto_16

    :cond_1e
    move/from16 v6, p7

    :goto_16
    if-eqz v17, :cond_1f

    move-object v7, v1

    goto :goto_17

    :cond_1f
    move-object/from16 v7, p9

    :goto_17
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v1, v15, 0xe

    shr-int/lit8 v4, v15, 0x3

    and-int/lit8 v9, v4, 0x70

    or-int/2addr v1, v9

    and-int/lit16 v9, v4, 0x380

    or-int/2addr v1, v9

    and-int/lit16 v4, v4, 0x1c00

    or-int/2addr v1, v4

    shl-int/lit8 v4, v15, 0x9

    const v9, 0xe000

    and-int/2addr v4, v9

    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v15

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v15

    or-int/2addr v1, v4

    shl-int/lit8 v4, v15, 0x3

    const/high16 v9, 0xe000000

    and-int/2addr v9, v4

    or-int/2addr v1, v9

    const/high16 v9, 0x70000000

    and-int/2addr v4, v9

    or-int v9, v1, v4

    shr-int/lit8 v1, v15, 0x1b

    and-int/lit8 v1, v1, 0xe

    shl-int/lit8 v4, v18, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int v10, v1, v4

    move-object/from16 v4, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->a(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;IZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v0

    move-object v4, v2

    move-object v10, v7

    move-object v0, v8

    move/from16 v9, v19

    move v7, v5

    move v8, v6

    move v6, v9

    move-object v5, v3

    goto :goto_18

    :cond_20
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v9, p8

    move v7, v6

    move-object v0, v8

    move-object v4, v10

    move-object v5, v14

    move-object/from16 v1, v16

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v10, p9

    :goto_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_21

    new-instance v0, Ld60;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Ld60;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;III)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

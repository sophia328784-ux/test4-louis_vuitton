.class public abstract Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "alphaFirstIcon",
        "alphaSecondIcon",
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
.field public static final a:F

.field public static final b:F

.field public static final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42e60000    # 115.0f

    sput v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a:F

    const/high16 v0, 0x41800000    # 16.0f

    sput v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b:F

    const/high16 v0, 0x42100000    # 36.0f

    sput v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->c:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    if-eqz v0, :cond_0

    const-string v1, "BottomContainer"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, -0x5a3d6a81

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v0, v4, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v4

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    and-int/lit8 v2, v4, 0x30

    if-nez v2, :cond_4

    move/from16 v2, p1

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    goto :goto_3

    :cond_4
    move/from16 v2, p1

    :goto_3
    and-int/lit16 v5, v4, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_4

    :cond_5
    const/16 v5, 0x80

    :goto_4
    or-int/2addr v0, v5

    :cond_6
    and-int/lit16 v5, v0, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_7

    move v5, v8

    goto :goto_5

    :cond_7
    move v5, v7

    :goto_5
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v11, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/unit/Density;

    invoke-static {v11}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v6

    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v6

    const/16 v9, 0x384

    const/4 v10, 0x0

    const/4 v12, 0x6

    invoke-static {v9, v7, v10, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v13

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    or-int/2addr v14, v15

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v14, :cond_8

    if-ne v15, v7, :cond_9

    :cond_8
    new-instance v15, Lr01;

    invoke-direct {v15, v5, v6, v8}, Lr01;-><init>(Landroidx/compose/ui/unit/Density;FI)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->q(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/EnterTransition;

    move-result-object v8

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_a

    if-ne v12, v7, :cond_b

    :cond_a
    new-instance v12, Lr01;

    invoke-direct {v12, v5, v6, v13}, Lr01;-><init>(Landroidx/compose/ui/unit/Density;FI)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    new-instance v6, Lsm;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v3}, Lsm;-><init>(ILkotlin/jvm/functions/Function2;)V

    const v9, 0x1c4a8657

    invoke-static {v9, v6, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    shr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0xe

    const/high16 v9, 0x30000

    or-int/2addr v6, v9

    shl-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x70

    or-int v12, v6, v0

    const/16 v13, 0x10

    const/4 v9, 0x0

    move-object v6, v1

    move-object v7, v8

    move-object v8, v5

    move v5, v2

    invoke-static/range {v5 .. v13}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :cond_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v0, Lvd;

    const/4 v5, 0x5

    move/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lvd;-><init>(Ljava/lang/Object;ZLkotlin/Function;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_d
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v7, p6

    move/from16 v1, p10

    if-eqz v0, :cond_0

    const-string v3, "SpotlightBottomStepper"

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x945d31b

    move-object/from16 v4, p9

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    and-int/lit8 v3, v1, 0x6

    if-nez v3, :cond_2

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    and-int/lit8 v4, v1, 0x30

    if-nez v4, :cond_4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    :cond_4
    and-int/lit16 v4, v1, 0x180

    move-object/from16 v8, p2

    if-nez v4, :cond_6

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v3, v4

    :cond_6
    and-int/lit16 v4, v1, 0xc00

    move/from16 v10, p3

    if-nez v4, :cond_8

    invoke-virtual {v14, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x800

    goto :goto_4

    :cond_7
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v3, v4

    :cond_8
    move/from16 v5, p4

    invoke-virtual {v14, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x4000

    goto :goto_5

    :cond_9
    const/16 v4, 0x2000

    :goto_5
    or-int/2addr v3, v4

    const/high16 v4, 0x30000

    and-int/2addr v4, v1

    move-object/from16 v6, p5

    if-nez v4, :cond_b

    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/high16 v4, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v4, 0x10000

    :goto_6
    or-int/2addr v3, v4

    :cond_b
    const/high16 v4, 0x180000

    and-int/2addr v4, v1

    if-nez v4, :cond_d

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/high16 v4, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v4, 0x80000

    :goto_7
    or-int/2addr v3, v4

    :cond_d
    const/high16 v4, 0xc00000

    and-int/2addr v4, v1

    move-object/from16 v12, p7

    if-nez v4, :cond_f

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/high16 v4, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v4, 0x400000

    :goto_8
    or-int/2addr v3, v4

    :cond_f
    const/high16 v4, 0x6000000

    and-int/2addr v4, v1

    move-object/from16 v9, p8

    if-nez v4, :cond_11

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v4, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v4, 0x2000000

    :goto_9
    or-int/2addr v3, v4

    :cond_11
    move v15, v3

    const v3, 0x2492493

    and-int/2addr v3, v15

    const v4, 0x2492492

    const/4 v11, 0x0

    const/4 v13, 0x1

    if-eq v3, v4, :cond_12

    move v3, v13

    goto :goto_a

    :cond_12
    move v3, v11

    :goto_a
    and-int/lit8 v4, v15, 0x1

    invoke-virtual {v14, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v14}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v3

    invoke-static {v3, v14}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v4

    if-eqz v7, :cond_13

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    move v11, v13

    :cond_13
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    sget-object v13, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v0, v13}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v13

    move v6, v3

    new-instance v3, Lu01;

    move-object/from16 p0, v0

    move-object v0, v13

    move-object v13, v9

    move v9, v5

    move v5, v11

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v13}, Lu01;-><init>(FZFLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;IILjava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    const v4, 0x30f3c384

    invoke-static {v4, v3, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    and-int/lit8 v4, v15, 0x70

    or-int/lit16 v4, v4, 0x180

    invoke-static {v0, v2, v3, v14, v4}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_b

    :cond_14
    move-object/from16 p0, v0

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_15

    new-instance v0, Lv01;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Lv01;-><init>(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_15
    return-void
.end method

.method public static final c(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 11

    move-object v0, p3

    move-object v1, p4

    const-string v2, "SpotlightLookPosition"

    if-eqz v0, :cond_0

    invoke-static {p3, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x42ef53b

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, p0, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, p0, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, p0

    goto :goto_1

    :cond_3
    move v4, p0

    :goto_1
    and-int/lit8 v5, p0, 0x30

    if-nez v5, :cond_5

    invoke-virtual {v7, p4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    goto :goto_2

    :cond_4
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v4, v5

    :cond_5
    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    const/4 v8, 0x1

    if-eq v5, v6, :cond_6

    move v5, v8

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    and-int/lit8 v6, v4, 0x1

    invoke-virtual {v7, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v3, :cond_7

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_7
    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v3, :cond_8

    new-instance v2, Ll01;

    invoke-direct {v2, v8}, Ll01;-><init>(I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function1;

    sget-object v3, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightBottomStepperKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    shr-int/lit8 v3, v4, 0x3

    and-int/lit8 v3, v3, 0xe

    const v5, 0x186180

    or-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int v8, v3, v4

    const/16 v9, 0x28

    const/4 v3, 0x0

    const-string v4, "Digit animation"

    const/4 v5, 0x0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :cond_9
    move-object v2, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v3, Lt01;

    invoke-direct {v3, v0, p4, p0, p1}, Lt01;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;II)V

    iput-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string v1, "SpotlightSelector"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v8, 0x2defb6fe

    move-object/from16 v9, p7

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_0

    :cond_1
    const/16 v8, 0x10

    :goto_0
    or-int v8, p8, v8

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_1

    :cond_2
    const/16 v9, 0x80

    :goto_1
    or-int/2addr v8, v9

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x800

    goto :goto_2

    :cond_3
    const/16 v9, 0x400

    :goto_2
    or-int/2addr v8, v9

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_3

    :cond_4
    const/16 v9, 0x2000

    :goto_3
    or-int/2addr v8, v9

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/high16 v9, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v9, 0x10000

    :goto_4
    or-int/2addr v8, v9

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v9, 0x80000

    :goto_5
    or-int/2addr v8, v9

    const v9, 0x92493

    and-int/2addr v9, v8

    const v14, 0x92492

    if-eq v9, v14, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    and-int/lit8 v14, v8, 0x1

    invoke-virtual {v12, v14, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    if-eqz v5, :cond_8

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    goto :goto_7

    :cond_8
    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->e:Landroidx/compose/foundation/layout/Arrangement$Center$1;

    :goto_7
    const/16 v10, 0x30

    invoke-static {v14, v9, v12, v10}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v9

    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v14

    invoke-static {v12, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    move-object/from16 v19, v15

    if-eqz v19, :cond_15

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_9

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v9, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v10, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v20, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    if-le v2, v15, :cond_a

    if-lez v3, :cond_a

    move/from16 v9, v21

    goto :goto_9

    :cond_a
    move/from16 v9, v20

    :goto_9
    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v15, 0x100

    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v9

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v22

    and-int/lit16 v10, v8, 0x380

    if-ne v10, v15, :cond_b

    const/4 v11, 0x1

    goto :goto_a

    :cond_b
    const/4 v11, 0x0

    :goto_a
    const/high16 v13, 0x70000

    and-int/2addr v13, v8

    const/high16 v14, 0x20000

    if-ne v13, v14, :cond_c

    const/4 v13, 0x1

    goto :goto_b

    :cond_c
    const/4 v13, 0x0

    :goto_b
    or-int/2addr v11, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v11, :cond_d

    if-ne v13, v14, :cond_e

    :cond_d
    new-instance v13, Lis;

    invoke-direct {v13, v3, v6}, Lis;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v26, v13

    check-cast v26, Lkotlin/jvm/functions/Function0;

    const/16 v27, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-static {v11, v9}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->H:I

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    const v13, 0x7f140359

    invoke-static {v12, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v15

    iget-object v15, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v15, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/16 v15, 0x8

    const/16 v17, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    move-object/from16 v28, v14

    const/4 v0, 0x0

    move-object v14, v12

    move-wide/from16 v29, v5

    move v6, v10

    move-object v10, v13

    const/4 v5, 0x1

    move-wide/from16 v12, v29

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object v12, v14

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->j:F

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v12, v9}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    shr-int/lit8 v9, v8, 0x6

    and-int/lit8 v9, v9, 0x70

    invoke-static {v9, v5, v12, v0, v4}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->c(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->j:F

    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v12, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    if-le v2, v5, :cond_f

    add-int/lit8 v0, v2, -0x1

    if-ge v3, v0, :cond_f

    move/from16 v9, v21

    goto :goto_c

    :cond_f
    move/from16 v9, v20

    :goto_c
    const/4 v13, 0x0

    const/16 v14, 0x1e

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v0

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->o:F

    invoke-static {v9, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v22

    const/16 v15, 0x100

    if-ne v6, v15, :cond_10

    move v15, v5

    goto :goto_d

    :cond_10
    const/4 v15, 0x0

    :goto_d
    and-int/lit8 v1, v8, 0x70

    const/16 v6, 0x20

    if-ne v1, v6, :cond_11

    move v1, v5

    goto :goto_e

    :cond_11
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v1, v15

    const/high16 v6, 0x380000

    and-int/2addr v6, v8

    const/high16 v10, 0x100000

    if-ne v6, v10, :cond_12

    move v15, v5

    goto :goto_f

    :cond_12
    const/4 v15, 0x0

    :goto_f
    or-int/2addr v1, v15

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_14

    move-object/from16 v1, v28

    if-ne v6, v1, :cond_13

    goto :goto_10

    :cond_13
    const/4 v13, 0x0

    goto :goto_11

    :cond_14
    :goto_10
    new-instance v6, Ls01;

    const/4 v13, 0x0

    invoke-direct {v6, v3, v2, v7, v13}, Ls01;-><init>(IILkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    move-object/from16 v26, v6

    check-cast v26, Lkotlin/jvm/functions/Function0;

    const/16 v27, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I:I

    invoke-static {v0, v12, v13}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    const v0, 0x7f140342

    invoke-static {v12, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object v14, v12

    move-wide v12, v0

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object v12, v14

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v0

    :cond_16
    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_12
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v0, Lxd;

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v8}, Lxd;-><init>(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method

.class public abstract Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "userDragged",
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x42f00000    # 120.0f

    sput v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "LoginAdvantagesCarousel"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, -0x67a599cd

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v2

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    and-int/lit8 v5, v4, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    and-int/2addr v4, v8

    invoke-virtual {v9, v4, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v5, :cond_4

    if-ne v6, v10, :cond_5

    :cond_4
    new-instance v6, Ldb;

    const/16 v5, 0x13

    invoke-direct {v6, v1, v5}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    invoke-static {v7, v6, v9, v7, v5}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v10, :cond_6

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v6, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v10, :cond_7

    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1;

    invoke-direct {v7, v6}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v7, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt$LoginAdvantagesCarousel$scrollConnection$1$1;

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v12, :cond_8

    if-ne v13, v10, :cond_9

    :cond_8
    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt$LoginAdvantagesCarousel$1$1;

    invoke-direct {v13, v5, v1, v6, v14}, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/WelcomeScreenKt$LoginAdvantagesCarousel$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v11, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0, v7, v14}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    new-instance v7, Lu31;

    invoke-direct {v7, v8, v4, v1}, Lu31;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    const v4, 0x19c5f2d2

    invoke-static {v4, v7, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    const/16 v21, 0x6000

    const/16 v22, 0x3ffc

    const/4 v7, 0x0

    move v4, v8

    const/4 v8, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    invoke-static/range {v5 .. v22}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v19 .. v19}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v8, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v11, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v5

    move-object/from16 v9, v19

    move-object v5, v3

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLandroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_a
    move v4, v8

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_b

    new-instance v5, Lq31;

    invoke-direct {v5, v0, v1, v2, v4}, Lq31;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;II)V

    iput-object v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v11, p10

    move/from16 v13, p13

    const-string v1, "WelcomeScreen"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x21c1276c

    move-object/from16 v4, p12

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v4, p15, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v7, v13, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v7, v13, 0x6

    if-nez v7, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x4

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v13

    goto :goto_1

    :cond_3
    move v7, v13

    :goto_1
    and-int/lit8 v8, v13, 0x30

    if-nez v8, :cond_5

    move-object/from16 v8, p1

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v7, v12

    goto :goto_3

    :cond_5
    move-object/from16 v8, p1

    :goto_3
    and-int/lit16 v12, v13, 0x180

    if-nez v12, :cond_7

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x100

    goto :goto_4

    :cond_6
    const/16 v12, 0x80

    :goto_4
    or-int/2addr v7, v12

    :cond_7
    and-int/lit8 v12, p15, 0x8

    if-eqz v12, :cond_9

    or-int/lit16 v7, v7, 0xc00

    :cond_8
    move/from16 v14, p3

    goto :goto_6

    :cond_9
    and-int/lit16 v14, v13, 0xc00

    if-nez v14, :cond_8

    move/from16 v14, p3

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x800

    goto :goto_5

    :cond_a
    const/16 v15, 0x400

    :goto_5
    or-int/2addr v7, v15

    :goto_6
    and-int/lit16 v15, v13, 0x6000

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/16 v16, 0x4000

    goto :goto_7

    :cond_b
    const/16 v16, 0x2000

    :goto_7
    or-int v7, v7, v16

    goto :goto_8

    :cond_c
    move-object/from16 v15, p4

    :goto_8
    const/high16 v16, 0x30000

    and-int v16, v13, v16

    move-object/from16 v5, p5

    if-nez v16, :cond_e

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x20000

    goto :goto_9

    :cond_d
    const/high16 v16, 0x10000

    :goto_9
    or-int v7, v7, v16

    :cond_e
    const/high16 v16, 0x180000

    and-int v16, v13, v16

    move-object/from16 v6, p6

    if-nez v16, :cond_10

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x80000

    :goto_a
    or-int v7, v7, v16

    :cond_10
    const/high16 v16, 0xc00000

    and-int v16, v13, v16

    move-object/from16 v9, p7

    if-nez v16, :cond_12

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x800000

    goto :goto_b

    :cond_11
    const/high16 v17, 0x400000

    :goto_b
    or-int v7, v7, v17

    :cond_12
    const/high16 v17, 0x6000000

    and-int v17, v13, v17

    move-object/from16 v10, p8

    if-nez v17, :cond_14

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x4000000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x2000000

    :goto_c
    or-int v7, v7, v18

    :cond_14
    const/high16 v18, 0x30000000

    and-int v18, v13, v18

    if-nez v18, :cond_16

    move-object/from16 v18, v0

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/high16 v19, 0x20000000

    goto :goto_d

    :cond_15
    const/high16 v19, 0x10000000

    :goto_d
    or-int v7, v7, v19

    goto :goto_e

    :cond_16
    move-object/from16 v18, v0

    move-object/from16 v0, p9

    :goto_e
    and-int/lit8 v19, p14, 0x6

    if-nez v19, :cond_18

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x4

    goto :goto_f

    :cond_17
    const/16 v19, 0x2

    :goto_f
    or-int v19, p14, v19

    goto :goto_10

    :cond_18
    move/from16 v19, p14

    :goto_10
    and-int/lit8 v20, p14, 0x30

    move-object/from16 v0, p11

    if-nez v20, :cond_1a

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v16, 0x20

    goto :goto_11

    :cond_19
    const/16 v16, 0x10

    :goto_11
    or-int v19, v19, v16

    :cond_1a
    const v16, 0x12492493

    and-int v0, v7, v16

    move/from16 p0, v4

    const v4, 0x12492492

    const/4 v5, 0x1

    if-ne v0, v4, :cond_1c

    and-int/lit8 v0, v19, 0x13

    const/16 v4, 0x12

    if-eq v0, v4, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13

    :cond_1c
    :goto_12
    move v0, v5

    :goto_13
    and-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz p0, :cond_1d

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :cond_1d
    move-object/from16 v0, v18

    :goto_14
    if-eqz v12, :cond_1e

    const/16 v16, 0x0

    goto :goto_15

    :cond_1e
    move/from16 v16, v14

    :goto_15
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v14, Lod;

    const/16 v20, 0xd

    move-object/from16 v19, p11

    move-object/from16 v17, v8

    move-object/from16 v18, v10

    move/from16 v15, v16

    move-object/from16 v16, p9

    invoke-direct/range {v14 .. v20}, Lod;-><init>(ZLkotlin/jvm/functions/Function0;Ljava/lang/Object;Lkotlin/Function;Lkotlin/jvm/functions/Function0;I)V

    move/from16 v16, v15

    const v1, 0x6569e958

    invoke-static {v1, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v4, Lfs0;

    const/16 v7, 0xc

    invoke-direct {v4, v11, v7}, Lfs0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v7, -0x879bca6

    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    new-instance v14, Ljc;

    move-object/from16 v17, p1

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object v15, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v9

    invoke-direct/range {v14 .. v21}, Ljc;-><init>(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move/from16 v6, v16

    const v7, 0x11b31d23

    invoke-static {v7, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    const v27, 0x30000c30

    const/16 v28, 0x1f5

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object v15, v1

    move-object/from16 v26, v2

    move-object/from16 v17, v4

    invoke-static/range {v14 .. v28}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v1, v26

    iget-boolean v2, v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->f:Z

    if-eqz v2, :cond_1f

    const v2, -0xc1f1094

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v5}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :cond_1f
    const/4 v2, 0x0

    const v4, -0xc1e90f2

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    move v4, v6

    goto :goto_17

    :cond_20
    move-object v1, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    move v4, v14

    move-object/from16 v0, v18

    :goto_17
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object v2, v1

    move-object v1, v0

    new-instance v0, Lt61;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v29, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v15}, Lt61;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;III)V

    move-object/from16 v2, v29

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_21
    return-void
.end method

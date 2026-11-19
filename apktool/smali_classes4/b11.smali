.class public final synthetic Lb11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;ZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb11;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    iput-boolean p2, p0, Lb11;->c:Z

    iput-object p3, p0, Lb11;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iput-object p4, p0, Lb11;->e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iput-object p5, p0, Lb11;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lb11;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lb11;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lb11;->i:Landroidx/compose/foundation/pager/PagerState;

    iput-object p9, p0, Lb11;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lb11;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lb11;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lb11;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lb11;->n:Landroidx/compose/foundation/pager/PagerState;

    iput-object p14, p0, Lb11;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Lb11;->p:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p16

    iput-object p1, p0, Lb11;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lb11;->r:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v15, 0x1

    const/4 v12, 0x0

    if-eq v3, v4, :cond_2

    move v3, v15

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    and-int/2addr v2, v15

    invoke-interface {v8, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v8}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v2

    invoke-static {v2, v8}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    const/16 v9, 0x1f

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v10, :cond_4

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v9, :cond_3

    const/high16 v2, 0x3fc00000    # 1.5f

    goto :goto_2

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Lb11;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    if-eqz v5, :cond_5

    sget v7, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a:F

    add-float v7, v7, v16

    sget-object v17, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget v17, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b:F

    sub-float v7, v7, v17

    goto :goto_3

    :cond_5
    sget-object v7, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Number;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v17

    const/high16 v18, 0x44610000    # 900.0f

    mul-float v6, v17, v18

    float-to-int v6, v6

    const/4 v13, 0x0

    const/4 v14, 0x6

    invoke-static {v6, v12, v13, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_6

    new-instance v11, Lku0;

    invoke-direct {v11, v15, v2}, Lku0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v11, Lkotlin/jvm/functions/Function1;

    move v2, v7

    const/16 v7, 0xc00

    move-object/from16 v18, v3

    move-object v3, v6

    move-object v6, v8

    const/4 v8, 0x4

    move-object/from16 v19, v4

    const/4 v4, 0x0

    move-object/from16 v20, v18

    move/from16 v18, v5

    move-object v5, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v19

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v19

    move-object v8, v6

    if-eqz v18, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_7

    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->i()F

    move-result v2

    const v3, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v6, v2, v3

    move v2, v6

    :goto_4
    const/16 v3, 0x384

    move v4, v3

    invoke-static {v4, v12, v13, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    const/16 v7, 0x30

    move-object v6, v8

    const/16 v8, 0xc

    move v5, v4

    const/4 v4, 0x0

    move/from16 v21, v5

    const/4 v5, 0x0

    move/from16 v15, v21

    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v21

    move-object v8, v6

    if-eqz v18, :cond_a

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v9, :cond_9

    const v2, 0x3f99999a    # 1.2f

    :goto_5
    invoke-static {v15, v12, v13, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v3

    const/16 v6, 0x30

    const/16 v7, 0x1c

    const/4 v4, 0x0

    move-object v5, v8

    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v15

    iget-boolean v2, v0, Lb11;->c:Z

    iget-object v3, v0, Lb11;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    const-string v18, ""

    const-string v4, "ContentScreen$lambda$0"

    if-nez v2, :cond_11

    const v2, -0x29647d5c

    invoke-static {v2, v8, v4}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v2, v5, v5}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v23

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    const/16 v27, 0x0

    const/16 v28, 0xd

    const/16 v24, 0x0

    const/16 v26, 0x0

    move/from16 v25, v2

    invoke-static/range {v23 .. v28}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v29

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    const/16 v34, 0x7

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v33, v2

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v3, :cond_b

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object v5, v13

    :goto_6
    if-nez v5, :cond_c

    move-object/from16 v5, v18

    :cond_c
    iget-object v6, v0, Lb11;->e:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v6, :cond_d

    iget-object v6, v6, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    goto :goto_7

    :cond_d
    move-object v6, v13

    :goto_7
    if-nez v6, :cond_e

    move-object/from16 v6, v18

    :cond_e
    if-eqz v3, :cond_f

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    if-eqz v7, :cond_f

    iget-object v7, v7, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    goto :goto_8

    :cond_f
    move-object v7, v13

    :goto_8
    if-nez v7, :cond_10

    move-object/from16 v7, v18

    :cond_10
    move-object v9, v4

    move-object v4, v6

    iget-object v6, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    move-object/from16 v23, v10

    const/4 v10, 0x0

    move-object/from16 v24, v3

    move-object v3, v5

    move-object v5, v7

    iget-object v7, v0, Lb11;->f:Lkotlin/jvm/functions/Function0;

    move-object/from16 v25, v9

    move-object v9, v8

    iget-object v8, v0, Lb11;->g:Lkotlin/jvm/functions/Function0;

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v12, v25

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightVideoScreenKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_9

    :cond_11
    move-object v14, v3

    move-object v12, v4

    move-object v13, v10

    const v2, -0x295acfc8

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_9
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v2, v4, v4}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v27

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    const/16 v31, 0x0

    const/16 v32, 0xd

    const/16 v28, 0x0

    const/16 v30, 0x0

    move/from16 v29, v2

    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v33

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    const/16 v38, 0x7

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v37, v2

    invoke-static/range {v33 .. v38}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v4, v3

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v6, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->b:Z

    if-nez v6, :cond_12

    iget-boolean v6, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->k:Z

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_a

    :cond_12
    const/4 v6, 0x0

    :goto_a
    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->e:Ljava/util/Set;

    iget-object v9, v0, Lb11;->j:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    move-object v15, v7

    iget-object v7, v0, Lb11;->i:Landroidx/compose/foundation/pager/PagerState;

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v19

    or-int v10, v10, v19

    move-object/from16 v19, v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v10, :cond_13

    if-ne v2, v13, :cond_14

    :cond_13
    new-instance v2, Lt2;

    const/4 v10, 0x1

    invoke-direct {v2, v9, v7, v10}, Lt2;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v2, v11

    const/4 v11, 0x0

    move-object v10, v4

    iget-object v4, v0, Lb11;->h:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v10

    const/4 v13, 0x0

    move-object v10, v8

    move-object v8, v15

    move-object v15, v2

    move-object/from16 v2, v19

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightListKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;ZLandroidx/compose/foundation/pager/PagerState;Ljava/util/Set;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v7

    move-object v8, v10

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    invoke-interface {v1, v2, v3}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    sget v2, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->a:F

    add-float v2, v2, v16

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    add-float v31, v2, v3

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v29, 0x0

    const/16 v32, 0x3

    const/16 v28, 0x0

    move/from16 v30, v2

    invoke-static/range {v27 .. v32}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v14, :cond_15

    iget-boolean v2, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    if-nez v2, :cond_15

    iget-object v2, v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->g:Ljava/util/Set;

    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    :goto_b
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v5, v13, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v6

    move-object v7, v5

    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    sget-object v7, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x30d80

    const/16 v10, 0x10

    move/from16 v16, v4

    move-object v4, v6

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    invoke-interface {v1, v2, v3}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object v5, v3

    move-object/from16 v4, v20

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    iget-object v6, v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v14, :cond_16

    iget-object v7, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->i:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    move-object v9, v8

    move-object v8, v7

    goto :goto_c

    :cond_16
    move-object v9, v8

    const/4 v8, 0x0

    :goto_c
    invoke-virtual {v11}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v7

    if-eqz v14, :cond_17

    iget-object v10, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->b:Ljava/lang/String;

    goto :goto_d

    :cond_17
    const/4 v10, 0x0

    :goto_d
    if-nez v10, :cond_18

    :goto_e
    move-object/from16 v25, v12

    goto :goto_f

    :cond_18
    move-object/from16 v18, v10

    goto :goto_e

    :goto_f
    const/4 v12, 0x0

    move-object/from16 v20, v4

    iget-object v4, v0, Lb11;->k:Lkotlin/jvm/functions/Function1;

    move-object v10, v9

    iget-object v9, v0, Lb11;->l:Lkotlin/jvm/functions/Function1;

    move-object v11, v10

    iget-object v10, v0, Lb11;->m:Lkotlin/jvm/functions/Function1;

    move-object/from16 v16, v5

    move v5, v6

    move v6, v7

    move-object/from16 v7, v18

    move-object/from16 v13, v20

    move-object/from16 v0, v25

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightBottomStepperKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;IILjava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v11

    move-object/from16 v11, v17

    invoke-static {v0, v11}, Lpq0;->i(Ljava/lang/String;Landroidx/compose/foundation/layout/FillElement;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-boolean v2, v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->j:Z

    const/16 v12, 0x1f4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v12, v4, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v10, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v7

    invoke-static {v12, v4, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v10

    invoke-static {v10, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    move-object v4, v7

    sget-object v7, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x30030

    const/16 v10, 0x10

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v0, v11}, Lpq0;->i(Ljava/lang/String;Landroidx/compose/foundation/layout/FillElement;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-boolean v2, v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    if-eqz v2, :cond_1a

    if-eqz v14, :cond_19

    iget-object v2, v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->h:Ljava/util/Set;

    iget-object v4, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v22, 0x1

    xor-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    const/4 v2, 0x0

    :goto_10
    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    goto :goto_12

    :cond_1a
    const/4 v2, 0x0

    goto :goto_11

    :goto_12
    invoke-static {v12, v4, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v7, v10, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/4 v6, 0x4

    invoke-static {v12, v12, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v7

    invoke-static {v7, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    sget-object v7, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v9, 0x30030

    const/16 v10, 0x10

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, v16

    invoke-interface {v1, v2, v5}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->q:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v2

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v14, :cond_1b

    iget-object v3, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    goto :goto_13

    :cond_1b
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_1c

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1c
    move-object v4, v3

    iget-boolean v5, v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    iget-boolean v6, v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->i:Z

    const/4 v10, 0x0

    move-object/from16 v11, p0

    iget-object v3, v11, Lb11;->n:Landroidx/compose/foundation/pager/PagerState;

    iget-object v7, v11, Lb11;->o:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v11, Lb11;->p:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightSkuPagerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Ljava/util/List;ZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v9

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->c:Landroidx/compose/ui/BiasAlignment;

    invoke-interface {v1, v2, v12}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-boolean v2, v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->c:Z

    const/16 v16, 0x578

    if-eqz v14, :cond_1d

    iget-boolean v4, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    const/4 v10, 0x1

    if-ne v4, v10, :cond_1d

    const/16 v4, 0x208

    goto :goto_14

    :cond_1d
    move/from16 v4, v16

    :goto_14
    const/16 v14, 0x1c2

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v14, v4, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v4

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v4, v10, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v14, v6, v5, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v10

    invoke-static {v10, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    new-instance v6, Lkv0;

    iget-object v7, v11, Lb11;->q:Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    invoke-direct {v6, v7, v9}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v7, 0x66a6bafb

    invoke-static {v7, v6, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const v9, 0x30c00

    const/16 v10, 0x10

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v12}, Landroidx/compose/foundation/layout/BoxScope;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-boolean v2, v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->d:Z

    iget-boolean v0, v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->f:Z

    if-eqz v0, :cond_1e

    const/4 v12, 0x0

    :goto_15
    const/4 v5, 0x0

    const/4 v6, 0x4

    goto :goto_16

    :cond_1e
    move/from16 v12, v16

    goto :goto_15

    :goto_16
    invoke-static {v14, v12, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v0, v10, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v4

    const/4 v0, 0x0

    const/4 v7, 0x6

    invoke-static {v14, v0, v5, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    invoke-static {v0, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v5

    new-instance v0, Lkv0;

    iget-object v1, v11, Lb11;->r:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v6}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v1, 0x15db6f7c

    invoke-static {v1, v0, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    const v9, 0x30c00

    const/16 v10, 0x10

    const/4 v6, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_17

    :cond_1f
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

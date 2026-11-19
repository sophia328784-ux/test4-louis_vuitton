.class public final synthetic Lx01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/unit/Density;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;

.field public final synthetic j:Landroid/content/Context;

.field public final synthetic k:Landroidx/compose/runtime/MutableState;

.field public final synthetic l:F

.field public final synthetic m:Z

.field public final synthetic n:Landroidx/compose/runtime/MutableState;

.field public final synthetic o:Landroidx/compose/runtime/MutableState;

.field public final synthetic p:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLandroidx/compose/ui/unit/Density;Ljava/util/List;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx01;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-boolean p2, p0, Lx01;->c:Z

    iput-object p3, p0, Lx01;->d:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Lx01;->e:Ljava/util/List;

    iput-object p5, p0, Lx01;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lx01;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lx01;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lx01;->i:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Lx01;->j:Landroid/content/Context;

    iput-object p10, p0, Lx01;->k:Landroidx/compose/runtime/MutableState;

    iput p11, p0, Lx01;->l:F

    iput-boolean p12, p0, Lx01;->m:Z

    iput-object p13, p0, Lx01;->n:Landroidx/compose/runtime/MutableState;

    iput-object p14, p0, Lx01;->o:Landroidx/compose/runtime/MutableState;

    iput-object p15, p0, Lx01;->p:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-object/from16 p1, p16

    iput-object p1, p0, Lx01;->q:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    move-object/from16 v13, p2

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

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

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v6, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_1
    and-int/2addr v2, v8

    invoke-interface {v13, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->i()F

    move-result v2

    new-instance v3, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v3, v2}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    iget-object v2, v0, Lx01;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->e()F

    move-result v1

    new-instance v2, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v2, v1}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    iget-object v1, v0, Lx01;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v2, v0, Lx01;->b:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-boolean v6, v0, Lx01;->c:Z

    iget-object v15, v0, Lx01;->d:Landroidx/compose/ui/unit/Density;

    iget-object v9, v0, Lx01;->h:Landroidx/compose/runtime/MutableState;

    iget-object v10, v0, Lx01;->i:Landroidx/compose/runtime/MutableState;

    iget-object v11, v0, Lx01;->k:Landroidx/compose/runtime/MutableState;

    const-string v12, "SpotlightHotSpots$lambda$27"

    const/4 v14, 0x0

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    const v3, 0x4aa27b81    # 5324224.5f

    invoke-static {v3, v13, v12}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v6, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v6}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_3

    if-ne v4, v5, :cond_4

    :cond_3
    new-instance v4, Lu30;

    invoke-direct {v4, v15, v9, v10, v8}, Lu30;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_5

    new-instance v4, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    iget-object v6, v0, Lx01;->j:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/vuitton/android/presentation/compose/LvExoPlayer;-><init>(Landroid/content/Context;)V

    iget-object v4, v4, Lcom/vuitton/android/presentation/compose/LvExoPlayer;->a:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v2, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->c:Ljava/lang/String;

    sget-object v6, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v18, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_6

    new-instance v6, Lu00;

    const/16 v5, 0x1c

    invoke-direct {v6, v5, v11}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v21, v6

    check-cast v21, Lkotlin/jvm/functions/Function0;

    const/16 v26, 0x0

    const v27, 0x163fd8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x1

    move v11, v8

    const/4 v8, 0x0

    move-object/from16 v16, v9

    const/4 v9, 0x0

    move-object v15, v10

    const/4 v10, 0x0

    move/from16 v19, v11

    const/4 v11, 0x0

    move-object/from16 v20, v12

    const/4 v12, 0x0

    move-object/from16 v23, v13

    const/4 v13, 0x0

    move-object/from16 v22, v14

    const/4 v14, 0x0

    move-object/from16 v24, v15

    const/4 v15, 0x0

    move-object/from16 v25, v16

    const/16 v16, 0x4

    move/from16 v28, v19

    const/16 v19, 0x0

    move-object/from16 v29, v20

    const/16 v20, 0x0

    move-object/from16 v30, v22

    const/16 v22, 0x0

    move-object/from16 v31, v24

    const/high16 v24, 0x30000

    move-object/from16 v32, v25

    const v25, 0x301b6000

    move-object/from16 p3, v4

    move-object v4, v2

    move-object v2, v3

    move-object/from16 v3, p3

    move-object/from16 p3, v1

    move-object/from16 v1, v29

    invoke-static/range {v2 .. v27}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->b(Landroidx/compose/ui/Modifier;Landroidx/media3/exoplayer/ExoPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ZLjava/lang/String;Landroidx/compose/ui/layout/ContentScale;ZZZZLjava/lang/Boolean;ZILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;IIII)V

    move-object/from16 v13, v23

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    move-object/from16 v16, v32

    goto/16 :goto_4

    :cond_7
    move-object/from16 p3, v1

    move-object/from16 v32, v9

    move-object/from16 v31, v10

    move-object v1, v12

    const v3, 0x4ab5f4ef    # 5962359.5f

    invoke-static {v3, v13, v1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v6, :cond_8

    const v4, 0x4ab82b4a    # 6034853.0f

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->a:F

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_8
    const v4, 0x4ab9ae8c    # 6084422.0f

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->h(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVOpacity;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVOpacity;->g:F

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v2, v2, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v2, :cond_9

    iget-object v14, v2, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_a

    const-string v14, ""

    :cond_a
    move-object v2, v14

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    sget-object v7, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightHotspotsKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    new-instance v14, Lw4;

    const/16 v19, 0xd

    move-object/from16 v18, v11

    move-object/from16 v17, v31

    move-object/from16 v16, v32

    invoke-direct/range {v14 .. v19}, Lw4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v4, -0x16c89a24

    invoke-static {v4, v14, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    const/4 v12, 0x0

    const/high16 v14, 0xdb0000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v33, v3

    move-object v3, v2

    move-object/from16 v2, v33

    invoke-static/range {v2 .. v14}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/layout/ContentScale;ILkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function4;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    iget-object v4, v0, Lx01;->e:Ljava/util/List;

    move-object v2, v4

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v5, 0x0

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v12, v5, 0x1

    if-ltz v5, :cond_f

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Dp;

    iget v3, v3, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Dp;

    iget v6, v6, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/unit/Dp;

    iget v7, v7, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface/range {v31 .. v31}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/unit/Dp;

    iget v8, v8, Landroidx/compose/ui/unit/Dp;->b:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    div-float v9, v3, v6

    iget v10, v0, Lx01;->l:F

    cmpl-float v9, v10, v9

    iget-boolean v14, v0, Lx01;->m:Z

    const/high16 v15, 0x3f800000    # 1.0f

    if-lez v9, :cond_c

    mul-float/2addr v10, v6

    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sub-float v3, v10, v3

    div-float/2addr v3, v8

    if-eqz v14, :cond_b

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iget v9, v9, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;->a:F

    sub-float/2addr v15, v9

    mul-float/2addr v15, v10

    sub-float/2addr v15, v3

    goto :goto_6

    :cond_b
    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iget v9, v9, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;->a:F

    mul-float/2addr v10, v9

    sub-float v15, v10, v3

    :goto_6
    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iget v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;->b:F

    mul-float/2addr v6, v2

    goto :goto_7

    :cond_c
    div-float v9, v3, v10

    sget-object v10, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sub-float v6, v9, v6

    div-float/2addr v6, v8

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iget v10, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;->b:F

    mul-float/2addr v9, v10

    sub-float v6, v9, v6

    iget v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;->a:F

    if-eqz v14, :cond_d

    sub-float/2addr v15, v2

    mul-float/2addr v15, v3

    goto :goto_7

    :cond_d
    mul-float/2addr v3, v2

    move v15, v3

    :goto_7
    new-instance v2, Lkotlin/Pair;

    add-float/2addr v15, v7

    new-instance v3, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v3, v15}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    new-instance v7, Landroidx/compose/ui/unit/Dp;

    invoke-direct {v7, v6}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-direct {v2, v3, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/unit/Dp;

    iget v6, v6, Landroidx/compose/ui/unit/Dp;->b:F

    sget v7, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightHotspotsKt;->a:F

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v2, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/unit/Dp;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    sub-float/2addr v2, v7

    invoke-static {v3, v6, v2}, Landroidx/compose/foundation/layout/OffsetKt;->b(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v8

    iget-object v7, v0, Lx01;->n:Landroidx/compose/runtime/MutableState;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v2, v0, Lx01;->o:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    mul-int/lit16 v2, v5, 0x96

    goto :goto_8

    :cond_e
    const/4 v2, 0x0

    :goto_8
    const/16 v3, 0x1c2

    const/4 v6, 0x0

    const/4 v14, 0x4

    invoke-static {v3, v2, v6, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v15, 0x2

    invoke-static {v2, v10, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v10

    const/4 v2, 0x6

    const/4 v14, 0x0

    invoke-static {v3, v14, v6, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v2

    invoke-static {v2, v15}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v17

    new-instance v2, Lne0;

    iget-object v3, v0, Lx01;->p:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v6, v0, Lx01;->q:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v2 .. v7}, Lne0;-><init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Ljava/util/List;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    move-object/from16 v18, v4

    const v3, 0x51b6f905

    invoke-static {v3, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v7

    move v2, v9

    const v9, 0x30c00

    move-object v4, v10

    const/16 v10, 0x10

    const/4 v6, 0x0

    move-object v3, v8

    move-object v8, v13

    move-object/from16 v5, v17

    invoke-static/range {v2 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move v5, v12

    move-object/from16 v4, v18

    goto/16 :goto_5

    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    const/16 v30, 0x0

    throw v30

    :cond_10
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_9

    :cond_11
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v16, 0x1

    if-eq v2, v3, :cond_0

    move/from16 v2, v16

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v1, v1, 0x1

    invoke-interface {v13, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v15, 0x0

    if-nez v2, :cond_1

    if-ne v3, v14, :cond_2

    :cond_1
    new-instance v3, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideScreenKt$AudioGuideScreen$1$1$1;

    invoke-direct {v3, v8, v15}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideScreenKt$AudioGuideScreen$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-wide v9, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    invoke-static {v3, v13}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideExtKt;->a(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;

    move-result-object v3

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "AudioGuideScreen$lambda$0"

    invoke-direct {v5, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v9, v10, v12}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v14, :cond_3

    new-instance v12, Lu5;

    const/16 v15, 0xa

    invoke-direct {v12, v15}, Lu5;-><init>(I)V

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v4, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v12, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v12

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->hashCode(J)I

    move-result v15

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v13, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v1

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v18

    if-eqz v18, :cond_12

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_4
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v12, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {v1, v9, v10, v13, v4}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideBackgroundKt;->a(Ljava/lang/String;JLandroidx/compose/runtime/Composer;I)V

    invoke-static {v11, v7}, Lpq0;->i(Ljava/lang/String;Landroidx/compose/foundation/layout/FillElement;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v18, Landroidx/compose/ui/graphics/Color;->h:J

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v4

    new-instance v5, Lz;

    move-object v7, v6

    const/4 v6, 0x7

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->g:Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v5 .. v10}, Lz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    const v6, 0x6a1bc07f

    invoke-static {v6, v5, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    new-instance v5, Lw0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->c:Lkotlin/jvm/functions/Function1;

    move-object v6, v11

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->h:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->i:Lkotlin/jvm/functions/Function0;

    move-object v9, v7

    move-object v7, v3

    move-object v3, v6

    move-object v6, v9

    move-object v9, v8

    move-object/from16 v8, v17

    invoke-direct/range {v5 .. v12}, Lw0;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v17, v6

    move-object v6, v5

    move-object v5, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move-object v8, v9

    const v9, -0x7c89456c

    invoke-static {v9, v6, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    move-object v6, v14

    const v14, 0x30180036

    move-object v9, v2

    move-object v2, v15

    const/16 v15, 0xbc

    move-object v11, v3

    const/4 v3, 0x0

    move-object/from16 v20, v11

    move-object v11, v4

    const/4 v4, 0x0

    move-object/from16 v21, v5

    const/4 v5, 0x0

    move-object/from16 v22, v6

    const/4 v6, 0x0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    move-object/from16 v26, v7

    move-object/from16 v25, v8

    move-wide/from16 v7, v18

    move-object/from16 v0, v20

    move-object/from16 v27, v21

    move-object/from16 v28, v22

    move-object/from16 v18, v17

    const/16 v17, 0x0

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    if-eqz v23, :cond_11

    const v1, 0x4fc4853a

    invoke-static {v1, v13, v0}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v4, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v7, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v8, 0x2

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v6, v28

    if-ne v1, v6, :cond_5

    new-instance v1, Lu5;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lu5;-><init>(I)V

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object/from16 v10, v24

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v1, v18

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_6

    if-ne v2, v6, :cond_7

    :cond_6
    new-instance v2, Ll0;

    const/16 v0, 0xe

    invoke-direct {v2, v10, v1, v0}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/16 v12, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    move-object/from16 v7, v26

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    check-cast v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->a:Ljava/lang/String;

    move-object/from16 v9, v23

    iget-object v5, v9, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    move-object/from16 v23, v9

    goto :goto_2

    :cond_9
    move-object/from16 v15, v17

    :goto_3
    check-cast v15, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    if-eqz v15, :cond_a

    iget-object v3, v15, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v3, :cond_a

    iget-object v15, v3, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object/from16 v15, v17

    :goto_4
    if-nez v15, :cond_b

    const-string v15, ""

    :cond_b
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v3, v4, :cond_c

    move/from16 v3, v16

    :goto_5
    move-object/from16 v5, v27

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    :goto_6
    iget-wide v7, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->a:J

    iget-wide v4, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;->g:J

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v10, v25

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v9, v11

    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v9, v14

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_d

    if-ne v14, v6, :cond_e

    :cond_d
    new-instance v14, Lra;

    const/4 v9, 0x0

    invoke-direct {v14, v1, v10, v12, v9}, Lra;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v9, v11, Lcom/vuitton/android/presentation/screen/audioguide/components/c;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v1, v11

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v1, :cond_f

    if-ne v11, v6, :cond_10

    :cond_f
    new-instance v11, Lga;

    const/4 v1, 0x4

    invoke-direct {v11, v10, v9, v1}, Lga;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v9, v11

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    move-wide/from16 v29, v7

    move-wide v6, v4

    move-wide/from16 v4, v29

    move-object v1, v2

    move-object v10, v13

    move-object v8, v14

    move-object v2, v15

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideMiniPlayerKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Ljava/lang/String;ZJJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_11
    const v0, 0x4fdc865f

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_8

    :cond_12
    const/16 v17, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v17

    :cond_13
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

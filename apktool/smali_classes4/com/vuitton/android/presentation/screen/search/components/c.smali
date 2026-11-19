.class public final synthetic Lcom/vuitton/android/presentation/screen/search/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic e:Landroidx/compose/ui/focus/FocusManager;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

.field public final synthetic h:Landroidx/compose/ui/focus/FocusRequester;

.field public final synthetic i:Landroidx/compose/runtime/State;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->d:Lkotlinx/coroutines/CoroutineScope;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->e:Landroidx/compose/ui/focus/FocusManager;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->g:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->h:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->i:Landroidx/compose/runtime/State;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->k:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->n:Landroid/content/Context;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->o:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/search/components/c;->p:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->b:Landroidx/compose/ui/Modifier;

    const-string v4, "SearchScreenComposable$lambda$0$7"

    if-eqz v3, :cond_0

    invoke-static {v3, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v5, v2, 0x6

    if-nez v5, :cond_2

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v2, v5

    :cond_2
    and-int/lit8 v5, v2, 0x13

    const/16 v6, 0x12

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-eq v5, v6, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_1
    and-int/2addr v2, v7

    invoke-interface {v8, v2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->c:Z

    if-eqz v5, :cond_4

    const/high16 v5, 0x3f400000    # 0.75f

    goto :goto_2

    :cond_4
    const v5, 0x3f666666    # 0.9f

    :goto_2
    invoke-static {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v2

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v2, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v8, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_32

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_5
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->o()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v13, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v13}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->e:Landroidx/compose/ui/focus/FocusManager;

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v13, v13, v17

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v13, v13, v17

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->g:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v13, v13, v17

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v19, v7

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v13, :cond_7

    if-ne v15, v7, :cond_6

    goto :goto_4

    :cond_6
    move-object v13, v11

    move-object/from16 v11, v19

    goto :goto_5

    :cond_7
    :goto_4
    new-instance v17, Lcom/vuitton/android/presentation/screen/search/components/b;

    const/16 v22, 0x1

    move-object/from16 v18, v1

    move-object/from16 v20, v11

    move-object/from16 v21, v14

    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/search/components/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    move-object/from16 v15, v17

    move-object/from16 v11, v19

    move-object/from16 v13, v20

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v20, v15

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x1b

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_8

    new-instance v9, Lyt0;

    move-object/from16 v20, v13

    const/16 v13, 0x14

    invoke-direct {v9, v13}, Lyt0;-><init>(I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_6

    :cond_8
    move-object/from16 v20, v13

    :goto_6
    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    invoke-static {v15, v13, v9}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v9, v8, v13}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->d(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v24

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v28, 0x0

    const/16 v29, 0xd

    const/16 v25, 0x0

    const/16 v27, 0x0

    move/from16 v26, v9

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object/from16 v19, v11

    const/4 v11, 0x0

    invoke-static {v13, v15, v8, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v8, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v17

    if-eqz v17, :cond_31

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->o()V

    :goto_7
    invoke-static {v8, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v15, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v8, v5, v8, v3}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v8, v9, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x7f141130

    invoke-static {v8, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->h:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static {v2, v3}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    const/16 v5, 0x10

    if-nez v3, :cond_a

    if-ne v4, v7, :cond_b

    :cond_a
    new-instance v4, Lxo0;

    invoke-direct {v4, v14, v5}, Lxo0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v4, 0x0

    const/4 v9, 0x2

    invoke-static {v2, v3, v4, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->i:Landroidx/compose/runtime/State;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_c

    if-ne v4, v7, :cond_d

    :cond_c
    new-instance v4, Lrp0;

    const/16 v3, 0xf

    invoke-direct {v4, v6, v15, v3}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x0

    invoke-static {v2, v13, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const-string v3, "search_searchedTitle_text"

    invoke-static {v2, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_e

    if-ne v9, v7, :cond_f

    :cond_e
    new-instance v9, Lrp0;

    invoke-direct {v9, v14, v15, v5}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v4, v9

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->j:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_10

    if-ne v10, v7, :cond_11

    :cond_10
    new-instance v10, Lsm0;

    const/16 v5, 0xe

    invoke-direct {v10, v14, v9, v15, v5}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v5, v10

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    move-object/from16 v11, v19

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    move-object/from16 v12, v20

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v10, v10, v16

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v10, v10, v16

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_12

    if-ne v13, v7, :cond_13

    :cond_12
    new-instance v17, Lcom/vuitton/android/presentation/screen/search/components/b;

    const/16 v22, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/search/components/b;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/focus/FocusManager;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    move-object/from16 v13, v17

    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/high16 v12, 0x6000000

    move-object v1, v9

    move-object v9, v13

    const/16 v13, 0x260

    move-object v10, v7

    const/4 v7, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object/from16 v17, v10

    const/4 v10, 0x0

    move-object/from16 p1, v1

    move-object/from16 v20, v15

    move-object/from16 v1, v17

    const/4 v15, 0x1

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSearchBarKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v11

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->i:Z

    if-eqz v2, :cond_16

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    instance-of v2, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    if-nez v2, :cond_16

    const v2, 0x264ec556

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v28, 0x0

    const/16 v29, 0x8

    sget-object v24, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v25, v2

    move/from16 v27, v3

    move/from16 v26, v4

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v36

    sget-object v2, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->INVERT:Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;->a()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v8, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/Color;

    iget-wide v5, v3, Landroidx/compose/ui/graphics/Color;->a:J

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->i:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    const/16 v33, 0x6

    const/16 v30, 0x0

    move/from16 v31, v3

    move-wide/from16 v34, v5

    move/from16 v32, v7

    invoke-static/range {v30 .. v36}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->e(FFFIJLandroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v5, 0x7f140624

    invoke-static {v8, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f140623

    invoke-static {v8, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/vuitton/android/presentation/model/common/IconUiModel;->AI_COMPANION:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/IconUiModelKt;->a(Lcom/vuitton/android/presentation/model/common/IconUiModel;)V

    const v7, 0x7f080196

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->k:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->l:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_14

    if-ne v12, v1, :cond_15

    :cond_14
    new-instance v12, Lj;

    invoke-direct {v12, v9, v11, v4}, Lj;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v8, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v9, v12

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/high16 v11, 0x1b0000

    move-object v10, v8

    move-object v8, v2

    move-object v2, v3

    move-object v3, v5

    const/4 v5, 0x0

    move-object v4, v6

    move-object v6, v7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/common/editorial/components/pushcard/PushCardType;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v10

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_16
    const v2, 0x2664ac95

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_8
    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->a:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->m:Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->p:Landroidx/compose/runtime/MutableState;

    if-eq v2, v15, :cond_2a

    const/4 v9, 0x2

    if-eq v2, v9, :cond_27

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1c

    const/4 v6, 0x4

    if-eq v2, v6, :cond_17

    const v0, 0x26d82353

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_9

    :cond_17
    const v0, 0x74dcfa98

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/compose/NestedScroll;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v6, v20

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_18

    if-ne v7, v1, :cond_19

    :cond_18
    new-instance v7, Lru0;

    const/4 v13, 0x0

    invoke-direct {v7, v14, v3, v6, v13}, Lru0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;I)V

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v5, v7

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_1a

    if-ne v6, v1, :cond_1b

    :cond_1a
    new-instance v6, Lqu0;

    invoke-direct {v6, v14, v15}, Lqu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    move-object/from16 v6, p1

    move-object v3, v0

    invoke-static/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/search/components/NoResultSearchComposableKt;->a(Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/compose/NestedScroll;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v2, p1

    move-object/from16 v6, v20

    const/4 v13, 0x0

    const v4, 0x26845e3a

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v7, :cond_1d

    if-ne v9, v1, :cond_1e

    :cond_1d
    new-instance v9, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;

    const/4 v7, 0x0

    invoke-direct {v9, v14, v6, v7}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v4, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->e:Ljava/util/List;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->f:Ljava/util/List;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_1f

    if-ne v11, v1, :cond_20

    :cond_1f
    new-instance v11, Lru0;

    invoke-direct {v11, v14, v3, v6, v15}, Lru0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;I)V

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v3, v10

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_21

    if-ne v10, v1, :cond_22

    :cond_21
    new-instance v10, Lpu0;

    invoke-direct {v10, v2, v14, v5}, Lpu0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->n:Landroid/content/Context;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/components/c;->o:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_23

    if-ne v5, v1, :cond_24

    :cond_23
    new-instance v17, Lys0;

    const/16 v22, 0x1

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v22}, Lys0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v5, v17

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_25

    if-ne v2, v1, :cond_26

    :cond_25
    new-instance v2, Lqu0;

    invoke-direct {v2, v14, v13}, Lqu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v6, v10

    const/4 v10, 0x0

    move-object v3, v8

    move-object v8, v2

    move-object v2, v4

    move-object v4, v9

    move-object v9, v3

    move-object v3, v7

    move-object v7, v5

    move-object v5, v11

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/search/components/SuccessSearchComposableKt;->c(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_9

    :cond_27
    move-object/from16 v2, p1

    const/4 v13, 0x0

    const v0, 0x74dab35d

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->c:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/compose/NestedScroll;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_28

    if-ne v5, v1, :cond_29

    :cond_28
    new-instance v5, Lpu0;

    const/4 v9, 0x2

    invoke-direct {v5, v2, v14, v9}, Lpu0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3, v5, v8, v13}, Lcom/vuitton/android/presentation/screen/search/components/TrendingComposableKt;->a(Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lcom/vuitton/android/presentation/compose/NestedScroll;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_9

    :cond_2a
    move-object/from16 v2, p1

    const v0, 0x74da0987

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->h:Z

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/compose/NestedScroll;

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2b

    if-ne v7, v1, :cond_2c

    :cond_2b
    new-instance v17, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$7$1;

    const-string v22, "onClearHistory()V"

    const/16 v23, 0x0

    const/16 v18, 0x0

    const-class v20, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    const-string v21, "onClearHistory"

    move-object/from16 v19, v14

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v7, v17

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    check-cast v7, Lkotlin/reflect/KFunction;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v6, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_2d

    if-ne v9, v1, :cond_2e

    :cond_2d
    new-instance v9, Les0;

    const/4 v6, 0x4

    invoke-direct {v9, v3, v14, v6}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v8, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v3, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_2f

    if-ne v9, v1, :cond_30

    :cond_2f
    new-instance v9, Lpu0;

    invoke-direct {v9, v2, v14, v15}, Lpu0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_30
    check-cast v9, Lkotlin/jvm/functions/Function1;

    move v3, v5

    move-object v5, v7

    move-object v7, v9

    const/4 v9, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt;->a(Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;ZLcom/vuitton/android/presentation/compose/NestedScroll;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    :goto_9
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_a

    :cond_31
    const/4 v7, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v7

    :cond_32
    const/4 v7, 0x0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v7

    :cond_33
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

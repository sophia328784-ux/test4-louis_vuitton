.class public final synthetic Le60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le60;->b:J

    iput-object p3, p0, Le60;->c:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Le60;->d:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Le60;->e:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Le60;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/FlowRowScope;

    move-object/from16 v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    const/4 v10, 0x4

    if-nez v3, :cond_1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v3, v4, :cond_2

    move v3, v11

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    and-int/2addr v2, v11

    invoke-interface {v7, v2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    move v2, v12

    :goto_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_d

    invoke-static {}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->c()Lkotlin/enums/EnumEntries;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    if-nez v15, :cond_3

    const v3, -0x2a9c363a

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    move v10, v2

    goto/16 :goto_7

    :cond_3
    const v3, -0x2a9c3639

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v0, Le60;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    if-ne v4, v15, :cond_4

    iget-wide v4, v0, Le60;->b:J

    goto :goto_3

    :cond_4
    sget-object v4, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/graphics/Color;->h:J

    :goto_3
    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "LVIconsSelector_FU0evQE$lambda$3"

    invoke-direct {v6, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v9, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v6, v13, v14, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-interface {v1, v6, v9, v11}, Landroidx/compose/foundation/layout/RowScope;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v9, 0x0

    const/high16 v13, 0x40c00000    # 6.0f

    invoke-static {v6, v9, v13, v11}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v9, 0x3

    const/4 v13, 0x0

    invoke-static {v6, v13, v9}, Landroidx/compose/foundation/layout/SizeKt;->w(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;I)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v6, v9, v4, v5, v14}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v5, v0, Le60;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_5

    if-ne v9, v14, :cond_6

    :cond_5
    new-instance v9, Ll3;

    invoke-direct {v9, v10, v5}, Ll3;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v9}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const-string v5, "onboardingCustomIcon_icon_button"

    invoke-static {v4, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v7, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-eqz v16, :cond_c

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_7
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->o()V

    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v6, v4, v5}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->A:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v5, v0, Le60;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_9

    if-ne v8, v14, :cond_8

    goto :goto_5

    :cond_8
    move v10, v2

    move-object v2, v14

    goto :goto_6

    :cond_9
    :goto_5
    new-instance v13, Lqw;

    const/16 v18, 0x1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v14

    move-object v14, v5

    invoke-direct/range {v13 .. v18}, Lqw;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILandroidx/compose/runtime/MutableState;I)V

    move/from16 v10, v16

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v13

    :goto_6
    move-object/from16 v20, v8

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v0, Le60;->f:Ljava/util/List;

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_a

    if-ne v6, v2, :cond_b

    :cond_a
    new-instance v6, Lze;

    const/4 v2, 0x5

    invoke-direct {v6, v4, v10, v2}, Lze;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v6}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/layout/ContentScale$Companion;->c:Landroidx/compose/ui/layout/ContentScale$Companion$Fit$1;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->e()I

    move-result v3

    invoke-static {v3, v7, v12}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v3

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;->b()I

    move-result v4

    invoke-static {v7, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x6c40

    const/4 v9, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;FLandroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    add-int/lit8 v2, v10, 0x1

    const/4 v10, 0x4

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v13

    :cond_d
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_8

    :cond_e
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

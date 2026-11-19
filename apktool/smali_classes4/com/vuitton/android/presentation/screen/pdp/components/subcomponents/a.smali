.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

.field public final synthetic k:Z

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ZZZLkotlin/jvm/functions/Function1;ZLcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;ZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->b:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->c:Z

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->e:Lkotlin/jvm/functions/Function1;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->f:Z

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->g:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->h:Lkotlin/jvm/functions/Function0;

    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->i:Z

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->j:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->k:Z

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->m:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object/from16 v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "PdpBottomArea$lambda$3"

    invoke-direct {v1, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v5, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v2, v3, v5}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_15

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_0
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v1, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/4 v11, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v1, v15, v11}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    invoke-static {v4, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v12, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v4, v6, v4, v3}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v4, v1, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->i:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    const v3, -0xff91582

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    move-object v3, v9

    goto :goto_4

    :cond_2
    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->CallForAvailability:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->j:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-eq v5, v3, :cond_3

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->DisplayNotECommerceInfo:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    if-ne v5, v3, :cond_4

    :cond_3
    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->k:Z

    if-eqz v3, :cond_4

    const v3, -0xff3dce0

    const v5, 0x7f141056

    invoke-static {v4, v3, v5, v4}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    const v3, -0xff229aa

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    if-nez v5, :cond_5

    const v3, -0xff18ba4

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    move-object v3, v9

    goto :goto_3

    :cond_5
    const v3, -0xff18ba3

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v9

    :pswitch_0
    const v3, 0x7f141062

    goto :goto_2

    :pswitch_1
    const v3, 0x7f1404b6

    goto :goto_2

    :pswitch_2
    const v3, 0x7f14103a    # 1.9681E38f

    goto :goto_2

    :pswitch_3
    const v3, 0x7f141039

    goto :goto_2

    :pswitch_4
    const v3, 0x7f1403d6

    goto :goto_2

    :pswitch_5
    const v3, 0x7f141037

    :goto_2
    invoke-static {v4, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    if-nez v3, :cond_6

    move-object v3, v2

    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v5

    iget-object v6, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v3

    :goto_5
    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v15}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v5, "pdp_mainBottomAction_button"

    invoke-static {v3, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v1, :cond_8

    const v1, -0xfe8c632

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_6
    move-object v8, v9

    goto :goto_7

    :cond_8
    const v1, -0xfe74f4a

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :goto_7
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->l:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->m:Landroidx/compose/runtime/MutableState;

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_9

    if-ne v7, v10, :cond_a

    :cond_9
    new-instance v7, Lna;

    invoke-direct {v7, v9, v1}, Lna;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v9

    move-object v9, v2

    const/high16 v2, 0x30000

    const/16 v3, 0x1c8

    move-object v1, v10

    move-object v10, v7

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->b:Z

    if-eqz v2, :cond_13

    const v2, -0x55a13576

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b

    invoke-static {v15}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v2

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v2, Landroidx/compose/animation/core/Animatable;

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v6

    iget-boolean v7, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->d:Z

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_d

    if-ne v8, v1, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v20, v2

    goto :goto_9

    :cond_d
    :goto_8
    new-instance v16, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;

    const/16 v21, 0x0

    move-object/from16 v20, v2

    move/from16 v17, v3

    move/from16 v18, v7

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpBottomAreaKt$PdpBottomArea$3$1$2$1;-><init>(ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/Animatable;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v8, v16

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_9
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v5, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/animation/core/Animatable;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3, v3}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_e

    if-ne v6, v1, :cond_f

    :cond_e
    new-instance v6, Lk0;

    const/16 v5, 0x18

    invoke-direct {v6, v3, v5}, Lk0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v6}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->f:Z

    if-nez v3, :cond_10

    sget-object v3, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;->INVERT:Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;

    goto :goto_a

    :cond_10
    sget-object v3, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;->DEFAULT:Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;

    :goto_a
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->g:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/a;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_11

    if-ne v7, v1, :cond_12

    :cond_11
    new-instance v7, Lj;

    const/4 v1, 0x4

    invoke-direct {v7, v5, v0, v1}, Lj;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    move-object v5, v4

    move-object v4, v7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/AICompanionButtonVariant;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v4, v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_b

    :cond_13
    const v0, -0x55856f90

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->F()V

    :goto_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v9

    :cond_15
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

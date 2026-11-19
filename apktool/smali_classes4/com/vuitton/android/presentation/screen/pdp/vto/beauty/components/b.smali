.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(FLcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->b:F

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->f:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->i:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v10, p2

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    and-int/2addr v2, v4

    invoke-interface {v10, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "BeautyVtoComposable$lambda$24"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroidx/compose/animation/AnimationModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/TweenSpec;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/4 v3, 0x0

    iget v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->b:F

    invoke-static {v1, v3, v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v10, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v11

    if-eqz v11, :cond_25

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v8, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    instance-of v14, v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Loading;

    if-eqz v14, :cond_4

    const v0, 0x3465d631

    invoke-static {v0, v10, v2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v15, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    const/16 v18, 0x5

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v17, v0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v1, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    invoke-static {v10, v1, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v7, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v10, v8, v10, v4}, Lcj;->s(ILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v10, v0, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10, v5}, Lcom/vuitton/android/presentation/screen/orders/components/returns/legacy/LoadingAnimationKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v6

    :cond_4
    instance-of v2, v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$AddToCartMultiple;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->d:Landroidx/compose/runtime/MutableState;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->e:Landroid/content/Context;

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_12

    const v0, 0x3470b3d6

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$AddToCartMultiple;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$AddToCartMultiple;->a:Ljava/util/List;

    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->f:Z

    if-nez v1, :cond_6

    const v0, 0x3473ad84

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->u:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;->d:Z

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_7

    if-ne v5, v9, :cond_8

    :cond_7
    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$2$1;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_9

    if-ne v6, v9, :cond_a

    :cond_9
    new-instance v6, Lk;

    const/16 v1, 0xd

    invoke-direct {v6, v3, v4, v1}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_b

    if-ne v3, v9, :cond_c

    :cond_b
    new-instance v3, Ll0;

    const/16 v1, 0x19

    invoke-direct {v3, v8, v4, v1}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v7, v10

    move-object v6, v3

    move v3, v0

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->c(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_d
    :goto_3
    const v0, 0x348602de

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_e

    if-ne v1, v9, :cond_f

    :cond_e
    new-instance v1, Lc1;

    const/16 v0, 0x14

    invoke-direct {v1, v3, v0}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_10

    if-ne v4, v9, :cond_11

    :cond_10
    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1;

    const-string v19, "trackSelectProductMultipleAddToCart-C1oCpJM(Ljava/lang/String;Z)V"

    const/16 v20, 0x0

    const/4 v15, 0x2

    const-class v17, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v18, "trackSelectProductMultipleAddToCart"

    move-object/from16 v16, v3

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v14

    :cond_11
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v4, v10, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->b(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    :goto_4
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_12
    move-object v2, v3

    instance-of v3, v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->f:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    if-eqz v3, :cond_15

    const v2, 0x348f91cf

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;

    iget-boolean v8, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;->b:Z

    const v1, 0x7f140c89

    invoke-static {v10, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->b:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->c:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->d:Ljava/lang/String;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v12, v13

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_13

    if-ne v13, v9, :cond_14

    :cond_13
    new-instance v13, Lhe;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->i:Landroidx/compose/runtime/MutableState;

    invoke-direct {v13, v2, v11, v0, v5}, Lhe;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    move-object v9, v13

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v2, 0x0

    move-object v5, v1

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/BackInStockBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_15
    instance-of v3, v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Permissions;

    if-eqz v3, :cond_1b

    const v0, 0x349fbda4

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Permissions;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Permissions;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v1, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v1, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-static {v1, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v2, :cond_16

    invoke-static {v2, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    :cond_16
    move-object/from16 v18, v6

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    if-ne v3, v9, :cond_18

    :cond_17
    new-instance v3, Lie;

    invoke-direct {v3, v11, v0, v8, v5}, Lie;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;Landroid/content/Context;I)V

    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_19

    if-ne v2, v9, :cond_1a

    :cond_19
    new-instance v2, Lje;

    invoke-direct {v2, v8, v5}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v20, v2

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x0

    const v24, 0x5f75b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v21, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object v9, v1

    invoke-static/range {v2 .. v24}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v21

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_5

    :cond_1b
    instance-of v1, v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Tutorial;

    if-eqz v1, :cond_24

    const v1, 0x34b65a87

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->v:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->w:Z

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->x:Z

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_1c

    if-ne v6, v9, :cond_1d

    :cond_1c
    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$10$1;

    invoke-direct {v6, v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$10$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;)V

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_1e

    if-ne v4, v9, :cond_1f

    :cond_1e
    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$11$1;

    const-string v19, "trackVtoHowToApplyScreen()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v18, "trackVtoHowToApplyScreen"

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v14

    :cond_1f
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_20

    if-ne v8, v9, :cond_21

    :cond_20
    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$12$1;

    const-string v19, "trackVtoHowToApplyScroll(I)V"

    const/16 v20, 0x0

    const/4 v15, 0x1

    const-class v17, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v18, "trackVtoHowToApplyScroll"

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v14

    :cond_21
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v0, :cond_22

    if-ne v11, v9, :cond_23

    :cond_22
    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$16$1$13$1;

    const-string v19, "trackRecommendedSwipe()V"

    const/16 v20, 0x0

    const/4 v15, 0x0

    const-class v17, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v18, "trackRecommendedSwipe"

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v20}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v11, v14

    :cond_23
    check-cast v11, Lkotlin/reflect/KFunction;

    move-object v9, v11

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    move-object v2, v4

    move v4, v3

    move v3, v7

    move-object v7, v2

    move-object v2, v1

    invoke-static/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/tutorial/TutorialBottomSheetContentKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;FZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_24
    const v0, 0x34c4a104    # 3.6625E-7f

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_6

    :cond_25
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v6

    :cond_26
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.class public final synthetic Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/compose/runtime/State;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->c:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->e:Landroidx/compose/runtime/State;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v3, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "GiftOptionComposable$lambda$5"

    invoke-direct {v2, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v6, 0x30

    invoke-static {v4, v1, v3, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v3, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_b

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->b:Z

    if-nez v2, :cond_2

    const v4, -0x54266511

    const v6, 0x7f140635

    invoke-static {v3, v4, v6, v3}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v8, v4

    goto :goto_3

    :cond_2
    const v4, -0x54265f52

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    goto :goto_2

    :goto_3
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v14, v4}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4, v10, v6, v11, v7}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const-string v6, "cartGiftMessage_apply_button"

    invoke-static {v4, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->c:Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_4

    if-ne v10, v11, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v17, v6

    goto :goto_5

    :cond_4
    :goto_4
    new-instance v15, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftOptionComposableKt$GiftOptionComposable$5$1$1$1;

    const-string v20, "validateDraft()V"

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-class v18, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModel;

    const-string v19, "validateDraft"

    move-object/from16 v17, v6

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v15

    :goto_5
    check-cast v10, Lkotlin/reflect/KFunction;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->e:Landroidx/compose/runtime/State;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    iget-boolean v6, v6, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->d:Z

    if-eqz v6, :cond_5

    if-nez v2, :cond_5

    goto :goto_6

    :cond_5
    const/4 v5, 0x0

    :goto_6
    if-eqz v2, :cond_6

    const v2, -0x5425fa6d

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->a(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVAnimation;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVAnimation;->y:I

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_7
    move-object v7, v9

    goto :goto_8

    :cond_6
    const v2, -0x30990aa9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :goto_8
    move-object v9, v10

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v2, v11

    move v11, v5

    move-object v5, v1

    const/4 v1, 0x0

    move-object v6, v2

    const/16 v2, 0x168

    move-object v10, v6

    const/4 v6, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object v13, v15

    move-object/from16 v15, v17

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->d:Ljava/lang/String;

    if-nez v1, :cond_7

    const v0, -0x3097d06c

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_9

    :cond_7
    const v2, -0x3097d06b

    invoke-static {v2, v3, v14}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_8

    new-instance v4, Ldy;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Ldy;-><init>(I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v10, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v11, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const-string v4, "cart_gift_panel_bottom_link"

    invoke-static {v2, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const v4, 0x7f1404f8

    invoke-static {v3, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/a;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    if-ne v6, v13, :cond_a

    :cond_9
    new-instance v6, Lpp;

    const/16 v5, 0xb

    invoke-direct {v6, v15, v0, v1, v5}, Lpp;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v5, v6

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/16 v8, 0x1c

    move-object v0, v2

    const/4 v2, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move-object v1, v4

    const/4 v4, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v3, v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    :goto_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_a

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v9

    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

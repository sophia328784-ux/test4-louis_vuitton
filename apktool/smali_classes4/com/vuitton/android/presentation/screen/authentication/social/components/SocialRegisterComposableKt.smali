.class public abstract Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialRegisterComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    move-object/from16 v1, p4

    const-string v3, "SocialRegisterComposable"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, -0x40ab955

    move-object/from16 v5, p5

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    or-int/lit8 v4, p6, 0x6

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_0

    :cond_1
    const/16 v6, 0x10

    :goto_0
    or-int/2addr v4, v6

    move-object/from16 v8, p2

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_1

    :cond_2
    const/16 v6, 0x80

    :goto_1
    or-int/2addr v4, v6

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_2

    :cond_3
    const/16 v6, 0x400

    :goto_2
    or-int/2addr v4, v6

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_3

    :cond_4
    const/16 v6, 0x2000

    :goto_3
    or-int/2addr v4, v6

    and-int/lit16 v6, v4, 0x2493

    const/16 v9, 0x2492

    const/4 v12, 0x0

    if-eq v6, v9, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    move v6, v12

    :goto_4
    and-int/lit8 v9, v4, 0x1

    invoke-virtual {v5, v9, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v6, p6, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    goto :goto_6

    :cond_7
    :goto_5
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    sget-object v9, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v9}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v5}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v13

    const/16 v14, 0xe

    invoke-static {v9, v13, v12, v14}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v15

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v9

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v14, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v13, v14, v5, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    iget-wide v14, v5, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v5, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v5, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_d

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_8

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v13, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v15, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move v7, v4

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v22, v5

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    shl-int/lit8 v11, v7, 0x9

    const/high16 v13, 0x70000

    and-int/2addr v11, v13

    or-int/lit8 v26, v11, 0x30

    shl-int/lit8 v11, v7, 0xc

    const/high16 v13, 0x1c00000

    and-int/2addr v11, v13

    or-int v23, v26, v11

    const v24, 0x6000180

    const v25, 0x3ef49

    move-object v11, v3

    const/4 v3, 0x0

    move-object v13, v6

    const/4 v6, 0x0

    move v14, v7

    move v7, v9

    const/4 v9, 0x0

    move-object v15, v11

    const/4 v11, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x1

    move/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move/from16 v27, v18

    const/16 v18, 0x0

    move-object/from16 v28, v19

    const/16 v19, 0x0

    move/from16 v29, v20

    const/16 v20, 0x0

    move-object/from16 v30, v21

    const/16 v21, 0x0

    move-object/from16 v31, v0

    move/from16 v0, v27

    move-object/from16 v33, v28

    move-object/from16 v32, v30

    const/16 v1, 0x800

    invoke-static/range {v3 .. v25}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    move-object v6, v4

    move-object v4, v10

    move-object/from16 v5, v22

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v9, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    and-int/lit16 v8, v0, 0x1c00

    if-ne v8, v1, :cond_9

    const/4 v11, 0x1

    goto :goto_8

    :cond_9
    const/4 v11, 0x0

    :goto_8
    or-int v1, v3, v11

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_a

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_b

    :cond_a
    new-instance v3, Ljm0;

    const/16 v1, 0x1c

    invoke-direct {v3, v2, v4, v1}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lkv0;

    move-object/from16 v3, p4

    const/4 v8, 0x1

    invoke-direct {v1, v3, v8}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v8, Lkv0;

    const/4 v10, 0x2

    invoke-direct {v8, v3, v10}, Lkv0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    move/from16 v25, v26

    const/16 v26, 0x0

    const v27, 0x79f49    # 6.99989E-40f

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v10, p2

    move-object/from16 v18, v1

    invoke-static/range {v5 .. v27}, Lcom/vuitton/android/presentation/screen/dynamicform/components/DynamicFormComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v24

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;->b:Z

    if-eqz v1, :cond_c

    const v1, -0x4b880fd1

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v13, v32

    const/4 v1, 0x0

    invoke-static {v13, v5, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/components/LegalNoticeKt;->a(Landroid/content/Context;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    const v6, -0x4b872713

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v11, v33

    invoke-direct {v1, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-virtual {v6, v1, v7, v8}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v5, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v11, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v9, 0x0

    invoke-static {v6, v9, v7, v8}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-string v7, "nativeRegister_confirm_button"

    invoke-static {v6, v7}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v7, 0x7f140635

    invoke-static {v5, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    iget-boolean v13, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    shl-int/lit8 v0, v0, 0x12

    const/high16 v7, 0x70000000

    and-int/2addr v0, v7

    const/16 v4, 0x178

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p3

    move v3, v0

    move-object v7, v1

    invoke-static/range {v3 .. v14}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v31

    goto :goto_a

    :cond_d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_e
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v0, Lkj0;

    const/16 v7, 0x16

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lkj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

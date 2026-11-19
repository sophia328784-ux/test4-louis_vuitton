.class public abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u00a8\u0006\u0007\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"
    }
    d2 = {
        "",
        "themeListExpanded",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;",
        "currentSelectedTheme",
        "newThemeClicked",
        "",
        "fadeOutValue",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;FLcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;FFFIFFFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v13, p12

    move/from16 v14, p14

    if-eqz v0, :cond_0

    const-string v1, "ThematicPlpThemeSelectionContent-ioSWKzA"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x4cb072b9

    move-object/from16 v4, p13

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v4, v14, 0x6

    if-nez v4, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v14

    goto :goto_1

    :cond_2
    move v4, v14

    :goto_1
    and-int/lit8 v9, v14, 0x30

    if-nez v9, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    :cond_4
    and-int/lit16 v9, v14, 0x180

    if-nez v9, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_3

    :cond_5
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v4, v9

    :cond_6
    and-int/lit16 v9, v14, 0xc00

    if-nez v9, :cond_8

    move/from16 v9, p3

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x800

    goto :goto_4

    :cond_7
    const/16 v15, 0x400

    :goto_4
    or-int/2addr v4, v15

    goto :goto_5

    :cond_8
    move/from16 v9, p3

    :goto_5
    and-int/lit16 v15, v14, 0x6000

    if-nez v15, :cond_a

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0x4000

    goto :goto_6

    :cond_9
    const/16 v15, 0x2000

    :goto_6
    or-int/2addr v4, v15

    :cond_a
    const/high16 v15, 0x30000

    and-int/2addr v15, v14

    if-nez v15, :cond_c

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_b

    const/high16 v15, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v15, 0x10000

    :goto_7
    or-int/2addr v4, v15

    :cond_c
    const/high16 v15, 0x180000

    and-int/2addr v15, v14

    if-nez v15, :cond_e

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_d

    const/high16 v15, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v15, 0x80000

    :goto_8
    or-int/2addr v4, v15

    :cond_e
    const/high16 v15, 0xc00000

    and-int/2addr v15, v14

    if-nez v15, :cond_10

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    if-eqz v15, :cond_f

    const/high16 v15, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v15, 0x400000

    :goto_9
    or-int/2addr v4, v15

    :cond_10
    const/high16 v15, 0x36000000

    or-int/2addr v4, v15

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/16 v15, 0x100

    goto :goto_a

    :cond_11
    const/16 v15, 0x80

    :goto_a
    const/16 v16, 0x36

    or-int v15, v16, v15

    const v16, 0x12492493

    and-int v10, v4, v16

    const v12, 0x12492492

    if-ne v10, v12, :cond_13

    and-int/lit16 v10, v15, 0x93

    const/16 v12, 0x92

    if-eq v10, v12, :cond_12

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v10, 0x1

    :goto_c
    and-int/lit8 v12, v4, 0x1

    invoke-virtual {v0, v12, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_25

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v10, 0x7f140307

    invoke-static {v0, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/unit/Density;

    invoke-interface {v12, v6}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v5, :cond_14

    const/4 v11, 0x0

    invoke-static {v11}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v11, Landroidx/compose/animation/core/Animatable;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v18

    const/high16 v19, 0x70000000

    and-int v9, v4, v19

    move/from16 v19, v12

    const/high16 v12, 0x20000000

    if-ne v9, v12, :cond_15

    const/4 v9, 0x1

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    :goto_d
    or-int v9, v18, v9

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    const/high16 v12, 0xe000000

    and-int/2addr v12, v4

    move/from16 p8, v9

    const/high16 v9, 0x4000000

    if-ne v12, v9, :cond_16

    const/4 v9, 0x1

    goto :goto_e

    :cond_16
    const/4 v9, 0x0

    :goto_e
    or-int v9, p8, v9

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    const v20, 0x3dcccccd    # 0.1f

    const/high16 v23, 0x43480000    # 200.0f

    const/high16 v22, 0x3f000000    # 0.5f

    if-nez v9, :cond_18

    if-ne v12, v5, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v9, v20

    move/from16 v27, v22

    move/from16 v26, v23

    goto :goto_10

    :cond_18
    :goto_f
    new-instance v18, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;

    const/16 v24, 0x0

    move-object/from16 v21, v11

    invoke-direct/range {v18 .. v24}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemeSelectionContent$1$1;-><init>(FFLandroidx/compose/animation/core/Animatable;FFLkotlin/coroutines/Continuation;)V

    move-object/from16 v12, v18

    move/from16 v9, v20

    move/from16 v27, v22

    move/from16 v26, v23

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v6, :cond_19

    if-ne v12, v5, :cond_1a

    :cond_19
    new-instance v12, Lsa;

    const/4 v6, 0x4

    invoke-direct {v12, v11, v6}, Lsa;-><init>(Landroidx/compose/animation/core/Animatable;I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v12}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6, v7}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v11, 0xe000

    and-int/2addr v11, v4

    const/16 v12, 0x4000

    if-ne v11, v12, :cond_1b

    const/4 v12, 0x1

    goto :goto_11

    :cond_1b
    const/4 v12, 0x0

    :goto_11
    and-int/lit16 v9, v4, 0x380

    move-object/from16 v25, v1

    const/16 v1, 0x100

    if-ne v9, v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :goto_12
    or-int/2addr v1, v12

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v1, :cond_1e

    if-ne v12, v5, :cond_1d

    goto :goto_13

    :cond_1d
    move/from16 v16, v4

    move-object/from16 v4, p4

    goto :goto_14

    :cond_1e
    :goto_13
    new-instance v12, Lcl0;

    const/16 v1, 0x16

    move/from16 v16, v4

    move-object/from16 v4, p4

    invoke-direct {v12, v4, v3, v10, v1}, Lcl0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    invoke-static {v6, v1, v12}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v3, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->equals(Ljava/lang/Object;)Z

    move-result v1

    new-instance v10, Lbw;

    const/4 v12, 0x5

    invoke-direct {v10, v8, v12}, Lbw;-><init>(FI)V

    const/4 v12, 0x0

    invoke-static {v6, v1, v10, v0, v12}, Lcom/vuitton/android/designkit/components/ModifierExtKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    iget-object v10, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->b:Ljava/lang/String;

    if-eqz v10, :cond_20

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 p9, v1

    if-lez v18, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_15

    :cond_1f
    const/4 v2, 0x1

    goto :goto_15

    :cond_20
    move-object/from16 p9, v1

    const/4 v2, 0x1

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    :goto_15
    sget-object v20, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState$OverlayOpen;

    and-int/lit16 v1, v15, 0x380

    const/16 v12, 0x100

    if-ne v1, v12, :cond_21

    move v1, v2

    goto :goto_16

    :cond_21
    const/4 v1, 0x0

    :goto_16
    if-ne v9, v12, :cond_22

    goto :goto_17

    :cond_22
    const/4 v2, 0x0

    :goto_17
    or-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_23

    if-ne v2, v5, :cond_24

    :cond_23
    new-instance v2, Lp01;

    const/16 v1, 0x10

    invoke-direct {v2, v13, v3, v1}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v21, v2

    check-cast v21, Lkotlin/jvm/functions/Function0;

    sget-object v22, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;->OVERLAY:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;

    shr-int/lit8 v1, v16, 0x6

    and-int/lit8 v1, v1, 0x70

    const/high16 v2, 0xc30000

    or-int/2addr v1, v2

    or-int v24, v1, v11

    move/from16 v16, p3

    move-object/from16 v15, p9

    move-object/from16 v23, v0

    move-object/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    invoke-static/range {v15 .. v24}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpToolBoxKt;->a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeCapsuleRenderContext;Landroidx/compose/runtime/Composer;I)V

    const/16 v0, 0x1f4

    move v9, v0

    move/from16 v11, v26

    move/from16 v12, v27

    const v10, 0x3dcccccd    # 0.1f

    goto :goto_18

    :cond_25
    move-object/from16 v23, v0

    move-object/from16 v25, v1

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    :goto_18
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_26

    new-instance v0, Ld41;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v1, v25

    invoke-direct/range {v0 .. v14}, Ld41;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;FLcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;FFFIFFFLkotlin/jvm/functions/Function1;I)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_26
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Ljava/util/List;FFLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v0, p5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x78486011

    move-object/from16 v5, p6

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p7, v2

    move-object/from16 v11, p1

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v2, v5

    or-int/lit16 v2, v2, 0x2000

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v6, 0x20000

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_4

    :cond_4
    const/high16 v5, 0x10000

    :goto_4
    or-int/2addr v2, v5

    const v5, 0x12493

    and-int/2addr v5, v2

    const v7, 0x12492

    const/4 v13, 0x0

    if-eq v5, v7, :cond_5

    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    move v5, v13

    :goto_5
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v8, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v5, p7, 0x1

    const v7, -0xe001

    if-eqz v5, :cond_7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v2, v7

    move v14, v2

    move-object/from16 v2, p4

    goto :goto_7

    :cond_7
    :goto_6
    new-instance v14, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;-><init>(FJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/2addr v2, v7

    move-object/from16 v36, v14

    move v14, v2

    move-object/from16 v2, v36

    :goto_7
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v5, v15, :cond_8

    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v5, v8}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v18, v5

    check-cast v18, Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_9

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v15, :cond_a

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v7, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v15, :cond_b

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v19, v9

    check-cast v19, Landroidx/compose/runtime/MutableState;

    const/high16 v9, 0x70000

    and-int/2addr v9, v14

    if-ne v9, v6, :cond_c

    const/4 v6, 0x1

    goto :goto_8

    :cond_c
    move v6, v13

    :goto_8
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v6, :cond_d

    if-ne v9, v15, :cond_e

    :cond_d
    new-instance v9, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;

    invoke-direct {v9, v0, v5, v7, v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$closeOverlay$1$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v20, v9

    check-cast v20, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    if-nez v6, :cond_f

    move-object v6, v5

    move/from16 v5, v24

    goto :goto_9

    :cond_f
    move-object v6, v5

    move/from16 v5, v23

    :goto_9
    const/16 v9, 0xfa

    const/16 p6, 0x1

    const/4 v12, 0x6

    invoke-static {v9, v13, v10, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v9

    move-object v12, v6

    move-object v6, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/16 v10, 0x1c

    move-object/from16 v21, v7

    const/4 v7, 0x0

    move-object/from16 v26, v12

    move-object/from16 v27, v16

    move-object/from16 v25, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v0, v20

    move-object/from16 v18, v21

    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/AnimationSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v28

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "ThematicPlpThemesOverlay-1yyLQnY"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v5, v7}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-wide v9, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;->b:J

    iget v7, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;->a:F

    invoke-static {v7, v9, v10}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v9

    sget-object v7, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v9, v10, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v29

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v34, 0x7

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v33, v5

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v29

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_10

    if-ne v7, v15, :cond_11

    :cond_10
    new-instance v7, Lsm0;

    const/16 v5, 0x15

    invoke-direct {v7, v12, v13, v0, v5}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v33, v7

    check-cast v33, Lkotlin/jvm/functions/Function0;

    const/16 v34, 0xf

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v29 .. v34}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v8, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v29, v2

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v3, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v3, :cond_1d

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v3, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v3, :cond_12

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v7, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, 0xff73e6d

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/collections/AbstractList;

    invoke-virtual {v3, v1}, Lkotlin/collections/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_13

    goto :goto_b

    :cond_13
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->w(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_b
    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v3, 0x1

    if-ltz v3, :cond_19

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_14

    add-float v9, v4, p2

    int-to-float v10, v7

    mul-float/2addr v9, v10

    neg-float v9, v9

    goto :goto_d

    :cond_14
    move/from16 v9, v24

    :goto_d
    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 p4, v2

    const-string v2, "thematicPlp_themeCapsuleItem_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-object v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;->SELECTED:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;

    goto :goto_e

    :cond_15
    sget-object v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;->UNSELECTED:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;

    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface/range {v18 .. v18}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    invoke-virtual {v5, v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    move/from16 v10, v24

    goto :goto_f

    :cond_16
    move/from16 v10, v23

    :goto_f
    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v30

    move-object/from16 v31, v1

    move-object/from16 v1, v25

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    move-object/from16 v21, v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_18

    if-ne v0, v15, :cond_17

    goto :goto_10

    :cond_17
    move-object/from16 v17, v1

    move-object v1, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v21

    move-object/from16 v21, v18

    goto :goto_11

    :cond_18
    :goto_10
    new-instance v16, Ld1;

    const/16 v22, 0x15

    move-object/from16 v17, v1

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v16 .. v22}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v18

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_11
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function1;

    and-int/lit16 v0, v14, 0x1c00

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 p6, v5

    move-object v5, v2

    move-object v2, v6

    move-object/from16 v6, p6

    move-object/from16 p6, v8

    move-object v8, v3

    move-object/from16 v3, v17

    move-object/from16 v17, p6

    move/from16 p6, v7

    move-object/from16 v35, v22

    move/from16 v11, v30

    move v7, v4

    move-object/from16 v22, v20

    move-object/from16 v4, v31

    move/from16 v20, v18

    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-static/range {v4 .. v18}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;FLcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;FFFIFFFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v11, p1

    move/from16 v4, p3

    move-object v12, v1

    move-object v6, v2

    move-object/from16 v25, v3

    move-object/from16 v8, v17

    move-object/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v18, v21

    move-object/from16 v0, v22

    move-object/from16 v15, v35

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p6

    const/16 p6, 0x1

    goto/16 :goto_c

    :cond_19
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v27

    :cond_1a
    move-object/from16 v22, v0

    move-object v2, v6

    move-object v1, v12

    move-object/from16 v19, v13

    move-object/from16 v35, v15

    move-object/from16 v3, v25

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v2, "thematicPlp_closeChangeTheme_button"

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->f(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;

    move-result-object v0

    iget-object v5, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtons;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;

    const v0, 0x7f140319

    invoke-static {v8, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v6, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->q:I

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    move-object/from16 v9, v22

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_1b

    move-object/from16 v2, v35

    if-ne v7, v2, :cond_1c

    :cond_1b
    new-instance v16, Lb41;

    const/16 v21, 0x0

    move-object/from16 v18, v1

    move-object/from16 v17, v3

    move-object/from16 v20, v9

    invoke-direct/range {v16 .. v21}, Lb41;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v7, v16

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object v14, v8

    move-object v8, v0

    invoke-static/range {v4 .. v17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVIconButtonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton;ILandroidx/compose/ui/unit/Dp;Ljava/lang/String;ZIZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    move-object v8, v14

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 v5, v29

    goto :goto_12

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27

    :cond_1e
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    :goto_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1f

    new-instance v0, Lc41;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lc41;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Ljava/util/List;FFLcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final c(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$triggerClose$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt$ThematicPlpThemesOverlay$triggerClose$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    const/4 p2, 0x3

    invoke-static {p0, v0, v0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

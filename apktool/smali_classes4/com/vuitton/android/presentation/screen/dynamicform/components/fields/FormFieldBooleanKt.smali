.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldBooleanKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldBooleanKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v12, p4

    move/from16 v7, p7

    const-string v8, "FormFieldBoolean"

    if-eqz v0, :cond_0

    invoke-static {v0, v8}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7234985d

    move-object/from16 v3, p6

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    or-int/lit8 v1, v7, 0x6

    and-int/lit8 v3, v7, 0x30

    if-nez v3, :cond_2

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int/2addr v1, v3

    :cond_2
    and-int/lit16 v3, v7, 0x180

    if-nez v3, :cond_4

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x100

    goto :goto_1

    :cond_3
    const/16 v3, 0x80

    :goto_1
    or-int/2addr v1, v3

    :cond_4
    and-int/lit16 v3, v7, 0xc00

    move/from16 v15, p3

    if-nez v3, :cond_6

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x800

    goto :goto_2

    :cond_5
    const/16 v3, 0x400

    :goto_2
    or-int/2addr v1, v3

    :cond_6
    and-int/lit16 v3, v7, 0x6000

    if-nez v3, :cond_8

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x4000

    goto :goto_3

    :cond_7
    const/16 v3, 0x2000

    :goto_3
    or-int/2addr v1, v3

    :cond_8
    const/high16 v3, 0x30000

    and-int/2addr v3, v7

    if-nez v3, :cond_b

    if-nez p5, :cond_9

    const/4 v3, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    :goto_4
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_a
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v1, v3

    :cond_b
    move v10, v1

    const v1, 0x12493

    and-int/2addr v1, v10

    const v3, 0x12492

    const/4 v11, 0x0

    if-eq v1, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    move v1, v11

    :goto_6
    and-int/lit8 v3, v10, 0x1

    invoke-virtual {v13, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->g:Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v3, :cond_d

    iget-object v1, v3, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/AnnotatedString;->d(I)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->h:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    move v1, v11

    :goto_7
    const-string v5, ""

    const/4 v7, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    const v14, 0x36995f9a

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v2, v3}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v14

    move v9, v11

    :goto_8
    move-object v11, v14

    goto :goto_a

    :cond_e
    const v14, 0x369a9e71

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v14, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Context;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->f:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v11, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11, v4, v7, v4}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString;

    invoke-direct {v9, v5, v4, v7, v4}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_9
    invoke-virtual {v2, v9}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v14

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :goto_a
    const/high16 v14, 0x3f800000    # 1.0f

    move v4, v14

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v18, 0xe000

    and-int v4, v10, v18

    const/16 v7, 0x4000

    if-ne v4, v7, :cond_f

    const/4 v4, 0x1

    goto :goto_b

    :cond_f
    move v4, v9

    :goto_b
    and-int/lit16 v7, v10, 0x380

    const/16 v9, 0x100

    if-ne v7, v9, :cond_10

    const/4 v7, 0x1

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    :goto_c
    or-int/2addr v4, v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_11

    if-ne v7, v9, :cond_12

    :cond_11
    new-instance v7, Ldt;

    const/16 v4, 0x11

    invoke-direct {v7, v12, v6, v4}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v19, 0x1e

    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v14

    and-int/lit16 v15, v10, 0x1c00

    const/16 v4, 0x800

    if-ne v15, v4, :cond_13

    move v4, v7

    goto :goto_d

    :cond_13
    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v15

    or-int/2addr v4, v15

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v4, v15

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v4, v15

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v4, v15

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v4, :cond_14

    if-ne v15, v9, :cond_15

    :cond_14
    move-object v4, v0

    goto :goto_e

    :cond_15
    move-object/from16 v31, v0

    move-object v9, v5

    move-object v4, v11

    const/4 v11, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_f

    :goto_e
    new-instance v0, Lxz;

    move-object/from16 v31, v4

    move-object v9, v5

    move-object v4, v11

    const/4 v11, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v5, v2

    move v2, v1

    move/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lxz;-><init>(ZZLandroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/AnnotatedString;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    move-object v2, v5

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v15, v0

    :goto_f
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x3

    invoke-static {v14, v11, v15, v0}, Lcom/vuitton/android/presentation/extensions/ModifierExtKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->k:Ljava/lang/String;

    if-nez v5, :cond_16

    move-object v5, v9

    :cond_16
    invoke-static {v1, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v9, 0x6

    invoke-static {v3, v5, v13, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v14, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_1a

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_17

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_17
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v9, v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;->a:Z

    shr-int/lit8 v1, v10, 0x6

    and-int/lit16 v1, v1, 0x1c70

    const/high16 v3, 0x70000

    shl-int/lit8 v0, v10, 0x3

    and-int/2addr v0, v3

    or-int v14, v1, v0

    const/16 v15, 0x11

    move/from16 v16, v7

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p5

    move-object v1, v8

    move/from16 v5, v16

    move/from16 v0, v19

    const/4 v3, 0x2

    move/from16 v8, p3

    invoke-static/range {v7 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-static {v1, v7, v0, v5}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v0, v1, v7, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    sget-object v1, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldBooleanKt$WhenMappings;->a:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v5, :cond_19

    if-ne v1, v3, :cond_18

    const v1, 0x115ec04d

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    move-wide v11, v7

    goto :goto_12

    :cond_18
    const/4 v9, 0x0

    const v0, 0x115eaaae

    invoke-static {v13, v0, v9}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v9, 0x0

    const v1, 0x115eb587

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :goto_12
    const/16 v29, 0x0

    const v30, 0x3fff8

    move-object/from16 v27, v13

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v0

    move-object v9, v4

    invoke-static/range {v9 .. v30}, Landroidx/compose/material3/TextKt;->d(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v27

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, v31

    goto :goto_13

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v11

    :cond_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v1, v0

    :goto_13
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_1c

    new-instance v0, Lp1;

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p7

    move-object v3, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

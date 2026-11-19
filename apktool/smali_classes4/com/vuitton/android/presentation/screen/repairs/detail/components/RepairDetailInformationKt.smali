.class public abstract Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move/from16 v9, p7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x6c9f1a48

    move-object/from16 v3, p6

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    and-int/lit8 v0, v9, 0x6

    const/4 v3, 0x2

    if-nez v0, :cond_1

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_3
    and-int/lit16 v4, v9, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_5
    and-int/lit16 v4, v9, 0xc00

    if-nez v4, :cond_7

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x800

    goto :goto_4

    :cond_6
    const/16 v4, 0x400

    :goto_4
    or-int/2addr v0, v4

    :cond_7
    and-int/lit16 v4, v9, 0x6000

    if-nez v4, :cond_9

    move-object/from16 v4, p4

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_5

    :cond_8
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v0, v11

    goto :goto_6

    :cond_9
    move-object/from16 v4, p4

    :goto_6
    const/high16 v11, 0x30000

    and-int/2addr v11, v9

    if-nez v11, :cond_b

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/high16 v11, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v11, 0x10000

    :goto_7
    or-int/2addr v0, v11

    :cond_b
    const v11, 0x12493

    and-int/2addr v11, v0

    const v12, 0x12492

    const/4 v15, 0x0

    if-eq v11, v12, :cond_c

    const/4 v11, 0x1

    goto :goto_8

    :cond_c
    move v11, v15

    :goto_8
    and-int/lit8 v12, v0, 0x1

    invoke-virtual {v13, v12, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_18

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v12, "RepairDetailInformation"

    invoke-direct {v11, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v14, 0x0

    invoke-static {v11, v5, v14, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v3, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v11, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v4, v5, v11}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v5, v13, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v5, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v13, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v14, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/4 v15, 0x0

    if-eqz v14, :cond_17

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_d

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v22, 0x0

    const/16 v23, 0xc

    sget-object v24, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/16 v21, 0x0

    move/from16 v20, v3

    move/from16 v19, v4

    move-object/from16 v18, v24

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v4, v18

    const v5, 0x7f1410da

    invoke-static {v13, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object v14, v3

    move-object/from16 v34, v4

    iget-wide v3, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v32, 0x0

    const v33, 0x1fff8

    move-object v6, v15

    const/16 v18, 0x1

    const-wide/16 v15, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move/from16 v20, v18

    move/from16 v21, v19

    const-wide/16 v18, 0x0

    move/from16 v22, v20

    const/16 v20, 0x0

    move/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    move/from16 v25, v23

    const-wide/16 v22, 0x0

    move/from16 v26, v24

    const/16 v24, 0x0

    move/from16 v27, v25

    const/16 v25, 0x0

    move/from16 v28, v26

    const/16 v26, 0x0

    move/from16 v29, v27

    const/16 v27, 0x0

    move/from16 v30, v28

    const/16 v28, 0x0

    const/16 v31, 0x0

    move/from16 v35, v29

    move-object/from16 v29, v5

    move/from16 v5, v35

    move-wide/from16 v35, v3

    move-object v4, v6

    move-object v3, v12

    move-object v12, v14

    move/from16 v6, v30

    move-object/from16 v30, v13

    move-wide/from16 v13, v35

    invoke-static/range {v11 .. v33}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v13, v30

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v28, 0x0

    const/16 v29, 0x8

    move/from16 v26, v11

    move/from16 v25, v12

    move/from16 v27, v14

    move-object/from16 v24, v34

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/4 v12, 0x0

    move-wide/from16 v35, v14

    move-object v15, v13

    move-wide/from16 v13, v35

    invoke-static/range {v11 .. v17}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v13, v15

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->l:Ljava/lang/String;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/repair/RepairType;->STORE_CARE_SERVICE:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    if-ne v10, v14, :cond_e

    const v15, 0x1e792fe9

    invoke-virtual {v13, v15}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    and-int/lit8 v16, v0, 0x70

    shr-int/lit8 v4, v0, 0x9

    and-int/lit16 v4, v4, 0x380

    or-int v4, v16, v4

    invoke-static {v15, v2, v8, v13, v4}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    move-object v15, v3

    move v6, v5

    move-object v4, v13

    move v13, v0

    goto :goto_c

    :cond_e
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REQUEST_SUBMITTED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v15, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->UNDER_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array {v4, v15}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v4

    invoke-static {v12, v4}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x1e7dfeb5

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v4, v0, 0x3

    and-int/lit8 v4, v4, 0xe

    invoke-static {v2, v13, v4}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt;->c(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_f
    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v12, v4, :cond_11

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v12, v4, :cond_11

    sget-object v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v12, v4, :cond_11

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_b

    :cond_10
    const v4, 0x1e899144

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_11
    :goto_b
    const v4, 0x1e84c0c6

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move v4, v0

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    shl-int/lit8 v15, v4, 0x3

    and-int/lit16 v15, v15, 0x3f0

    shr-int/lit8 v5, v4, 0x3

    and-int/lit16 v5, v5, 0x1c00

    or-int/2addr v5, v15

    move-object v6, v13

    move v13, v4

    move-object v4, v6

    move-object v15, v3

    const/4 v6, 0x0

    move-object/from16 v3, p4

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    if-eqz p2, :cond_12

    invoke-static {v11}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const v0, 0x1e8aedc6

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-static {v6, v4, v0, v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/CareExpertNoteComposableKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_12
    const v0, 0x1e8c4ea4

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    if-eq v10, v14, :cond_16

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v12, v0, :cond_16

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HOME_DELIVERY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v12, v0, :cond_16

    const v0, 0x1e9088fa

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v28, 0x0

    const/16 v29, 0x8

    move/from16 v26, v1

    move/from16 v25, v3

    move/from16 v27, v5

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v1, 0x7f1408e7

    invoke-static {v4, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    and-int/lit16 v1, v13, 0x1c00

    const/16 v3, 0x800

    if-ne v1, v3, :cond_13

    const/4 v1, 0x1

    goto :goto_e

    :cond_13
    move v1, v6

    :goto_e
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v1, :cond_15

    :cond_14
    new-instance v3, Lis0;

    const/4 v1, 0x1

    invoke-direct {v3, v7, v2, v1}, Lis0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;I)V

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v19, v3

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/16 v12, 0x1f8

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v13, v4

    move-object v3, v15

    move-object v15, v0

    invoke-static/range {v11 .. v22}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_16
    move-object v13, v4

    move-object v3, v15

    const v0, 0x1e994784

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v6, 0x1

    invoke-static {v0, v1, v13, v6}, Lcj;->x(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;FLandroidx/compose/runtime/GapComposer;Z)V

    goto :goto_10

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/16 v17, 0x0

    throw v17

    :cond_18
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    new-instance v0, Lp1;

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object v4, v7

    move-object v6, v8

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    const v0, -0x36c87e66

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v0, v5, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v5

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    and-int/lit8 v6, v5, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v0, v6

    :cond_3
    and-int/lit16 v6, v5, 0x180

    if-nez v6, :cond_5

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    const/16 v6, 0x80

    :goto_3
    or-int/2addr v0, v6

    :cond_5
    and-int/lit16 v6, v5, 0xc00

    if-nez v6, :cond_7

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    const/16 v6, 0x400

    :goto_4
    or-int/2addr v0, v6

    :cond_7
    and-int/lit16 v6, v0, 0x493

    const/16 v9, 0x492

    const/16 v29, 0x1

    const/4 v10, 0x0

    if-eq v6, v9, :cond_8

    move/from16 v6, v29

    goto :goto_5

    :cond_8
    move v6, v10

    :goto_5
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v8, v9, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_19

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    iget-wide v14, v3, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->AWAITING_PAYMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v17, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->CONFIRM_ADDRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v18, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DELIVERED_TO_CLIENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v19, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v20, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_CONTACT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v21, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PAYMENT_INITIATED:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v22, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->REPAIR_IN_PROGRESS:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v23, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v24, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_IN_PREPARATION:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array/range {v16 .. v24}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v7

    move-object/from16 v30, v16

    move-object/from16 v31, v17

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    move-object/from16 v34, v22

    invoke-static {v11, v7}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const v7, -0x2da7ad54

    const v9, 0x7f1408bf

    invoke-static {v8, v7, v9, v8, v10}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    goto :goto_7

    :cond_9
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v17, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v18, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v19, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPED_FROM_EHUB:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v20, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v21, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->UNDER_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    filled-new-array/range {v16 .. v21}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v7

    invoke-static {v11, v7}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_6

    :cond_a
    const v7, -0x2da2fb98

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_b
    :goto_6
    const v7, -0x2da42f6a

    const v9, 0x7f1408d4

    invoke-static {v8, v7, v9, v8, v10}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    :goto_7
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v7, v14, v16

    if-nez v7, :cond_c

    const v7, -0x2da0ae98

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_c
    const v7, -0x2da1dea9

    const v9, 0x7f1408a9

    invoke-static {v8, v7, v9, v8, v10}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v9

    :goto_8
    const-string v7, "RepairInformationAssessment"

    if-nez v13, :cond_d

    const-wide/16 v16, 0x0

    cmpg-double v16, v14, v16

    if-nez v16, :cond_d

    const v9, -0x2d884818

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v35, v0

    move-object/from16 v41, v6

    move-object v3, v7

    move v2, v10

    move-object/from16 v36, v11

    goto/16 :goto_b

    :cond_d
    const v10, -0x2d9dc391

    invoke-static {v8, v10, v7}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v17

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v21, 0x0

    const/16 v22, 0xc

    const/16 v20, 0x0

    move/from16 v19, v5

    move/from16 v18, v10

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v17, v5

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v18, v6

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v27, 0x0

    const v28, 0x1fff8

    move-object/from16 v24, v10

    move-object/from16 v19, v11

    const-wide/16 v10, 0x0

    move-object/from16 v20, v12

    const/4 v12, 0x0

    move-wide/from16 v21, v14

    move-object v15, v13

    const-wide/16 v13, 0x0

    move-object/from16 v23, v15

    const/4 v15, 0x0

    const/16 v25, 0x0

    const/16 v16, 0x0

    move-object/from16 v35, v7

    move-object/from16 v7, v17

    move-object/from16 v26, v18

    const-wide/16 v17, 0x0

    move-object/from16 v36, v19

    const/16 v19, 0x0

    move-object/from16 v37, v20

    const/16 v20, 0x0

    move-wide/from16 v38, v21

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v40, v23

    const/16 v23, 0x0

    move-object/from16 v41, v26

    const/16 v26, 0x0

    move/from16 v2, v25

    move-object/from16 v3, v35

    move/from16 v35, v0

    move-object/from16 v25, v8

    move-object/from16 v0, v37

    move-wide/from16 v42, v5

    move-object v6, v9

    move-wide/from16 v8, v42

    move-wide/from16 v4, v38

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    invoke-static/range {v36 .. v36}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-static {v1, v0, v4, v5}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_e
    invoke-static/range {v36 .. v36}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->c(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z

    move-result v7

    if-eqz v7, :cond_10

    if-eqz v40, :cond_f

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_9

    :cond_f
    move-wide v14, v4

    :goto_9
    invoke-static {v1, v0, v14, v15}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v6

    :cond_10
    :goto_a
    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v8, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v9, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v11, 0x0

    const/16 v12, 0xc

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v27, 0x0

    const v28, 0x1fff8

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v0

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v25

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT_ACC:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-object/from16 v4, v36

    if-ne v4, v0, :cond_11

    const v5, -0x2d8689fc

    invoke-static {v8, v5, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v9

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v10, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v5, 0x7f1408de

    invoke-static {v8, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v27, 0x0

    const v28, 0x1fff8

    move-object/from16 v25, v8

    move-wide v8, v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v5

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v25

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v10, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v5, 0x7f1408dd

    invoke-static {v8, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    move-wide v8, v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v24, v5

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v25

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_11
    const v5, -0x2d7a47b8

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->PRELIMINARY_ASSESSMENT:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v4, v5, :cond_18

    const v5, -0x2d782f08

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v10, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const v5, 0x7f1408e4

    invoke-static {v8, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v27, 0x0

    const v28, 0x1fff8

    move-object/from16 v25, v8

    move-wide v8, v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v5

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v7, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    move-object/from16 v3, p1

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->i:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_12

    goto :goto_d

    :cond_12
    const/4 v5, 0x0

    :goto_d
    move-object/from16 v6, p2

    if-nez v5, :cond_13

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->K:Ljava/lang/String;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->L:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    move-object/from16 v10, v41

    invoke-static {v6, v10, v9}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Landroid/content/Context;Lkotlinx/serialization/json/Json;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_13
    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v25 .. v25}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v27, 0x0

    const v28, 0x1fff8

    move-object/from16 v24, v8

    move-wide v8, v9

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object/from16 v42, v6

    move-object v6, v5

    move-object/from16 v5, v42

    invoke-static/range {v6 .. v28}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v8, v25

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->RECEIVED_AT_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    sget-object v23, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->SHIPPING_TO_ATELIER:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-object/from16 v20, v0

    move-object/from16 v16, v30

    move-object/from16 v17, v31

    move-object/from16 v18, v32

    move-object/from16 v19, v33

    move-object/from16 v22, v34

    filled-new-array/range {v16 .. v23}, [Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/collections/ArraysKt;->f(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const v0, -0x2d67b594

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v10, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v13, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v12, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x0

    const/16 v16, 0x8

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v0, 0x7f1408b8

    invoke-static {v8, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0x1c00

    const/16 v4, 0x800

    if-ne v0, v4, :cond_14

    goto :goto_e

    :cond_14
    move/from16 v29, v2

    :goto_e
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v29, v0

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_16

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v0, :cond_15

    goto :goto_f

    :cond_15
    move-object/from16 v0, p3

    goto :goto_10

    :cond_16
    :goto_f
    new-instance v4, Lis0;

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v5, v2}, Lis0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;I)V

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_10
    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    const/16 v7, 0x1f8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_11

    :cond_17
    move-object/from16 v0, p3

    const v4, -0x2d5f2b98

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_11
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_18
    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v0, p3

    const v4, -0x2d5f1458

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_19
    move-object v5, v3

    move-object v0, v4

    move-object v3, v2

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_12
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_1a

    new-instance v0, Loi0;

    const/16 v6, 0x9

    move-object/from16 v4, p3

    move-object v2, v3

    move-object v3, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Loi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1a
    return-void
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Landroidx/compose/runtime/Composer;I)V
    .locals 30

    move-object/from16 v0, p0

    const v2, -0x7819b7a2

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p2, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    or-int v3, p2, v3

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v6, v3, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v6, v5, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    and-int/2addr v3, v7

    invoke-virtual {v2, v3, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->y:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->u:Ljava/lang/String;

    sget-object v11, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v7, :cond_5

    if-eq v9, v5, :cond_5

    sget-object v3, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->a:Lcom/vuitton/android/presentation/utils/DateTimeUtils;

    const/4 v5, 0x3

    if-eq v9, v5, :cond_4

    if-eq v9, v4, :cond_4

    const/4 v4, 0x5

    if-ne v9, v4, :cond_3

    const v4, -0x38b6d8c0    # -51495.25f

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v4, 0x7f140867

    invoke-static {v2, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_3
    move-object v3, v4

    move-object/from16 v26, v6

    move v7, v8

    goto :goto_4

    :cond_3
    const v0, 0x2775c2e7

    invoke-static {v2, v0, v8}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_4
    const v4, -0x38bad49a

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v4, 0x7f140858

    invoke-static {v2, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v10}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_5
    const v4, 0x2775cc76

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v26, v6

    :goto_4
    const-string v4, "RepairInformationBeforeAssessment"

    if-nez v7, :cond_6

    const v5, -0x38b299d0

    invoke-static {v2, v5, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v9

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v10, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v24, 0x0

    const v25, 0x1fff8

    move v11, v8

    const-wide/16 v7, 0x0

    move-object/from16 v21, v6

    move-wide/from16 v28, v9

    move-object v10, v4

    move-object v4, v5

    move-wide/from16 v5, v28

    const/4 v9, 0x0

    move-object v12, v10

    move v13, v11

    const-wide/16 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    move/from16 v17, v15

    const-wide/16 v14, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v23, v20

    const/16 v20, 0x0

    move-object/from16 v27, v23

    const/16 v23, 0x0

    move/from16 v1, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v27

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-wide/16 v7, 0x0

    move-object/from16 v21, v3

    move-object/from16 v3, v26

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_6
    move-object v3, v2

    move-object v2, v4

    move v1, v8

    const v4, -0x38a783dc

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_5
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v6, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v7, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v5, 0x7f140882

    invoke-static {v3, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v24, 0x0

    const v25, 0x1fff8

    move-object/from16 v22, v3

    move-object v3, v5

    move-object/from16 v21, v6

    move-wide v5, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->z:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    move-object/from16 v21, v5

    move-wide v5, v6

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->A:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    move-object/from16 v21, v5

    move-wide v5, v6

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v22

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const v4, -0x3896252d

    invoke-static {v3, v4, v2}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v6, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v7, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v5, 0x7f140875

    invoke-static {v3, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v24, 0x0

    const v25, 0x1fff8

    move-object/from16 v22, v3

    move-object v3, v5

    move-object/from16 v21, v6

    move-wide v5, v7

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v4, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v5, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->B:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-wide/16 v7, 0x0

    move-object/from16 v21, v2

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_7
    const v2, -0x388a2a3c

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_8
    move-object v3, v2

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Lom;

    const/16 v3, 0xa

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Lom;-><init>(Ljava/lang/Object;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    const v0, 0x2544467e

    move-object/from16 v5, p3

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    and-int/lit8 v0, v4, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    and-int/lit8 v5, v4, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit16 v5, v4, 0x180

    const/16 v6, 0x100

    if-nez v5, :cond_5

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v0, v5

    :cond_5
    and-int/lit16 v5, v0, 0x93

    const/16 v7, 0x92

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v5, v7, :cond_6

    move v5, v8

    goto :goto_4

    :cond_6
    move v5, v9

    :goto_4
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v10, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v11, "RepairInformationStoreCareService"

    invoke-direct {v7, v11}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v13, 0x30

    invoke-static {v12, v5, v10, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    iget-wide v12, v10, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v10, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v10, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_11

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_7

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v13, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v5, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v10, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v11, v5, v7, v8}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v13, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v14, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v7, 0x7f1404f0

    invoke-static {v10, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v26, 0x0

    const v27, 0x1fff8

    move v15, v9

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move/from16 v17, v8

    move-object/from16 v23, v12

    move/from16 v34, v6

    move-object v6, v5

    move-object v5, v7

    move-wide v7, v13

    move/from16 v14, v34

    const-wide/16 v12, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v21, v16

    move/from16 v20, v17

    const-wide/16 v16, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v25, v19

    const/16 v19, 0x0

    move/from16 v28, v20

    const/16 v20, 0x0

    move-object/from16 v29, v21

    const/16 v21, 0x0

    move/from16 v30, v22

    const/16 v22, 0x0

    move/from16 v31, v25

    const/16 v25, 0x0

    move-object/from16 v32, v29

    move/from16 v4, v31

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->N0:I

    invoke-static {v5, v10, v4}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v5

    const v6, 0x7f140363

    invoke-static {v10, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v14, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v13, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x0

    const/16 v16, 0x9

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v12, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->n:F

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v11

    and-int/lit16 v0, v0, 0x380

    const/16 v14, 0x100

    if-ne v0, v14, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move v8, v4

    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v8, :cond_9

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v7, :cond_a

    :cond_9
    new-instance v0, Lsq0;

    const/4 v7, 0x6

    invoke-direct {v0, v3, v7}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v15, v0

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x1f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/16 v11, 0x8

    const/16 v12, 0x8

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->D:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->C:Ljava/lang/String;

    iget-wide v7, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const v0, -0x3ba3cb44

    move-object/from16 v12, v32

    invoke-static {v10, v0, v12}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v13

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v14, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v15, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v17, 0x0

    const/16 v18, 0xc

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v13, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v1, v5, v13}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->t(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v14

    iget-object v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object/from16 v16, v9

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v29, v12

    move-object/from16 v23, v13

    const-wide/16 v12, 0x0

    move-wide/from16 v18, v7

    move-wide v7, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    const-wide/16 v16, 0x0

    move-wide/from16 v30, v18

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v25, v21

    const/16 v21, 0x0

    move-object/from16 v28, v22

    const/16 v22, 0x0

    move-object/from16 v32, v25

    const/16 v25, 0x0

    move-object v2, v6

    move-object v6, v0

    move-object v0, v2

    move-object/from16 v33, v28

    move-object/from16 v3, v29

    move-object/from16 v2, v32

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_b
    move-object v0, v6

    move-wide/from16 v30, v7

    move-object/from16 v33, v9

    move-object v2, v11

    move-object/from16 v3, v32

    const v5, -0x3b9c13fc

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v12, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v13, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v5, 0x7f140f15

    invoke-static {v10, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object/from16 v23, v7

    move-wide v7, v8

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v5, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v1, v0, v5}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->t(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-wide/16 v9, 0x0

    move-object/from16 v23, v0

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->HISTORY:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v2, v6, :cond_f

    sget-object v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;->DROPPED_IN_STORE:Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;

    if-eq v2, v6, :cond_f

    const v6, -0x3b8b77c7

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z

    move-result v6

    if-eqz v6, :cond_c

    const v0, -0x3b8a797b

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-wide/from16 v6, v30

    move-object/from16 v8, v33

    invoke-static {v1, v8, v6, v7}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1408d4

    invoke-static {v10, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v2, p1

    goto :goto_9

    :cond_c
    move-wide/from16 v6, v30

    move-object/from16 v8, v33

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModelKt;->c(Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;)Z

    move-result v2

    if-eqz v2, :cond_e

    const v0, -0x3b83fb78

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->i:Ljava/lang/Double;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_8

    :cond_d
    move-wide v5, v6

    :goto_8
    invoke-static {v1, v8, v5, v6}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f14140c

    invoke-static {v10, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_9

    :cond_e
    move-object/from16 v2, p1

    const v6, -0x3b7dca1c

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :cond_f
    move-object/from16 v2, p1

    const v6, -0x3b7db2dc

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_10

    const v6, -0x3b7ccbef

    invoke-static {v10, v6, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v11

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v12, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v13, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x0

    const/16 v16, 0xc

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object/from16 v23, v7

    move-wide v7, v8

    move-object/from16 v24, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v6, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v7, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-wide/16 v9, 0x0

    move-object v5, v0

    move-object/from16 v23, v3

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v10, v24

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_10
    const v0, -0x3b71b9bc

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_11
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_12
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_13

    new-instance v0, Log0;

    const/4 v5, 0x4

    move-object/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Log0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.class public abstract Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;",
        "formState",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    const-string v10, "CertificateTransferForm"

    if-eqz v0, :cond_0

    invoke-static {v0, v10}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v11, v0

    const v0, 0x42d367b8

    move-object/from16 v1, p5

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int v0, p6, v0

    move-object/from16 v3, p1

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_1

    :cond_2
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x100

    goto :goto_2

    :cond_3
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x800

    goto :goto_3

    :cond_4
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    invoke-virtual {v14, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x4000

    goto :goto_4

    :cond_5
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x2493

    const/16 v6, 0x2492

    const/4 v12, 0x0

    if-eq v4, v6, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    move v4, v12

    :goto_5
    and-int/lit8 v6, v0, 0x1

    invoke-virtual {v14, v6, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v11, v4}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v4, v5, v6, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v5, v6, v14, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v12, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v14, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_7

    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v4, 0x7f140572

    invoke-static {v14, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const-string v13, "certificateTransfer_description_text"

    invoke-static {v10, v13}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    const/16 v33, 0x0

    const v34, 0x1fff8

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v30, v4

    move-object/from16 v31, v14

    const/16 v35, 0x0

    move-wide v14, v5

    invoke-static/range {v12 .. v34}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v14, v31

    new-instance v15, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v15, v10}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v19, 0x0

    const/16 v20, 0xd

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v17, v4

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    new-instance v15, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    sget-object v5, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->PHONE_NUMBER:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v16

    const v6, 0x7f140570

    invoke-static {v14, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/String;

    sget-object v19, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldPhone;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldPhone;

    new-instance v6, Lcom/vuitton/android/presentation/screen/certificates/model/Required;

    const v12, 0x7f140569

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/vuitton/android/presentation/screen/certificates/model/Required;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/model/PhoneNumber;

    const/16 p5, 0x1

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7}, Lcom/vuitton/android/presentation/screen/certificates/model/PhoneNumber;-><init>(Ljava/lang/String;)V

    new-array v7, v1, [Lcom/vuitton/android/presentation/screen/certificates/model/Validator;

    aput-object v6, v7, v35

    aput-object v13, v7, p5

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    sget-object v6, Landroidx/compose/ui/text/input/ImeAction;->b:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v27, Landroidx/compose/ui/text/input/ImeAction;->i:I

    const/16 v24, 0x80

    const/16 v25, 0x0

    const-string v22, "certificateTransfer_phone_textField"

    const/16 v23, 0x0

    move/from16 v21, v27

    invoke-direct/range {v15 .. v25}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    sget-object v7, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->PHONE_NUMBER_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v20

    const v13, 0x7f140571

    invoke-static {v14, v13}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v7

    check-cast v22, Ljava/lang/String;

    new-instance v7, Lcom/vuitton/android/presentation/screen/certificates/model/Required;

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/vuitton/android/presentation/screen/certificates/model/Required;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/model/PhoneNumber;

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lcom/vuitton/android/presentation/screen/certificates/model/PhoneNumber;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/model/CompareTo;

    move/from16 v16, v1

    const v1, 0x7f14056a

    invoke-static {v14, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v1, v5, v2}, Lcom/vuitton/android/presentation/screen/certificates/model/CompareTo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;)V

    const/4 v1, 0x3

    new-array v5, v1, [Lcom/vuitton/android/presentation/screen/certificates/model/Validator;

    aput-object v7, v5, v35

    aput-object v13, v5, p5

    aput-object v12, v5, v16

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v24

    const/16 v28, 0x80

    const-string v26, "certificateTransfer_phoneConfirm_textField"

    move/from16 v25, v27

    const/16 v27, 0x0

    move-object/from16 v23, v19

    move-object/from16 v19, v6

    invoke-direct/range {v19 .. v29}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v19

    move/from16 v27, v25

    new-instance v21, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    sget-object v6, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->EMAIL:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v22

    const v7, 0x7f14056e

    invoke-static {v14, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v24, v7

    check-cast v24, Ljava/lang/String;

    new-instance v7, Lcom/vuitton/android/presentation/screen/certificates/model/Required;

    const v12, 0x7f140564

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/vuitton/android/presentation/screen/certificates/model/Required;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/model/Email;

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lcom/vuitton/android/presentation/screen/certificates/model/Email;-><init>(Ljava/lang/String;)V

    move/from16 v1, v16

    new-array v12, v1, [Lcom/vuitton/android/presentation/screen/certificates/model/Validator;

    aput-object v7, v12, v35

    aput-object v13, v12, p5

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const/16 v30, 0x88

    const/16 v31, 0x0

    const/16 v25, 0x0

    const-string v28, "certificateTransfer_mail_textField"

    invoke-direct/range {v21 .. v31}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v21

    new-instance v21, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    sget-object v7, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->EMAIL_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v22

    const v12, 0x7f14056f

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v12

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v24, v7

    check-cast v24, Ljava/lang/String;

    new-instance v7, Lcom/vuitton/android/presentation/screen/certificates/model/Required;

    const v12, 0x7f140564

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/vuitton/android/presentation/screen/certificates/model/Required;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/model/Email;

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lcom/vuitton/android/presentation/screen/certificates/model/Email;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/model/CompareTo;

    const v3, 0x7f140563

    invoke-static {v14, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v12, v3, v6, v2}, Lcom/vuitton/android/presentation/screen/certificates/model/CompareTo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;)V

    const/4 v3, 0x3

    new-array v6, v3, [Lcom/vuitton/android/presentation/screen/certificates/model/Validator;

    aput-object v7, v6, v35

    aput-object v13, v6, p5

    const/16 v16, 0x2

    aput-object v12, v6, v16

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const-string v28, "certificateTransfer_mailConfirm_textField"

    invoke-direct/range {v21 .. v31}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v21

    new-instance v21, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    sget-object v6, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->KEYWORD:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v22

    const v7, 0x7f14056c

    invoke-static {v14, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v24, v7

    check-cast v24, Ljava/lang/String;

    new-instance v7, Lcom/vuitton/android/presentation/screen/certificates/model/Required;

    const v12, 0x7f140568

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/vuitton/android/presentation/screen/certificates/model/Required;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/model/Regex;

    move-object/from16 v18, v4

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    const-string v12, ".{8}"

    invoke-direct {v13, v4, v12}, Lcom/vuitton/android/presentation/screen/certificates/model/Regex;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v6

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/vuitton/android/presentation/screen/certificates/model/Validator;

    aput-object v7, v6, v35

    aput-object v13, v6, p5

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    const-string v28, "certificateTransfer_keyword_textField"

    invoke-direct/range {v21 .. v31}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v21

    new-instance v21, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    sget-object v6, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->KEYWORD_CONFIRMATION:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v22

    const v7, 0x7f14056d

    invoke-static {v14, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->a()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, Ljava/lang/String;

    new-instance v6, Lcom/vuitton/android/presentation/screen/certificates/model/Required;

    const v7, 0x7f140568

    invoke-static {v14, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/vuitton/android/presentation/screen/certificates/model/Required;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/model/Regex;

    invoke-static {v14, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v13, v7, v12}, Lcom/vuitton/android/presentation/screen/certificates/model/Regex;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/certificates/model/CompareTo;

    const v12, 0x7f140567

    invoke-static {v14, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v6

    invoke-virtual/range {v20 .. v20}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v12, v6, v2}, Lcom/vuitton/android/presentation/screen/certificates/model/CompareTo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;)V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/vuitton/android/presentation/screen/certificates/model/Validator;

    aput-object v19, v6, v35

    aput-object v13, v6, p5

    const/16 v16, 0x2

    aput-object v7, v6, v16

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v26

    sget v27, Landroidx/compose/ui/text/input/ImeAction;->j:I

    const-string v28, "certificateTransfer_keywordConfirm_textField"

    invoke-direct/range {v21 .. v31}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;Ljava/util/List;ILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v21

    invoke-static/range {p1 .. p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v7

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v7

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_9

    if-ne v12, v13, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v2, p5

    goto :goto_9

    :cond_9
    :goto_7
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v7

    move/from16 v2, p5

    if-ne v7, v2, :cond_a

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    if-nez v7, :cond_f

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_9
    move-object v3, v12

    check-cast v3, Ljava/util/List;

    and-int/lit16 v6, v0, 0x3f0

    const/16 v7, 0x10

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move v12, v2

    move-object v5, v14

    const/16 v15, 0x4000

    move-object/from16 v2, p2

    move v14, v0

    move-object/from16 v0, v18

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v10, v1}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v3, "certificateTransfer_activate_button"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v3, 0x7f14056b

    invoke-static {v5, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v19

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v8, :cond_b

    move/from16 v22, v12

    goto :goto_a

    :cond_b
    move/from16 v22, v35

    :goto_a
    const v3, 0xe000

    and-int/2addr v3, v14

    if-ne v3, v15, :cond_c

    move v7, v12

    goto :goto_b

    :cond_c
    move/from16 v7, v35

    :goto_b
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v3, v7

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_d

    if-ne v4, v13, :cond_e

    :cond_d
    new-instance v4, Ltf;

    const/16 v3, 0x14

    invoke-direct {v4, v9, v2, v3}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v20, v4

    check-cast v20, Lkotlin/jvm/functions/Function0;

    const/16 v13, 0x178

    move v3, v12

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v0

    move-object v15, v1

    move-object v14, v5

    invoke-static/range {v12 .. v23}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_11
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_12

    new-instance v0, Lod;

    move/from16 v6, p6

    move-object v3, v2

    move v4, v8

    move-object v5, v9

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Lod;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;ZLkotlin/jvm/functions/Function1;I)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final b(Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x6292ce86

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_1

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v7, v5, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_5
    and-int/lit16 v7, v5, 0xc00

    if-nez v7, :cond_7

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x800

    goto :goto_4

    :cond_6
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_7
    and-int/lit16 v7, v6, 0x493

    const/16 v8, 0x492

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_8

    move v7, v10

    goto :goto_5

    :cond_8
    move v7, v9

    :goto_5
    and-int/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v7, :cond_9

    new-instance v6, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-direct {v6}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;-><init>()V

    invoke-static {v6}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Landroidx/compose/runtime/MutableState;

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v8, "CertificateTransferScreen"

    invoke-direct {v7, v8}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    new-instance v8, Lo0;

    const/16 v11, 0x17

    invoke-direct {v8, v4, v11}, Lo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v11, -0x21d562ca

    invoke-static {v11, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    new-instance v11, Lg0;

    const/16 v12, 0x11

    invoke-direct {v11, v1, v12}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v12, 0x13475574

    invoke-static {v12, v11, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    new-instance v12, Lg1;

    const/16 v13, 0xd

    invoke-direct {v12, v2, v3, v6, v13}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v6, 0x6f96a5cb

    invoke-static {v6, v12, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v17

    const v19, 0x30000c30

    const/16 v20, 0x1f4

    move-object v6, v7

    move-object v7, v8

    const/4 v8, 0x0

    move v12, v10

    const/4 v10, 0x0

    move v13, v9

    move-object v9, v11

    const/4 v11, 0x0

    move v15, v12

    move v14, v13

    const-wide/16 v12, 0x0

    move/from16 v16, v14

    move/from16 v18, v15

    const-wide/16 v14, 0x0

    move/from16 v21, v16

    const/16 v16, 0x0

    move/from16 v1, v18

    move-object/from16 v18, v0

    move/from16 v0, v21

    invoke-static/range {v6 .. v20}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v6, v18

    iget-boolean v7, v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;->b:Z

    if-eqz v7, :cond_a

    const v7, -0x19ea363a

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0, v6, v0, v1}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_a
    const v1, -0x19e9b698

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_b
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v0, Li1;

    const/16 v6, 0xa

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Li1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

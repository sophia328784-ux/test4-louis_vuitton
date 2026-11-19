.class public final synthetic Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;->c:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    const v1, 0x7f1404af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v2, "CertificateNfcScanBottomSheetContent$lambda$1"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v10, 0x30

    invoke-static {v9, v8, v6, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v6, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v13

    const/4 v14, 0x0

    if-eqz v13, :cond_27

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6, v12}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_0
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v11, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    instance-of v7, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Scanning;

    if-nez v7, :cond_5

    instance-of v8, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    instance-of v8, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;

    if-eqz v8, :cond_2

    const v8, 0x7f130023

    goto :goto_3

    :cond_2
    instance-of v8, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-nez v8, :cond_4

    instance-of v8, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v14

    :cond_4
    :goto_1
    const v8, 0x7f130021

    goto :goto_3

    :cond_5
    :goto_2
    const v8, 0x7f130022

    :goto_3
    new-instance v9, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;

    invoke-direct {v9, v8}, Lcom/airbnb/lottie/compose/LottieCompositionSpec$RawRes;-><init>(I)V

    const/4 v8, 0x0

    invoke-static {v9, v6, v8}, Lcom/airbnb/lottie/compose/RememberLottieCompositionKt;->c(Lcom/airbnb/lottie/compose/LottieCompositionSpec;Landroidx/compose/runtime/Composer;I)Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    move-result-object v9

    invoke-static {v6}, Lcom/airbnb/lottie/compose/LottieAnimatableKt;->a(Landroidx/compose/runtime/Composer;)Lcom/airbnb/lottie/compose/LottieAnimatable;

    move-result-object v11

    invoke-virtual {v9}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v12

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    and-int/lit8 v15, v4, 0x70

    xor-int/2addr v15, v10

    const/16 v5, 0x20

    const/16 v16, 0x1

    if-le v15, v5, :cond_7

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    goto :goto_4

    :cond_6
    move/from16 p2, v10

    goto :goto_5

    :cond_7
    :goto_4
    move/from16 p2, v10

    and-int/lit8 v10, v4, 0x30

    if-ne v10, v5, :cond_8

    :goto_5
    move/from16 v10, v16

    goto :goto_6

    :cond_8
    move v10, v8

    :goto_6
    or-int/2addr v10, v13

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_9

    if-ne v13, v8, :cond_a

    :cond_9
    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1;

    invoke-direct {v13, v9, v11, v3, v14}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$1$1;-><init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;Lcom/airbnb/lottie/compose/LottieAnimatable;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v12, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v11}, Lcom/airbnb/lottie/compose/LottieAnimationState;->isPlaying()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v11}, Lcom/airbnb/lottie/compose/LottieAnimationState;->c()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    if-le v15, v5, :cond_b

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    :cond_b
    and-int/lit8 v4, v4, 0x30

    if-ne v4, v5, :cond_c

    goto :goto_7

    :cond_c
    const/16 v16, 0x0

    :cond_d
    :goto_7
    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int v4, v16, v4

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v4, v13

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v4, :cond_e

    if-ne v13, v8, :cond_f

    :cond_e
    new-instance v13, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1;

    invoke-direct {v13, v3, v11, v5, v14}, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/CertificateNfcScanBottomSheetKt$CertificateNfcScanBottomSheetContent$2$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;Lcom/airbnb/lottie/compose/LottieAnimatable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v12, v3, v13, v6}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v9}, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->h()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v4

    invoke-interface {v6, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_10

    if-ne v9, v8, :cond_11

    :cond_10
    new-instance v9, Lam;

    const/4 v5, 0x0

    invoke-direct {v9, v11, v5}, Lam;-><init>(Lcom/airbnb/lottie/compose/LottieAnimatable;I)V

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v5, v9

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/16 v23, 0x0

    const v24, 0x1fffc

    move-object/from16 v21, v6

    const/4 v6, 0x0

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v12, v11

    const/4 v11, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v22, v19

    const/16 v19, 0x0

    move-object/from16 v25, v20

    const/16 v20, 0x0

    move/from16 v26, v22

    const/16 v22, 0x0

    move-object/from16 v29, v1

    move-object/from16 v27, v25

    move/from16 v28, v26

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v24}, Lcom/airbnb/lottie/compose/LottieAnimationKt;->b(Lcom/airbnb/lottie/LottieComposition;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZZZZLcom/airbnb/lottie/RenderMode;ZLcom/airbnb/lottie/compose/LottieDynamicProperties;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;ZZLjava/util/Map;Lcom/airbnb/lottie/AsyncUpdates;ZLandroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v21

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v11, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v12, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const v4, 0x7f14055b

    if-eqz v28, :cond_12

    goto :goto_8

    :cond_12
    instance-of v7, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;

    if-eqz v7, :cond_13

    goto :goto_8

    :cond_13
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;

    if-eqz v4, :cond_14

    const v4, 0x7f14055c

    goto :goto_8

    :cond_14
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-eqz v4, :cond_15

    const v4, 0x7f14055a

    goto :goto_8

    :cond_15
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz v4, :cond_26

    const v4, 0x7f140558

    :goto_8
    invoke-static {v6, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v10, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v14, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v14, v10}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v25, 0x0

    const v26, 0x1fbf8

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide v6, v8

    const-wide/16 v8, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v13, v11

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v17, v15

    const-wide/16 v15, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v23, v20

    const/16 v20, 0x0

    move/from16 v24, v23

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move/from16 v30, v24

    const/16 v24, 0x0

    move/from16 v1, v30

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v23

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v11, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v12, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v28, :cond_16

    const v4, 0x7f140556

    goto :goto_9

    :cond_16
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;

    if-eqz v4, :cond_17

    const v4, 0x7f140554

    goto :goto_9

    :cond_17
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;

    if-eqz v4, :cond_18

    const v4, 0x7f140553

    goto :goto_9

    :cond_18
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-eqz v4, :cond_19

    const v4, 0x7f140559

    goto :goto_9

    :cond_19
    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz v4, :cond_25

    const v4, 0x7f140557

    :goto_9
    invoke-static {v6, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    new-instance v14, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v14, v1}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v25, 0x0

    const v26, 0x1fbf8

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-wide v6, v8

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    const/16 v24, 0x0

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v23

    if-eqz v28, :cond_1a

    :goto_a
    move-object/from16 v14, v29

    goto :goto_c

    :cond_1a
    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Processing;

    if-eqz v1, :cond_1b

    :goto_b
    move-object/from16 v14, v27

    goto :goto_c

    :cond_1b
    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Success;

    if-eqz v1, :cond_1c

    goto :goto_b

    :cond_1c
    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$Error;

    if-eqz v1, :cond_1d

    goto :goto_a

    :cond_1d
    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz v1, :cond_24

    const v1, 0x7f1406e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :goto_c
    if-nez v14, :cond_1e

    const v1, -0x53162654

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_10

    :cond_1e
    const v1, -0x53162653

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz v4, :cond_1f

    move-object/from16 v14, v29

    goto :goto_d

    :cond_1f
    move-object/from16 v14, v27

    :goto_d
    if-eqz v14, :cond_20

    const v4, 0x284c2f16

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_e
    move v11, v4

    goto :goto_f

    :cond_20
    const v4, 0x284dd11a

    invoke-interface {v6, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_e

    :goto_f
    const/4 v12, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v4

    iget-object v8, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v6, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x0

    const/16 v5, 0x1f8

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;->c:Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_10
    instance-of v1, v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState$NfcDisabled;

    if-eqz v1, :cond_21

    move-object/from16 v1, v29

    goto :goto_11

    :cond_21
    move-object/from16 v1, v27

    :goto_11
    if-nez v1, :cond_22

    const v0, -0x530b6a59

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_13

    :cond_22
    const v3, -0x530b6a58

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/certificates/components/nfc/a;->d:Lkotlin/jvm/functions/Function0;

    if-nez v12, :cond_23

    const v0, -0x14aa8453

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_12

    :cond_23
    const v0, -0x14aa8452

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v0, v6, v2}, Lpq0;->h(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v8, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v6, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const/4 v4, 0x6

    const/16 v5, 0x1f8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_12
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_13
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->r()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_24
    invoke-static {}, Lv40;->g()V

    return-object v27

    :cond_25
    invoke-static {}, Lv40;->g()V

    return-object v27

    :cond_26
    invoke-static {}, Lv40;->g()V

    return-object v27

    :cond_27
    move-object/from16 v27, v14

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v27
.end method

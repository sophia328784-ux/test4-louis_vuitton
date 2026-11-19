.class public abstract Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    if-eqz v0, :cond_0

    const-string v1, "AlreadyExistAccountBottomSheet"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, 0x444c6f30

    move-object/from16 v6, p4

    invoke-interface {v6, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v6, v5, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v5

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    and-int/lit8 v7, v5, 0x30

    const/16 v8, 0x20

    if-nez v7, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v6, v7

    :cond_4
    and-int/lit16 v7, v5, 0x180

    const/16 v9, 0x100

    if-nez v7, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v9

    goto :goto_3

    :cond_5
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v6, v7

    :cond_6
    and-int/lit16 v7, v5, 0xc00

    const/16 v10, 0x800

    if-nez v7, :cond_8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v10

    goto :goto_4

    :cond_7
    const/16 v7, 0x400

    :goto_4
    or-int/2addr v6, v7

    :cond_8
    and-int/lit16 v7, v6, 0x493

    const/16 v11, 0x492

    const/4 v13, 0x0

    if-eq v7, v11, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    move v7, v13

    :goto_5
    and-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v11, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_12

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v7, 0x7f140f2b

    invoke-static {v0, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const v7, 0x7f140f5b

    invoke-static {v0, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    and-int/lit8 v14, v6, 0x70

    if-ne v14, v8, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    move v8, v13

    :goto_6
    and-int/lit16 v14, v6, 0x1c00

    if-ne v14, v10, :cond_b

    const/4 v15, 0x1

    goto :goto_7

    :cond_b
    move v15, v13

    :goto_7
    or-int/2addr v8, v15

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_c

    if-ne v15, v12, :cond_d

    :cond_c
    new-instance v15, Lil;

    const/4 v8, 0x5

    invoke-direct {v15, v2, v4, v8}, Lil;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v17, v15

    check-cast v17, Lkotlin/jvm/functions/Function0;

    const v8, 0x7f140f56

    invoke-static {v0, v8}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    and-int/lit16 v8, v6, 0x380

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    goto :goto_8

    :cond_e
    move v8, v13

    :goto_8
    if-ne v14, v10, :cond_f

    const/4 v13, 0x1

    :cond_f
    or-int/2addr v8, v13

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_10

    if-ne v9, v12, :cond_11

    :cond_10
    new-instance v9, Lil;

    const/4 v8, 0x6

    invoke-direct {v9, v3, v4, v8}, Lil;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v21, v9

    check-cast v21, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v26, v6, 0xe

    const/16 v27, 0x0

    const v28, 0xee75e

    move-object v13, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    move-object v6, v1

    invoke-static/range {v6 .. v28}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_9

    :cond_12
    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_9
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_13

    new-instance v0, Loi0;

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Loi0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p7

    if-eqz v0, :cond_0

    const-string v1, "AppointmentConfirmBottomSheet"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x1fe66250

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v7, 0x6

    const/4 v6, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    and-int/lit8 v9, v7, 0x30

    if-nez v9, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x20

    goto :goto_2

    :cond_3
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v1, v9

    :cond_4
    and-int/lit16 v9, v7, 0x180

    if-nez v9, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_3

    :cond_5
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v1, v9

    :cond_6
    and-int/lit16 v9, v7, 0xc00

    if-nez v9, :cond_8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x800

    goto :goto_4

    :cond_7
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v1, v9

    :cond_8
    and-int/lit16 v9, v7, 0x6000

    if-nez v9, :cond_a

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x4000

    goto :goto_5

    :cond_9
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v1, v9

    :cond_a
    const/high16 v9, 0x30000

    and-int/2addr v9, v7

    if-nez v9, :cond_c

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x20000

    goto :goto_6

    :cond_b
    const/high16 v10, 0x10000

    :goto_6
    or-int/2addr v1, v10

    goto :goto_7

    :cond_c
    move-object/from16 v9, p5

    :goto_7
    const v10, 0x12493

    and-int/2addr v10, v1

    const v11, 0x12492

    const/4 v12, 0x0

    if-eq v10, v11, :cond_d

    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    move v10, v12

    :goto_8
    and-int/lit8 v11, v1, 0x1

    invoke-virtual {v0, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_16

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    if-nez v13, :cond_e

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v13, :cond_f

    :cond_e
    new-instance v14, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt$AppointmentConfirmBottomSheet$1$1;

    invoke-direct {v14, v10, v15}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt$AppointmentConfirmBottomSheet$1$1;-><init>(Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v11, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v10, 0x6

    if-eqz v3, :cond_10

    const v11, 0x3b11e3b9

    const v13, 0x7f140f23

    invoke-static {v0, v11, v13, v0, v12}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    :cond_10
    const v11, 0x3b14211a

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v11, -0x4028a470

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v5, :cond_11

    if-eqz v4, :cond_11

    sget-object v11, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->a:Lcom/vuitton/android/presentation/utils/DateTimeUtils;

    invoke-static {v11, v4, v12, v10}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->i(Lcom/vuitton/android/presentation/utils/DateTimeUtils;Ljava/time/LocalDateTime;ZI)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v5, v11}, [Ljava/lang/Object;

    move-result-object v11

    const v13, 0x7f140f19

    invoke-static {v13, v11, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    :cond_11
    move-object v11, v15

    :goto_9
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-nez v11, :cond_12

    const v11, -0x4028751c

    const v13, 0x7f140f1a

    invoke-static {v0, v11, v13, v0, v12}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_12
    const v13, -0x4028a418

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_b
    const v13, 0x7f140f18

    if-eqz v3, :cond_15

    const v14, 0x3b1c553b

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-nez v4, :cond_13

    const v6, 0x3b1ca23e

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 p0, v10

    goto :goto_c

    :cond_13
    const v14, 0x3b1ca23f

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v14, 0x7f140f24

    invoke-static {v0, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v2}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->l(Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Ljava/lang/String;

    move-result-object v15

    move/from16 p0, v10

    sget-object v10, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v2, v4, v10}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/time/LocalDateTime;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v15, v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v14, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    if-nez v15, :cond_14

    const v6, -0x402833e8

    invoke-static {v0, v6, v13, v0, v12}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    :cond_14
    const v6, -0x40286059

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    move-object v13, v15

    goto :goto_f

    :cond_15
    move/from16 p0, v10

    const v6, 0x3b237a5a

    invoke-static {v0, v6, v13, v0, v12}, Lcj;->f(Landroidx/compose/runtime/GapComposer;IILandroidx/compose/runtime/GapComposer;Z)Ljava/lang/String;

    move-result-object v15

    goto :goto_e

    :goto_f
    const v6, 0x7f140f52

    invoke-static {v0, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I0:I

    sget-object v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    and-int/lit8 v6, v1, 0xe

    const v10, 0x186c00

    or-int v28, v6, v10

    shr-int/lit8 v1, v1, 0xc

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v29, v1, 0x6

    const v30, 0xff202

    const/4 v9, 0x0

    move-object v10, v11

    const-string v11, "osa_appointmentConfirmedDetailsDescription_text"

    const-string v14, "osa_appointmentConfirmedMail_text"

    const/16 v17, 0x0

    sget-object v18, Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSA$AddToCalendarAction;->a:Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSA$AddToCalendarAction;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, p5

    move-object/from16 v27, v0

    invoke-static/range {v8 .. v30}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_10

    :cond_16
    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v0, Lp1;

    move-object/from16 v6, p5

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lp1;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v4, p4

    if-eqz v0, :cond_0

    const-string v1, "GuestWithAppointmentConfirmBottomSheet"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x3472d2cb    # -1.8504298E7f

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v2, v4, 0x6

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    and-int/lit8 v3, v4, 0x30

    if-nez v3, :cond_4

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    goto :goto_3

    :cond_4
    move-object/from16 v3, p1

    :goto_3
    and-int/lit16 v5, v4, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x100

    goto :goto_4

    :cond_5
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    goto :goto_5

    :cond_6
    move-object/from16 v5, p2

    :goto_5
    and-int/lit16 v6, v2, 0x93

    const/16 v7, 0x92

    if-eq v6, v7, :cond_7

    const/4 v6, 0x1

    goto :goto_6

    :cond_7
    const/4 v6, 0x0

    :goto_6
    and-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v6, 0x7f140f67

    invoke-static {v0, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const v6, 0x7f140f66

    invoke-static {v0, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    const v6, 0x7f140f58

    invoke-static {v0, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    const v6, 0x7f140f5a

    invoke-static {v0, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    and-int/lit8 v25, v2, 0xe

    and-int/lit8 v6, v2, 0x70

    shl-int/lit8 v2, v2, 0xc

    const/high16 v8, 0x380000

    and-int/2addr v2, v8

    or-int v26, v6, v2

    const v27, 0xee75a

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v0

    move-object/from16 v16, v3

    move-object/from16 v20, v5

    move-object v5, v1

    invoke-static/range {v5 .. v27}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_7

    :cond_8
    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_9

    new-instance v0, Ldj0;

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Ldj0;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method

.method public static final d(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const v0, 0x58b88863

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "LoadingBottomSheet"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v6, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v8, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    const/4 v9, 0x5

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    iget-wide v4, p0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {p0, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, p0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p0, v1}, Lcom/vuitton/android/presentation/screen/orders/components/returns/legacy/LoadingAnimationKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance v1, Laj0;

    invoke-direct {v1, p1, v0}, Laj0;-><init>(II)V

    iput-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v1, p17

    move/from16 v2, p18

    move/from16 v4, p19

    const-string v5, "OsaContactFormBottomSheetLayout"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p11 .. p15}, La;->D(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v6, 0x1c90455e

    move-object/from16 v7, p16

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    or-int/lit8 v6, v1, 0x6

    move-object/from16 v15, p1

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_0

    :cond_1
    const/16 v7, 0x10

    :goto_0
    or-int/2addr v6, v7

    and-int/lit16 v7, v1, 0x180

    if-nez v7, :cond_3

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_1

    :cond_2
    const/16 v7, 0x80

    :goto_1
    or-int/2addr v6, v7

    :cond_3
    and-int/lit8 v7, v4, 0x8

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v7, :cond_5

    or-int/lit16 v6, v6, 0xc00

    :cond_4
    move-object/from16 v8, p3

    goto :goto_3

    :cond_5
    and-int/lit16 v8, v1, 0xc00

    if-nez v8, :cond_4

    move-object/from16 v8, p3

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v17

    goto :goto_2

    :cond_6
    move/from16 v18, v16

    :goto_2
    or-int v6, v6, v18

    :goto_3
    and-int/lit8 v18, v4, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_7

    or-int/lit16 v6, v6, 0x6000

    move-object/from16 v9, p4

    goto :goto_5

    :cond_7
    move-object/from16 v9, p4

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move/from16 v21, v20

    goto :goto_4

    :cond_8
    move/from16 v21, v19

    :goto_4
    or-int v6, v6, v21

    :goto_5
    and-int/lit8 v21, v4, 0x20

    const/high16 v22, 0x10000

    const/high16 v23, 0x20000

    const/high16 v24, 0x30000

    if-eqz v21, :cond_9

    or-int v6, v6, v24

    move/from16 v10, p5

    goto :goto_7

    :cond_9
    move/from16 v10, p5

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v26

    if-eqz v26, :cond_a

    move/from16 v26, v23

    goto :goto_6

    :cond_a
    move/from16 v26, v22

    :goto_6
    or-int v6, v6, v26

    :goto_7
    and-int/lit8 v26, v4, 0x40

    if-eqz v26, :cond_b

    const/high16 v27, 0x180000

    or-int v6, v6, v27

    move-object/from16 v12, p6

    goto :goto_9

    :cond_b
    move-object/from16 v12, p6

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    const/high16 v28, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v28, 0x80000

    :goto_8
    or-int v6, v6, v28

    :goto_9
    move-object/from16 v28, v0

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_d

    const/high16 v29, 0xc00000

    or-int v6, v6, v29

    move/from16 v29, v0

    move-object/from16 v0, p7

    goto :goto_b

    :cond_d
    move/from16 v29, v0

    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    const/high16 v30, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v30, 0x400000

    :goto_a
    or-int v6, v6, v30

    :goto_b
    const/high16 v30, 0x6000000

    and-int v30, v1, v30

    move-object/from16 v0, p8

    if-nez v30, :cond_10

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    const/high16 v30, 0x4000000

    goto :goto_c

    :cond_f
    const/high16 v30, 0x2000000

    :goto_c
    or-int v6, v6, v30

    :cond_10
    const/high16 v30, 0x30000000

    and-int v30, v1, v30

    move-object/from16 v0, p9

    if-nez v30, :cond_12

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    const/high16 v30, 0x20000000

    goto :goto_d

    :cond_11
    const/high16 v30, 0x10000000

    :goto_d
    or-int v6, v6, v30

    :cond_12
    and-int/lit8 v30, v2, 0x6

    move-object/from16 v0, p10

    if-nez v30, :cond_14

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13

    const/16 v30, 0x4

    goto :goto_e

    :cond_13
    const/16 v30, 0x2

    :goto_e
    or-int v30, v2, v30

    goto :goto_f

    :cond_14
    move/from16 v30, v2

    :goto_f
    and-int/lit8 v31, v2, 0x30

    move-object/from16 v0, p11

    if-nez v31, :cond_16

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    const/16 v31, 0x20

    goto :goto_10

    :cond_15
    const/16 v31, 0x10

    :goto_10
    or-int v30, v30, v31

    :cond_16
    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_18

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v25, 0x100

    goto :goto_11

    :cond_17
    const/16 v25, 0x80

    :goto_11
    or-int v30, v30, v25

    :cond_18
    and-int/lit16 v0, v2, 0xc00

    if-nez v0, :cond_1a

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v16, v17

    :cond_19
    or-int v30, v30, v16

    :cond_1a
    and-int/lit16 v0, v2, 0x6000

    if-nez v0, :cond_1c

    move-object/from16 v0, p14

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move/from16 v19, v20

    :cond_1b
    or-int v30, v30, v19

    goto :goto_12

    :cond_1c
    move-object/from16 v0, p14

    :goto_12
    and-int v16, v2, v24

    move-object/from16 v0, p15

    if-nez v16, :cond_1e

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move/from16 v22, v23

    :cond_1d
    or-int v30, v30, v22

    :cond_1e
    const v16, 0x12492493

    and-int v0, v6, v16

    const v1, 0x12492492

    const/4 v2, 0x0

    if-ne v0, v1, :cond_20

    const v0, 0x12493

    and-int v0, v30, v0

    const v1, 0x12492

    if-eq v0, v1, :cond_1f

    goto :goto_13

    :cond_1f
    move v0, v2

    goto :goto_14

    :cond_20
    :goto_13
    const/4 v0, 0x1

    :goto_14
    and-int/lit8 v1, v6, 0x1

    invoke-virtual {v11, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v7

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    move-object v0, v1

    goto :goto_15

    :cond_21
    move-object v0, v8

    :goto_15
    if-eqz v18, :cond_22

    move-object v5, v1

    goto :goto_16

    :cond_22
    move-object v5, v9

    :goto_16
    if-eqz v21, :cond_23

    move/from16 v17, v2

    goto :goto_17

    :cond_23
    move/from16 v17, v10

    :goto_17
    if-eqz v26, :cond_24

    move-object/from16 v18, v1

    goto :goto_18

    :cond_24
    move-object/from16 v18, v12

    :goto_18
    if-eqz v29, :cond_25

    move-object/from16 v19, v1

    goto :goto_19

    :cond_25
    move-object/from16 v19, p7

    :goto_19
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const v1, -0x6fb5668

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->d(Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1a
    move-object v15, v7

    move/from16 v1, v17

    move-object/from16 v12, v18

    move-object/from16 v7, v19

    :goto_1b
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    goto/16 :goto_1d

    :cond_26
    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AlreadyExistAccountBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AlreadyExistAccountBottomSheet;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x6

    if-eqz v1, :cond_27

    const v1, -0x6f96ae3

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v1, v6, 0x15

    and-int/lit8 v6, v1, 0x70

    or-int/2addr v6, v8

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v6

    shl-int/lit8 v6, v30, 0x9

    and-int/lit16 v6, v6, 0x1c00

    or-int v12, v1, v6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_27
    sget-object v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v9, 0x70000

    const v10, 0xe000

    if-eqz v1, :cond_28

    const v1, -0x6f43a20

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v1, v6, 0x7e

    shr-int/lit8 v6, v6, 0x9

    and-int/lit16 v8, v6, 0x380

    or-int/2addr v1, v8

    and-int/lit16 v8, v6, 0x1c00

    or-int/2addr v1, v8

    and-int/2addr v6, v10

    or-int/2addr v1, v6

    shl-int/lit8 v6, v30, 0xc

    and-int/2addr v6, v9

    or-int v22, v1, v6

    move-object/from16 v20, p11

    move-object/from16 v21, v11

    move-object/from16 v16, v15

    move-object v15, v7

    invoke-static/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move/from16 v1, v17

    move-object/from16 v12, v18

    move-object/from16 v7, v19

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_28
    move-object v15, v7

    move/from16 p0, v8

    move/from16 v1, v17

    move-object/from16 v12, v18

    move-object/from16 v7, v19

    sget-object v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$GuestWithAppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$GuestWithAppointmentConfirmBottomSheet;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    const v6, -0x6ecac42

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v6, v30, 0x3

    and-int/lit8 v8, v6, 0x70

    or-int v8, p0, v8

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v6, v8

    invoke-static {v15, v13, v14, v11, v6}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1b

    :cond_29
    sget-object v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$ReplaceAppointmentBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$ReplaceAppointmentBottomSheet;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    const v8, -0x6e77153

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz v0, :cond_2a

    if-eqz v5, :cond_2a

    const v8, -0x6e66802

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    and-int/lit8 v8, v6, 0x7e

    shr-int/lit8 v6, v6, 0x3

    move/from16 p0, v9

    and-int/lit16 v9, v6, 0x380

    or-int/2addr v8, v9

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v6, v8

    and-int v8, v30, v10

    or-int/2addr v6, v8

    and-int v8, v30, p0

    or-int v22, v6, v8

    move-object/from16 v16, p1

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v21, v11

    invoke-static/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->f(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/time/LocalDateTime;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_2a
    move-object/from16 v17, v0

    move-object/from16 v18, v5

    const v0, -0x6dfbfbc

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    move v6, v1

    move-object v8, v7

    move-object v1, v15

    move-object/from16 v5, v18

    :goto_1e
    move-object v7, v12

    goto :goto_1f

    :cond_2b
    const v0, 0x3994c7e7

    invoke-static {v11, v0, v2}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v17, v8

    move-object v5, v9

    move v6, v10

    move-object/from16 v1, v28

    move-object/from16 v8, p7

    goto :goto_1e

    :goto_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2d

    move-object v2, v0

    new-instance v0, Lej0;

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v18, p18

    move-object/from16 v32, v2

    move/from16 v19, v4

    move-object/from16 v4, v17

    move-object/from16 v2, p1

    move/from16 v17, p17

    invoke-direct/range {v0 .. v19}, Lej0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen;Ljava/lang/String;Ljava/time/LocalDateTime;ZLjava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;III)V

    move-object/from16 v2, v32

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method

.method public static final f(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/time/LocalDateTime;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    if-eqz v0, :cond_0

    const-string v1, "ReplaceAppointmentBottomSheet"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x2338ddc2

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v1, v7, 0x6

    if-nez v1, :cond_2

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v7

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    and-int/lit8 v5, v7, 0x30

    if-nez v5, :cond_4

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x20

    goto :goto_2

    :cond_3
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :cond_4
    and-int/lit16 v5, v7, 0x180

    if-nez v5, :cond_6

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x100

    goto :goto_3

    :cond_5
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v1, v5

    :cond_6
    and-int/lit16 v5, v7, 0xc00

    if-nez v5, :cond_8

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x800

    goto :goto_4

    :cond_7
    const/16 v5, 0x400

    :goto_4
    or-int/2addr v1, v5

    :cond_8
    and-int/lit16 v5, v7, 0x6000

    if-nez v5, :cond_a

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x4000

    goto :goto_5

    :cond_9
    const/16 v6, 0x2000

    :goto_5
    or-int/2addr v1, v6

    goto :goto_6

    :cond_a
    move-object/from16 v5, p4

    :goto_6
    const/high16 v6, 0x30000

    and-int/2addr v6, v7

    if-nez v6, :cond_c

    move-object/from16 v6, p5

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/high16 v9, 0x20000

    goto :goto_7

    :cond_b
    const/high16 v9, 0x10000

    :goto_7
    or-int/2addr v1, v9

    goto :goto_8

    :cond_c
    move-object/from16 v6, p5

    :goto_8
    const v9, 0x12493

    and-int/2addr v9, v1

    const v10, 0x12492

    if-eq v9, v10, :cond_d

    const/4 v9, 0x1

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    and-int/lit8 v10, v1, 0x1

    invoke-virtual {v0, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v2, v4, v9}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/time/LocalDateTime;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f140f28

    filled-new-array {v3, v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v10

    const v9, 0x7f140f27

    invoke-static {v0, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    const v9, 0x7f140f57

    invoke-static {v0, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    const v9, 0x7f140f5a

    invoke-static {v0, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v20

    sget-object v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/ComposableSingletons$OsaContactFormBottomSheetScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    and-int/lit8 v9, v1, 0xe

    or-int/lit16 v9, v9, 0x6000

    shr-int/lit8 v11, v1, 0x9

    and-int/lit8 v11, v11, 0x70

    shl-int/lit8 v1, v1, 0x3

    const/high16 v14, 0x380000

    and-int/2addr v1, v14

    or-int v29, v11, v1

    const v30, 0xee74a

    move/from16 v28, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v0

    move-object/from16 v19, v5

    move-object/from16 v23, v6

    invoke-static/range {v8 .. v30}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lkotlin/jvm/functions/Function0;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;III)V

    goto :goto_a

    :cond_e
    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_f

    new-instance v0, Lz2;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lz2;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/time/LocalDateTime;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_f
    return-void
.end method

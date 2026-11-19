.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleMultipleTextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0003\u00b2\u0006\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;",
        "options",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    const-string v1, "BookingModuleMultipleText"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, -0x44041d1

    move-object/from16 v6, p4

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int v5, p5, v5

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    const/16 v7, 0x800

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_3

    :cond_4
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x493

    const/16 v9, 0x492

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v6, v9, :cond_5

    move v6, v12

    goto :goto_4

    :cond_5
    move v6, v13

    :goto_4
    and-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$FreeTypingUiModel;

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->a:Ljava/util/List;

    if-nez v6, :cond_9

    move-object v6, v9

    check-cast v6, Ljava/lang/Iterable;

    instance-of v10, v6, Ljava/util/Collection;

    if-eqz v10, :cond_6

    move-object v10, v6

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->c:Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_6

    :cond_8
    :goto_5
    move v6, v13

    goto :goto_7

    :cond_9
    :goto_6
    move v6, v12

    :goto_7
    if-nez v3, :cond_a

    if-nez v6, :cond_a

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    move-object v1, v0

    new-instance v0, Lcg;

    const/4 v6, 0x0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcg;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;ZLkotlin/jvm/functions/Function1;II)V

    :goto_8
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_a
    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v3}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v6, v8, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v10, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v8, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_14

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_b

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v3, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_c

    const v5, 0x60920b0a

    invoke-static {v8, v5, v1, v3}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v3, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->m:F

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;->m:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSkeletonKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v9

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move v1, v12

    goto/16 :goto_e

    :cond_c
    const v2, 0x6095eecb

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    check-cast v9, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->c:Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v9

    iget-object v10, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v1, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    iget-object v11, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->b()I

    move-result v14

    if-nez v14, :cond_f

    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v15, 0x7f140436

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v14, v15, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;)V

    goto :goto_c

    :cond_f
    new-instance v14, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->b()I

    move-result v15

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->b()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const v11, 0x7f120005

    invoke-direct {v14, v11, v15, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;-><init>(IILjava/util/List;)V

    :goto_c
    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v14, v3}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v11, v5, 0x1c00

    if-ne v11, v7, :cond_10

    move v11, v12

    goto :goto_d

    :cond_10
    move v11, v13

    :goto_d
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_11

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v14, v11, :cond_12

    :cond_11
    new-instance v14, Ltf;

    const/4 v11, 0x6

    invoke-direct {v14, v4, v6, v11}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x6

    move v11, v7

    const/16 v7, 0x1f8

    move v15, v11

    const/4 v11, 0x0

    move/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v13

    move-object v13, v3

    move/from16 v3, v20

    invoke-static/range {v6 .. v17}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move v13, v3

    move/from16 v7, v19

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    goto/16 :goto_b

    :cond_13
    move v3, v13

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_f

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_15
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    move-object v1, v0

    new-instance v0, Lcg;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcg;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;ZLkotlin/jvm/functions/Function1;II)V

    goto/16 :goto_8

    :cond_16
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x71aedcd8

    move-object/from16 v4, p2

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    iget-object v3, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int v4, p3, v4

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int v27, v4, v8

    and-int/lit8 v4, v27, 0x13

    const/16 v8, 0x12

    const/4 v12, 0x0

    if-eq v4, v8, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v12

    :goto_2
    and-int/lit8 v8, v27, 0x1

    invoke-virtual {v6, v8, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_3

    if-ne v8, v13, :cond_4

    :cond_3
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->c:Ljava/util/List;

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v8, Landroidx/compose/runtime/MutableState;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v14, "BookingMultipleTextSelectionBottomSheet"

    invoke-direct {v4, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v4, v15}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v5, v10, v6, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v11

    move-object/from16 v19, v10

    iget-wide v9, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v6, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x0

    if-eqz v3, :cond_c

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_5

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v9}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    move-object/from16 v24, v3

    sget-object v3, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move-object/from16 v25, v8

    const/4 v2, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v8, v2}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v4

    const/16 v8, 0xe

    invoke-static {v3, v4, v2, v8}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v8, 0x0

    const/4 v1, 0x2

    invoke-static {v3, v4, v8, v1}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v4, v19

    invoke-static {v5, v4, v6, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v1, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v6, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-eqz v24, :cond_b

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_6

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    invoke-static {v6, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6, v2, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1, v6, v10, v6, v9}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v6, v3, v15, v14, v1}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v28

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v33, 0x7

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v32, v2

    invoke-static/range {v28 .. v33}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_7

    new-instance v3, Lre;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lre;-><init>(I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    move/from16 v22, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v43, 0x0

    const v44, 0xfffffe

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    move-object/from16 v28, v2

    move-wide/from16 v29, v9

    invoke-static/range {v28 .. v44}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/BaselineShift;IIJLandroidx/compose/ui/text/PlatformTextStyle;Landroidx/compose/ui/text/style/LineHeightStyle;I)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    move-object/from16 v3, v25

    const/16 v25, 0x0

    const v26, 0x1fffc

    move-object/from16 v23, v6

    const-wide/16 v6, 0x0

    move v10, v8

    const-wide/16 v8, 0x0

    move v11, v10

    const/4 v10, 0x0

    move v15, v11

    const-wide/16 v11, 0x0

    move-object/from16 v18, v13

    const/4 v13, 0x0

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v24, v15

    const/16 v21, 0x20

    const-wide/16 v15, 0x0

    const/16 v28, 0x1

    const/16 v17, 0x0

    move-object/from16 v29, v18

    const/16 v18, 0x0

    move-object/from16 v30, v19

    const/16 v19, 0x0

    const/16 v31, 0x2

    const/16 v20, 0x0

    move/from16 v32, v21

    const/16 v21, 0x0

    move/from16 v33, v24

    const/16 v24, 0x0

    move-object/from16 v45, v29

    move/from16 v0, v33

    move/from16 v29, v22

    move-object/from16 v22, v2

    move v2, v1

    move-object/from16 v1, v30

    invoke-static/range {v4 .. v26}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v23

    invoke-static {v1, v2}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v7}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v7

    new-instance v8, Llc;

    const/4 v14, 0x1

    invoke-direct {v8, v14, v3}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;)V

    const v9, -0x2a2fc349

    invoke-static {v9, v8, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const v12, 0x180006

    const/16 v13, 0x38

    move-object v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, v23

    invoke-static/range {v4 .. v13}, Landroidx/compose/foundation/layout/FlowLayoutKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;IILandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    move-object v6, v11

    invoke-static {v6, v14, v1, v2}, Lo60;->d(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v4, 0x2

    invoke-static {v1, v2, v0, v4}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v0, v2, v14}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v8, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v0, 0x7f1403f0

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    and-int/lit8 v0, v27, 0x70

    const/16 v1, 0x20

    if-ne v0, v1, :cond_8

    const/16 v29, 0x1

    :cond_8
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v29, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_a

    move-object/from16 v0, v45

    if-ne v1, v0, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v0, p1

    goto :goto_6

    :cond_a
    :goto_5
    new-instance v1, Lo8;

    move-object/from16 v0, p1

    const/4 v2, 0x4

    invoke-direct {v1, v0, v3, v2}, Lo8;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_6
    move-object v12, v1

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/16 v5, 0x1f8

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v21

    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v21

    :cond_d
    move-object v0, v1

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v2, Lf0;

    const/16 v3, 0x11

    move-object/from16 v4, p0

    move/from16 v5, p3

    invoke-direct {v2, v4, v0, v5, v3}, Lf0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

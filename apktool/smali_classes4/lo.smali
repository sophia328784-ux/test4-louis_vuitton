.class public final synthetic Llo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/storemode/components/plp/ComposableSingletons$StoreModeItemsKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/plp/ComposableSingletons$StoreModeItemsKt;

    and-int/lit8 p1, p0, 0x3

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p0, v0

    invoke-interface {v3, p0, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v4, 0x1b0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v1, "Title"

    const-string v2, "Message"

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/StoreModeItemsKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel2ScreenKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel2ScreenKt;

    and-int/lit8 p1, p0, 0x3

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p0, p2

    invoke-interface {v4, p0, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p1, "lambda__1544291885$lambda$0"

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 p2, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p0

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    iget v1, v0, Llo;->b:I

    const/16 v6, 0x1d

    const/16 v8, 0x17

    const/16 v9, 0x13

    const/16 v11, 0x1c

    const/16 v15, 0x16

    const/16 v7, 0x19

    const/16 v2, 0x18

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel3ScreenKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/catalog/ComposableSingletons$StoreModeLevel3ScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v5, :cond_0

    move v13, v14

    :cond_0
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v13}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "lambda_464916164$lambda$0"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v24

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v28, v0

    move-wide/from16 v26, v1

    move/from16 v25, v3

    invoke-static/range {v24 .. v30}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    goto :goto_0

    :cond_1
    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    invoke-direct/range {p0 .. p2}, Llo;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct/range {p0 .. p2}, Llo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/storemode/components/ComposableSingletons$StoreModeExpiredComposableKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/ComposableSingletons$StoreModeExpiredComposableKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v5, :cond_2

    move v13, v14

    :cond_2
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v13}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    new-instance v1, Loo;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Loo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v1, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeExpiredComposableKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v8, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v8, v1, 0x3

    if-eq v8, v5, :cond_5

    move v8, v14

    goto :goto_2

    :cond_5
    move v8, v13

    :goto_2
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v15, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v16, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v28, 0x7ff

    const/16 v29, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v16 .. v29}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v25, 0x1d6

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v16

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v26}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    new-instance v1, Lio;

    invoke-direct {v1, v2}, Lio;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v2, v1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    new-instance v1, Llo;

    invoke-direct {v1, v14}, Llo;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_8

    new-instance v8, Ljo;

    invoke-direct {v8, v11}, Ljo;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_9

    new-instance v9, Llo;

    invoke-direct {v9, v5}, Llo;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_a

    new-instance v12, Ljo;

    invoke-direct {v12, v6}, Ljo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v6, v12

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_b

    new-instance v12, Lmo;

    invoke-direct {v12, v13}, Lmo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_c

    new-instance v10, Lio;

    invoke-direct {v10, v11}, Lio;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_d

    new-instance v11, Lmo;

    invoke-direct {v11, v14}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_e

    new-instance v14, Lmo;

    invoke-direct {v14, v5}, Lmo;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_f

    new-instance v5, Lmo;

    invoke-direct {v5, v4}, Lmo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_10

    new-instance v4, Llo;

    invoke-direct {v4, v13}, Llo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_11

    new-instance v13, Lio;

    invoke-direct {v13, v7}, Lio;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_12

    new-instance v7, Lio;

    move-object/from16 p0, v1

    const/16 v1, 0x1a

    invoke-direct {v7, v1}, Lio;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_3

    :cond_12
    move-object/from16 p0, v1

    :goto_3
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_13

    new-instance v1, Lio;

    const/16 v3, 0x1b

    invoke-direct {v1, v3}, Lio;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object v3, v15

    move-object v15, v1

    move-object v1, v3

    move-object v3, v12

    move-object v12, v4

    move-object v4, v8

    move-object v8, v10

    move-object v10, v14

    move-object v14, v7

    move-object v7, v3

    move-object v3, v11

    move-object v11, v5

    move-object v5, v9

    move-object v9, v3

    move-object/from16 v3, p0

    move-object/from16 v16, v0

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_4

    :cond_14
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v5, :cond_15

    move v4, v14

    goto :goto_5

    :cond_15
    move v4, v13

    :goto_5
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v30, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v38, 0x7e0

    const/16 v39, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v26 .. v39}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v34

    const/16 v36, 0x176

    const/16 v37, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    move-object/from16 v27, v4

    move-object/from16 v30, v26

    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v37}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_16

    new-instance v4, Lio;

    invoke-direct {v4, v9}, Lio;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_17

    new-instance v5, Lfo;

    invoke-direct {v5, v11}, Lfo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_18

    new-instance v9, Ljo;

    invoke-direct {v9, v15}, Ljo;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_19

    new-instance v10, Lfo;

    invoke-direct {v10, v6}, Lfo;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_1a

    new-instance v6, Ljo;

    invoke-direct {v6, v8}, Ljo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_1b

    new-instance v11, Ljo;

    invoke-direct {v11, v2}, Ljo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1c

    new-instance v2, Lio;

    invoke-direct {v2, v8}, Lio;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_1d

    new-instance v2, Ljo;

    invoke-direct {v2, v7}, Ljo;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_1e

    new-instance v7, Ljo;

    const/16 v12, 0x1a

    invoke-direct {v7, v12}, Ljo;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_1f

    new-instance v12, Ljo;

    const/16 v13, 0x1b

    invoke-direct {v12, v13}, Ljo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_6

    :cond_1f
    const/16 v13, 0x1b

    :goto_6
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_20

    new-instance v14, Lfo;

    invoke-direct {v14, v13}, Lfo;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_21

    new-instance v13, Lio;

    const/16 v15, 0x14

    invoke-direct {v13, v15}, Lio;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_22

    new-instance v15, Lio;

    move-object/from16 p0, v1

    const/16 v1, 0x15

    invoke-direct {v15, v1}, Lio;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_7

    :cond_22
    move-object/from16 p0, v1

    :goto_7
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_23

    new-instance v1, Lio;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, Lio;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object v3, v9

    move-object v9, v2

    move-object v2, v4

    move-object v4, v3

    move-object/from16 v16, v0

    move-object v3, v5

    move-object v5, v10

    move-object v10, v7

    move-object v7, v11

    move-object v11, v12

    move-object v12, v14

    move-object v14, v15

    move-object v15, v1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_8

    :cond_24
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v5, :cond_25

    move v2, v14

    goto :goto_9

    :cond_25
    move v2, v13

    :goto_9
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v31, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v39, 0x7e0

    const/16 v40, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v27 .. v40}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v37, 0x1f6

    const/16 v38, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v2

    move-object/from16 v31, v27

    move-object/from16 v27, v1

    invoke-direct/range {v27 .. v38}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_26

    new-instance v2, Lno;

    invoke-direct {v2, v9}, Lno;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_27

    new-instance v7, Llo;

    const/16 v9, 0x15

    invoke-direct {v7, v9}, Llo;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_28

    new-instance v9, Lmo;

    invoke-direct {v9, v11}, Lmo;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_29

    new-instance v10, Llo;

    const/16 v11, 0x16

    invoke-direct {v10, v11}, Llo;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_2a

    new-instance v11, Lmo;

    invoke-direct {v11, v6}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v6, v11

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_2b

    new-instance v11, Loo;

    invoke-direct {v11, v13}, Loo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_2c

    new-instance v12, Lno;

    invoke-direct {v12, v8}, Lno;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2c
    move-object v8, v12

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_2d

    new-instance v12, Loo;

    invoke-direct {v12, v14}, Loo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_2e

    new-instance v13, Loo;

    invoke-direct {v13, v5}, Loo;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_2f

    new-instance v5, Loo;

    invoke-direct {v5, v4}, Loo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2f
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_30

    new-instance v4, Llo;

    const/16 v15, 0x14

    invoke-direct {v4, v15}, Llo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_a

    :cond_30
    const/16 v15, 0x14

    :goto_a
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_31

    new-instance v14, Lno;

    invoke-direct {v14, v15}, Lno;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_32

    new-instance v15, Lno;

    move-object/from16 v27, v1

    const/16 v1, 0x15

    invoke-direct {v15, v1}, Lno;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_b

    :cond_32
    move-object/from16 v27, v1

    :goto_b
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_33

    new-instance v1, Lno;

    const/16 v3, 0x16

    invoke-direct {v1, v3}, Lno;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_33
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object v3, v12

    move-object v12, v4

    move-object v4, v9

    move-object v9, v3

    move-object/from16 v16, v0

    move-object v3, v7

    move-object v7, v11

    move-object v11, v5

    move-object v5, v10

    move-object v10, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v1

    move-object/from16 v1, v27

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_c

    :cond_34
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v5, :cond_35

    move v13, v14

    :cond_35
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v13}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v22, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v34, 0x5ff

    const/16 v35, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    invoke-direct/range {v22 .. v35}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v14, 0x1f6

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v1

    move-object/from16 v8, v22

    invoke-direct/range {v4 .. v15}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_36

    new-instance v2, Lno;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Lno;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_36
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_37

    new-instance v4, Llo;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Llo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_37
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_38

    new-instance v5, Lmo;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lmo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_38
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_39

    new-instance v6, Llo;

    const/16 v7, 0x9

    invoke-direct {v6, v7}, Llo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_39
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_3a

    new-instance v7, Lmo;

    const/16 v8, 0xb

    invoke-direct {v7, v8}, Lmo;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_3b

    new-instance v8, Lmo;

    const/16 v9, 0xc

    invoke-direct {v8, v9}, Lmo;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3b
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_3c

    new-instance v9, Lno;

    const/16 v10, 0x8

    invoke-direct {v9, v10}, Lno;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3c
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_3d

    new-instance v10, Lmo;

    const/16 v11, 0xd

    invoke-direct {v10, v11}, Lmo;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3d
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_3e

    new-instance v11, Lmo;

    const/16 v12, 0xe

    invoke-direct {v11, v12}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3e
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_3f

    new-instance v12, Lmo;

    const/16 v13, 0xf

    invoke-direct {v12, v13}, Lmo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3f
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_40

    new-instance v13, Llo;

    const/4 v14, 0x7

    invoke-direct {v13, v14}, Llo;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_40
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_41

    new-instance v14, Lno;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Lno;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_41
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_42

    new-instance v15, Lno;

    move-object/from16 p0, v1

    const/4 v1, 0x6

    invoke-direct {v15, v1}, Lno;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_d

    :cond_42
    move-object/from16 p0, v1

    :goto_d
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_43

    new-instance v1, Lno;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lno;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_43
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object/from16 v16, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_e

    :cond_44
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v5, :cond_45

    move v4, v14

    goto :goto_f

    :cond_45
    move v4, v13

    :goto_f
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_54

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v31, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v39, 0x7ff

    const/16 v40, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v27, v31

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v27 .. v40}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v34

    const/16 v37, 0x1b6

    const/16 v38, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v4

    move-object/from16 v31, v27

    move-object/from16 v27, v1

    invoke-direct/range {v27 .. v38}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_46

    new-instance v4, Lno;

    const/16 v12, 0xe

    invoke-direct {v4, v12}, Lno;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_46
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_47

    new-instance v5, Llo;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Llo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_47
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_48

    new-instance v6, Lmo;

    const/16 v11, 0x16

    invoke-direct {v6, v11}, Lmo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_48
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_49

    new-instance v9, Llo;

    const/16 v10, 0x12

    invoke-direct {v9, v10}, Llo;-><init>(I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_49
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_4a

    new-instance v10, Lmo;

    invoke-direct {v10, v8}, Lmo;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4a
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_4b

    new-instance v8, Lmo;

    invoke-direct {v8, v2}, Lmo;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4b
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_4c

    new-instance v2, Lno;

    const/16 v11, 0x12

    invoke-direct {v2, v11}, Lno;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4c
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_4d

    new-instance v11, Lmo;

    invoke-direct {v11, v7}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4d
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_4e

    new-instance v7, Lmo;

    const/16 v12, 0x1a

    invoke-direct {v7, v12}, Lmo;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4e
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_4f

    new-instance v12, Lmo;

    const/16 v13, 0x1b

    invoke-direct {v12, v13}, Lmo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4f
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_50

    new-instance v13, Llo;

    const/16 v14, 0xf

    invoke-direct {v13, v14}, Llo;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_10

    :cond_50
    const/16 v14, 0xf

    :goto_10
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_51

    new-instance v15, Lno;

    invoke-direct {v15, v14}, Lno;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_51
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_52

    new-instance v14, Lno;

    move-object/from16 v27, v1

    const/16 v1, 0x10

    invoke-direct {v14, v1}, Lno;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_11

    :cond_52
    move-object/from16 v27, v1

    :goto_11
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_53

    new-instance v1, Lno;

    const/16 v3, 0x11

    invoke-direct {v1, v3}, Lno;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_53
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object v3, v8

    move-object v8, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v10

    move-object v10, v7

    move-object v7, v3

    move-object/from16 v16, v0

    move-object v3, v5

    move-object v5, v9

    move-object v9, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v15

    move-object v15, v1

    move-object/from16 v1, v27

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_12

    :cond_54
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v5, :cond_55

    move v2, v14

    goto :goto_13

    :cond_55
    move v2, v13

    :goto_13
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_64

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v24, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v36, 0x7ff

    const/16 v37, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v24 .. v37}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v31

    const/16 v34, 0x1b6

    const/16 v35, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v2

    move-object/from16 v28, v24

    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v35}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_56

    new-instance v2, Lno;

    const/16 v4, 0x9

    invoke-direct {v2, v4}, Lno;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_56
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_57

    new-instance v4, Llo;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Llo;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_57
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_58

    new-instance v5, Lmo;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lmo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_58
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_59

    new-instance v6, Llo;

    const/16 v12, 0xe

    invoke-direct {v6, v12}, Llo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_59
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_5a

    new-instance v7, Lmo;

    const/16 v8, 0x11

    invoke-direct {v7, v8}, Lmo;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5a
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_5b

    new-instance v8, Lmo;

    const/16 v10, 0x12

    invoke-direct {v8, v10}, Lmo;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5b
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_5c

    new-instance v10, Lno;

    const/16 v11, 0xd

    invoke-direct {v10, v11}, Lno;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5c
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_5d

    new-instance v11, Lmo;

    invoke-direct {v11, v9}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5d
    move-object v9, v11

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_5e

    new-instance v11, Lmo;

    const/16 v15, 0x14

    invoke-direct {v11, v15}, Lmo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5e
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_5f

    new-instance v12, Lmo;

    const/16 v13, 0x15

    invoke-direct {v12, v13}, Lmo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5f
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_60

    new-instance v13, Llo;

    const/16 v14, 0xb

    invoke-direct {v13, v14}, Llo;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_60
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_61

    new-instance v14, Lno;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Lno;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_61
    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_62

    new-instance v15, Lno;

    move-object/from16 v24, v1

    const/16 v1, 0xb

    invoke-direct {v15, v1}, Lno;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_14

    :cond_62
    move-object/from16 v24, v1

    :goto_14
    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_63

    new-instance v1, Lno;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Lno;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_63
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object/from16 v16, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v1

    move-object/from16 v1, v24

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_15

    :cond_64
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v5, :cond_65

    move v13, v14

    :cond_65
    and-int/2addr v1, v14

    invoke-interface {v0, v1, v13}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_74

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightMockKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    new-instance v30, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    const/16 v38, 0x7ff

    const/16 v39, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v30

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-direct/range {v26 .. v39}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;-><init>(ZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v36, 0x1f0

    const/16 v37, 0x0

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v4

    move-object/from16 v30, v26

    move-object/from16 v26, v1

    invoke-direct/range {v26 .. v37}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;-><init>(Ljava/util/List;ZZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;Ljava/util/Set;ZLjava/util/Set;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_66

    new-instance v4, Lno;

    invoke-direct {v4, v2}, Lno;-><init>(I)V

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_66
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_67

    new-instance v5, Lfo;

    invoke-direct {v5, v2}, Lfo;-><init>(I)V

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_67
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_68

    new-instance v6, Ljo;

    const/16 v8, 0x10

    invoke-direct {v6, v8}, Ljo;-><init>(I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_68
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_69

    new-instance v8, Lfo;

    invoke-direct {v8, v7}, Lfo;-><init>(I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_69
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_6a

    new-instance v10, Ljo;

    const/16 v11, 0x11

    invoke-direct {v10, v11}, Ljo;-><init>(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6a
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_6b

    new-instance v11, Ljo;

    const/16 v12, 0x12

    invoke-direct {v11, v12}, Ljo;-><init>(I)V

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_16

    :cond_6b
    const/16 v12, 0x12

    :goto_16
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_6c

    new-instance v13, Lio;

    invoke-direct {v13, v12}, Lio;-><init>(I)V

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6c
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_6d

    new-instance v12, Ljo;

    invoke-direct {v12, v9}, Ljo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6d
    move-object v9, v12

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v3, :cond_6e

    new-instance v12, Ljo;

    const/16 v15, 0x14

    invoke-direct {v12, v15}, Ljo;-><init>(I)V

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6e
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_6f

    new-instance v14, Ljo;

    const/16 v15, 0x15

    invoke-direct {v14, v15}, Ljo;-><init>(I)V

    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6f
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v3, :cond_70

    new-instance v15, Llo;

    invoke-direct {v15, v2}, Llo;-><init>(I)V

    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_70
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_71

    new-instance v2, Lno;

    invoke-direct {v2, v7}, Lno;-><init>(I)V

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_71
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_72

    new-instance v7, Lno;

    move-object/from16 v26, v1

    const/16 v1, 0x1a

    invoke-direct {v7, v1}, Lno;-><init>(I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    goto :goto_17

    :cond_72
    move-object/from16 v26, v1

    :goto_17
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_73

    new-instance v1, Lno;

    const/16 v3, 0x1b

    invoke-direct {v1, v3}, Lno;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_73
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const v17, 0x36db6db0

    const/16 v18, 0x6db6

    move-object v3, v14

    move-object v14, v7

    move-object v7, v11

    move-object v11, v3

    move-object/from16 v16, v0

    move-object v3, v5

    move-object v5, v8

    move-object v8, v13

    move-object v13, v2

    move-object v2, v4

    move-object v4, v6

    move-object v6, v10

    move-object v10, v12

    move-object v12, v15

    move-object v15, v1

    move-object/from16 v1, v26

    invoke-static/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_74
    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/activities/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/activities/b;->b:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/plp/activities/b;->c:F

    iput p3, p0, Lcom/vuitton/android/presentation/screen/plp/activities/b;->d:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->x:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    and-int/2addr v1, v6

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/plp/activities/b;->b:Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->G1()Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ClassicPlp;->a:Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ClassicPlp;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v2, :cond_25

    const v1, 0x4d84d39b    # 2.78557536E8f

    const-string v2, "onCreate$lambda$0$0$0"

    invoke-static {v1, v5, v2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    sget-object v2, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v1, v8, v9, v2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    move-object v2, v1

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object v1

    move-object v4, v2

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v2

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1

    if-ne v9, v15, :cond_2

    :cond_1
    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$onCreate$1$1$1$1$1;

    const-string v13, "finish()V"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    const-string v12, "finish"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v8

    :cond_2
    check-cast v9, Lkotlin/reflect/KFunction;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_3

    if-ne v11, v15, :cond_4

    :cond_3
    new-instance v11, Ljk;

    const/16 v8, 0x8

    invoke-direct {v11, v10, v8}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_5

    if-ne v12, v15, :cond_6

    :cond_5
    new-instance v12, Ljk;

    invoke-direct {v12, v10, v3}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x3

    if-nez v8, :cond_7

    if-ne v13, v15, :cond_8

    :cond_7
    new-instance v13, Ljk;

    invoke-direct {v13, v10, v14}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v8, v13

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_9

    if-ne v14, v15, :cond_a

    :cond_9
    new-instance v14, Ljk;

    const/4 v13, 0x4

    invoke-direct {v14, v10, v13}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    iget v3, v0, Lcom/vuitton/android/presentation/screen/plp/activities/b;->c:F

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v16

    or-int v13, v13, v16

    iget v0, v0, Lcom/vuitton/android/presentation/screen/plp/activities/b;->d:F

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v16

    or-int v13, v13, v16

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v13, :cond_b

    if-ne v6, v15, :cond_c

    :cond_b
    new-instance v6, Llk;

    invoke-direct {v6, v3, v0, v7, v10}, Llk;-><init>(FFILjava/lang/Object;)V

    invoke-interface {v5, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/16 v7, 0x9

    if-nez v0, :cond_d

    if-ne v3, v15, :cond_e

    :cond_d
    new-instance v3, Ld3;

    invoke-direct {v3, v10, v7}, Ld3;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v0

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v13, :cond_f

    if-ne v7, v15, :cond_10

    :cond_f
    new-instance v17, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$onCreate$1$1$1$8$1;

    const-string v22, "updateFiltersContainerVisibility(Z)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-class v20, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v21, "updateFiltersContainerVisibility"

    move-object/from16 v19, v0

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v7, v17

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v7, Lkotlin/reflect/KFunction;

    move-object v13, v7

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v0, :cond_11

    if-ne v7, v15, :cond_12

    :cond_11
    new-instance v7, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$onCreate$1$1$1$9$1;

    invoke-direct {v7, v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$onCreate$1$1$1$9$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move-result-object v0

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v19, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v17, :cond_13

    if-ne v0, v15, :cond_14

    :cond_13
    new-instance v17, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$onCreate$1$1$1$10$1;

    const-string v22, "updateQuickAccessFiltersButtonState(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V"

    const/16 v23, 0x0

    const/16 v18, 0x1

    const-class v20, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v21, "updateQuickAccessFiltersButtonState"

    invoke-direct/range {v17 .. v23}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v18, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v17, :cond_16

    if-ne v0, v15, :cond_15

    goto :goto_1

    :cond_15
    move-object/from16 v17, v1

    goto :goto_2

    :cond_16
    :goto_1
    new-instance v0, Ljk;

    move-object/from16 v17, v1

    const/4 v1, 0x5

    invoke-direct {v0, v10, v1}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v19, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_17

    if-ne v0, v15, :cond_18

    :cond_17
    new-instance v0, Ljk;

    const/4 v1, 0x6

    invoke-direct {v0, v10, v1}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v20, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_19

    if-ne v0, v15, :cond_1a

    :cond_19
    new-instance v0, Ljk;

    const/4 v1, 0x7

    invoke-direct {v0, v10, v1}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v21, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_1b

    if-ne v0, v15, :cond_1c

    :cond_1b
    new-instance v0, Lkk;

    const/4 v1, 0x1

    invoke-direct {v0, v10, v1}, Lkk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v16, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_1d

    if-ne v0, v15, :cond_1e

    :cond_1d
    new-instance v0, Ljk;

    const/16 v1, 0x9

    invoke-direct {v0, v10, v1}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 p0, v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_1f

    if-ne v0, v15, :cond_20

    :cond_1f
    new-instance v0, Lkk;

    const/4 v1, 0x2

    invoke-direct {v0, v10, v1}, Lkk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v22, v0

    check-cast v22, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_21

    if-ne v1, v15, :cond_22

    :cond_21
    new-instance v1, Lkk;

    const/4 v0, 0x3

    invoke-direct {v1, v10, v0}, Lkk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v23, v1

    check-cast v23, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_23

    if-ne v1, v15, :cond_24

    :cond_23
    new-instance v1, Ljk;

    const/16 v0, 0xa

    invoke-direct {v1, v10, v0}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v24, v1

    check-cast v24, Lkotlin/jvm/functions/Function0;

    const/16 v26, 0xc00

    const v27, 0x10210

    move-object v10, v14

    move-object v14, v7

    move-object v7, v12

    move-object v12, v3

    const/4 v3, 0x0

    move-object v0, v4

    const/4 v4, 0x0

    move-object/from16 v25, v5

    move-object v5, v9

    const/4 v9, 0x0

    move-object/from16 v15, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object v1, v11

    move-object v11, v6

    move-object v6, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v21

    move-object/from16 v21, p0

    invoke-static/range {v0 .. v27}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPCategoryComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v5, v25

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_7

    :cond_25
    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ThematicPlp;

    if-eqz v0, :cond_2f

    const v0, 0x63813196

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->H()Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->G1()Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ThematicPlp;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/plp/models/DisplayedPLPType$ThematicPlp;->a:Ljava/util/List;

    invoke-static {v5}, Landroidx/lifecycle/viewmodel/compose/LocalViewModelStoreOwner;->a(Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-static {v1, v5}, Landroidx/hilt/lifecycle/viewmodel/compose/HiltViewModelKt;->a(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/compose/runtime/Composer;)Ldagger/hilt/android/internal/lifecycle/HiltViewModelFactory;

    move-result-object v3

    instance-of v0, v1, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    if-eqz v0, :cond_26

    move-object v0, v1

    check-cast v0, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;

    invoke-interface {v0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :goto_3
    move-object v4, v0

    goto :goto_4

    :cond_26
    sget-object v0, Landroidx/lifecycle/viewmodel/CreationExtras$Empty;->c:Landroidx/lifecycle/viewmodel/CreationExtras$Empty;

    goto :goto_3

    :goto_4
    const-class v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/viewmodel/compose/ViewModelKt;->a(Lkotlin/reflect/KClass;Landroidx/lifecycle/ViewModelStoreOwner;Ljava/lang/String;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;Landroidx/compose/runtime/Composer;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_27

    if-ne v2, v15, :cond_28

    :cond_27
    move-object v0, v8

    goto :goto_5

    :cond_28
    move-object v0, v8

    goto :goto_6

    :goto_5
    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity$onCreate$1$1$1$19$1;

    const-string v13, "finish()V"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;

    const-string v12, "finish"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v8

    :goto_6
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "nav_arg_plp_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "nav_arg_theme_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v15, :cond_29

    new-instance v3, Lfj;

    const/16 v4, 0xf

    invoke-direct {v3, v4}, Lfj;-><init>(I)V

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_29
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v4, :cond_2a

    if-ne v11, v15, :cond_2b

    :cond_2a
    new-instance v11, Lkk;

    invoke-direct {v11, v10, v7}, Lkk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2b
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_2c

    if-ne v7, v15, :cond_2d

    :cond_2c
    new-instance v7, Ljk;

    const/4 v4, 0x1

    invoke-direct {v7, v10, v4}, Ljk;-><init>(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;I)V

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v4, v6

    move-object v6, v11

    const/16 v11, 0xc00

    move-object/from16 v25, v5

    move-object v5, v0

    const/4 v0, 0x0

    move-object/from16 v10, v25

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    move-object v5, v10

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_2e
    const-string v0, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2f
    const v0, 0x4d84c9d6    # 2.78477504E8f

    invoke-static {v5, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_30
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

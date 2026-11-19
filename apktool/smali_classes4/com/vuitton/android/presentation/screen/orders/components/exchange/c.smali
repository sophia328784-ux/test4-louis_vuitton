.class public final synthetic Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

.field public final synthetic d:Landroidx/compose/runtime/State;

.field public final synthetic e:Landroidx/navigation/NavHostController;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/compose/runtime/State;Landroidx/navigation/NavHostController;Landroid/content/Context;I)V
    .locals 0

    iput p5, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->d:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->e:Landroidx/navigation/NavHostController;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->f:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->b:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->e:Landroidx/navigation/NavHostController;

    const/4 v3, 0x1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->f:Landroid/content/Context;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->d:Landroidx/compose/runtime/State;

    const/4 v8, 0x2

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v14, p3

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p4

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-class v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;

    sget-object v8, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v8, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/navigation/NavBackStackEntryKt;->a(Landroidx/navigation/NavBackStackEntry;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;->a:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_0

    if-ne v10, v4, :cond_1

    :cond_0
    new-instance v10, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$1$1;

    invoke-direct {v10, v8, v1, v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$1$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v2, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_2

    if-ne v9, v4, :cond_3

    :cond_2
    new-instance v9, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$2$1;

    invoke-direct {v9, v8, v7, v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$2$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v1, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_4

    if-ne v5, v4, :cond_5

    :cond_4
    new-instance v15, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$3$1;

    const-string v20, "submitExchange()V"

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-class v18, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    const-string v19, "submitExchange"

    move-object/from16 v17, v8

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v15

    :cond_5
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->e:Landroidx/navigation/NavHostController;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_6

    if-ne v5, v4, :cond_7

    :cond_6
    new-instance v5, Lvi0;

    const/4 v2, 0x3

    invoke-direct {v5, v8, v0, v7, v2}, Lvi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v10, v5

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v14, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_8

    if-ne v5, v4, :cond_9

    :cond_8
    new-instance v5, Lxi0;

    invoke-direct {v5, v8, v6, v7, v3}, Lxi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_a

    if-ne v5, v4, :cond_b

    :cond_a
    new-instance v15, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$5$6$1;

    const-string v20, "popBackStack()Z"

    const/16 v21, 0x8

    const/16 v16, 0x0

    const-class v18, Landroidx/navigation/NavHostController;

    const-string v19, "popBackStack"

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v15

    :cond_b
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_c

    if-ne v5, v4, :cond_d

    :cond_c
    new-instance v5, Lyi0;

    invoke-direct {v5, v8, v0, v3}, Lyi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v14, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeReviewComposableKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v3, p2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v15, p3

    check-cast v15, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_e

    if-ne v3, v4, :cond_f

    :cond_e
    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$1$1;

    invoke-direct {v3, v9, v7, v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_10

    if-ne v3, v4, :cond_11

    :cond_10
    new-instance v16, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$2$1;

    const-string v21, "selectExchangeOption(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;I)V"

    const/16 v22, 0x0

    const/16 v17, 0x3

    const-class v19, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    const-string v20, "selectExchangeOption"

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v16

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v3, Lkotlin/reflect/KFunction;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_12

    if-ne v5, v4, :cond_13

    :cond_12
    new-instance v16, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$4$3$1;

    const-string v21, "requestSizeGuide(Ljava/lang/String;)V"

    const/16 v22, 0x0

    const/16 v17, 0x1

    const-class v19, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    const-string v20, "requestSizeGuide"

    move-object/from16 v18, v9

    invoke-direct/range {v16 .. v22}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v5, v16

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v0, v10

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v0, v10

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v0, :cond_14

    if-ne v10, v4, :cond_15

    :cond_14
    new-instance v10, Ljx;

    const/16 v0, 0x19

    invoke-direct {v10, v9, v2, v7, v0}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v11, v3

    check-cast v11, Lkotlin/jvm/functions/Function3;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_16

    if-ne v3, v4, :cond_17

    :cond_16
    new-instance v3, Lxi0;

    invoke-direct {v3, v9, v6, v7, v8}, Lxi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v12, v3

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_18

    if-ne v3, v4, :cond_19

    :cond_18
    new-instance v3, Lyi0;

    invoke-direct {v3, v9, v2, v8}, Lyi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/navigation/NavHostController;I)V

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderExchangeVariantSelectionComposableKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p4

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/c;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_1a

    if-ne v11, v4, :cond_1b

    :cond_1a
    new-instance v11, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$1$1;

    invoke-direct {v11, v0, v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$1$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v1, v11}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_1c

    if-ne v12, v4, :cond_1d

    :cond_1c
    new-instance v12, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1;

    invoke-direct {v12, v0, v7, v5}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$2$2$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v9, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_1e

    if-ne v9, v4, :cond_1f

    :cond_1e
    new-instance v9, Lvi0;

    invoke-direct {v9, v0, v2, v7, v3}, Lvi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object v11, v9

    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_20

    if-ne v5, v4, :cond_21

    :cond_20
    new-instance v5, Lvi0;

    invoke-direct {v5, v0, v2, v7, v8}, Lvi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_22

    if-ne v5, v4, :cond_23

    :cond_22
    new-instance v5, Lxi0;

    const/4 v3, 0x0

    invoke-direct {v5, v0, v6, v7, v3}, Lxi0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroid/content/Context;Landroidx/compose/runtime/State;I)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object v13, v5

    check-cast v13, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_24

    if-ne v5, v4, :cond_25

    :cond_24
    new-instance v5, Lui0;

    invoke-direct {v5, v0, v8}, Lui0;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;I)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    move-object v14, v5

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_26

    if-ne v5, v4, :cond_27

    :cond_26
    new-instance v5, Lyi0;

    invoke-direct {v5, v2, v0}, Lyi0;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;)V

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x0

    move-object/from16 v16, v10

    move-object v10, v0

    invoke-static/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeSelectionComposableKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public final synthetic Ljx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Ljx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljx;->d:Ljava/lang/Object;

    iput-object p2, p0, Ljx;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljx;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Ljx;->b:I

    iput-object p1, p0, Ljx;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljx;->d:Ljava/lang/Object;

    iput-object p3, p0, Ljx;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Ljx;->b:I

    const/4 v2, 0x3

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Ljx;->e:Ljava/lang/Object;

    iget-object v9, v0, Ljx;->d:Ljava/lang/Object;

    iget-object v0, v0, Ljx;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Ljava/util/List;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    check-cast v8, Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v9, Landroidx/compose/foundation/layout/PaddingValues;

    check-cast v8, Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    sget v2, Landroidx/compose/material3/OutlinedTextFieldKt;->a:F

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    iget-wide v4, v0, Landroidx/compose/ui/geometry/Size;->a:J

    shr-long v6, v4, v3

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v6, v0, v2

    if-lez v6, :cond_2

    sget v6, Landroidx/compose/material3/OutlinedTextFieldKt;->a:F

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v6

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-interface {v9, v7}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v7

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    invoke-interface {v9, v10}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v9

    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v9

    invoke-static {v0}, Lkotlin/math/MathKt;->c(F)I

    move-result v10

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v11

    shr-long/2addr v11, v3

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    sub-float/2addr v11, v7

    sub-float/2addr v11, v9

    invoke-static {v11}, Lkotlin/math/MathKt;->c(F)I

    move-result v9

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    invoke-interface {v8, v10, v9, v11}, Landroidx/compose/ui/Alignment$Horizontal;->a(IILandroidx/compose/ui/unit/LayoutDirection;)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    add-float/2addr v8, v0

    sub-float v9, v8, v0

    sub-float/2addr v9, v6

    cmpg-float v10, v9, v2

    if-gez v10, :cond_0

    move v12, v2

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    add-float/2addr v8, v0

    add-float/2addr v8, v6

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v9

    shr-long v2, v9, v3

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpl-float v2, v8, v0

    if-lez v2, :cond_1

    move v14, v0

    goto :goto_1

    :cond_1
    move v14, v8

    :goto_1
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    neg-float v2, v0

    div-float v13, v2, v7

    div-float v15, v0, v7

    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->a:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->d()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->p()V

    :try_start_0
    iget-object v11, v2, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;->a(FFFFI)V

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3, v4}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2, v3, v4}, Lpq0;->y(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;J)V

    throw v0

    :cond_2
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;

    invoke-direct {v1, v0, v9, v8}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$lambda$0$0$$inlined$onDispose$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;)V

    return-object v1

    :pswitch_3
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    check-cast v9, Landroidx/navigation/NavHostController;

    check-cast v8, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object v3, v7

    :goto_3
    if-eqz v3, :cond_4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v3}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v4, v7

    :goto_4
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->E2()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {v9, v0, v7, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lkotlin/jvm/functions/Function4;

    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    check-cast v8, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v8, :cond_5

    iget-object v7, v8, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;->e:Ljava/lang/String;

    :cond_5
    invoke-interface {v0, v1, v2, v3, v7}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;

    move-object v13, v9

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object v14, v8

    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;->a:Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/components/ComposableSingletons$NotificationPreferencesKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v0, v7, v1, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreference;

    new-instance v8, Ln4;

    const/16 v9, 0xf

    invoke-direct/range {v8 .. v14}, Ln4;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, -0x38df8672

    invoke-direct {v3, v4, v6, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v0, v7, v3, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    goto :goto_5

    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast v9, Landroid/content/Context;

    check-cast v8, Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$GoToProductClick;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->B:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->c(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_6
    invoke-virtual {v8, v0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    check-cast v9, Ljava/util/ArrayList;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v8, v0}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    if-eqz v2, :cond_8

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    iget-object v2, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;->b:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    instance-of v0, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;

    if-eqz v0, :cond_9

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_7

    :cond_9
    instance-of v0, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    if-eqz v0, :cond_a

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    iget-object v0, v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;->a:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;

    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_8

    :cond_a
    invoke-static {}, Lv40;->g()V

    :goto_8
    return-object v7

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/main/components/MainActivityBottomSheetType$ChangeLocaleBottomSheet;-><init>(Lcom/vuitton/android/presentation/applink/SwapDispatchUiModel;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-interface {v8, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->I()Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;->f1()V

    invoke-virtual {v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Landroidx/compose/runtime/MutableState;

    check-cast v9, Landroidx/lifecycle/LifecycleEventObserver;

    check-cast v8, Landroidx/media3/exoplayer/ExoPlayer;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v1, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$lambda$21$0$$inlined$onDispose$1;

    invoke-direct {v1, v8, v0, v9}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt$LvVideoPlayer$lambda$21$0$$inlined$onDispose$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v1

    :pswitch_b
    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    sget-object v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;

    invoke-direct {v2, v8, v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerComposableKt$Internal3dComponent$lambda$10$0$$inlined$onDispose$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerHelper;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v2

    :pswitch_c
    check-cast v0, Landroidx/lifecycle/LifecycleEventObserver;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    sget-object v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$lambda$31$0$$inlined$onDispose$1;

    invoke-direct {v2, v8, v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$lambda$31$0$$inlined$onDispose$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerHelper;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v2

    :pswitch_d
    check-cast v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;

    check-cast v9, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    check-cast v8, Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;

    move-object/from16 v1, p1

    check-cast v1, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;

    invoke-static {v0, v9, v8, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;->d(Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_e
    check-cast v0, Landroidx/lifecycle/LiveData;

    check-cast v9, Landroidx/lifecycle/LifecycleOwner;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Lzi;

    invoke-direct {v1, v8, v5}, Lzi;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v9, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v2, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {v2, v0, v1}, Landroidx/compose/runtime/livedata/LiveDataAdapterKt$observeAsState$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-object v2

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    check-cast v9, Lcom/lightup/sdk/animation/CreatorProject;

    check-cast v8, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->b:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    check-cast v9, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ln90;

    invoke-direct {v2, v9, v1, v8, v6}, Ln90;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v3, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$0$0$$inlined$onDispose$1;

    invoke-direct {v3, v0, v2, v1}, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-object v3

    :pswitch_11
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    check-cast v9, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v2, Ln90;

    invoke-direct {v2, v9, v1, v8, v4}, Ln90;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v3, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleResumeEffectImpl$lambda$0$0$$inlined$onDispose$1;

    invoke-direct {v3, v0, v2, v1}, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleResumeEffectImpl$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-object v3

    :pswitch_12
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    check-cast v9, Landroidx/lifecycle/Lifecycle$Event;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Lbn;

    invoke-direct {v1, v9, v8, v5}, Lbn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {v2, v0, v1}, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v2

    :pswitch_13
    check-cast v0, Landroidx/compose/ui/text/TextLayoutResult;

    check-cast v9, Landroidx/compose/ui/text/AnnotatedString;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    if-eqz v0, :cond_b

    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->a:J

    iget-object v0, v0, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/text/MultiParagraph;->g(J)I

    move-result v0

    const-string v1, "link"

    invoke-virtual {v9, v0, v0, v1}, Landroidx/compose/ui/text/AnnotatedString;->c(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    if-eqz v0, :cond_b

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    check-cast v9, Ljava/util/Map;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d0()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    shr-long/2addr v6, v3

    long-to-int v4, v6

    :cond_c
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v6

    shr-long/2addr v6, v3

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    shr-long/2addr v6, v3

    long-to-int v1, v6

    div-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v2, v1

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_d

    int-to-float v0, v4

    sub-float v2, v0, v2

    :cond_d
    float-to-int v0, v2

    new-instance v1, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    invoke-direct {v1, v0}, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;-><init>(I)V

    invoke-interface {v9, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v8, Landroidx/compose/runtime/MutableFloatState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->d(F)V

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-interface {v1, v2}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->g(F)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Ljava/util/List;

    check-cast v8, Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductTabsUiModel;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/vuitton/android/presentation/screen/immersivearticle/components/ImmersiveArticleContentKt;->a:F

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;

    invoke-direct {v2, v9, v8, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ScrollPercentageReachedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;I)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v9, Landroid/content/Context;

    check-cast v0, Landroidx/compose/foundation/pager/PagerState;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object v7, v2

    :cond_e
    if-nez v7, :cond_f

    const v2, 0x7f140344

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    add-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f140376

    invoke-virtual {v9, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$HistoryComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$HistoryComposableKt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$HistoryComposableKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v7, v3, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$lambda$0$0$3$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$lambda$0$0$3$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$lambda$0$0$3$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v5, v0, v9, v8}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$lambda$0$0$3$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, 0x799532c4

    invoke-direct {v0, v8, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v3, v7, v4, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$HistoryComposableKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {v1, v7, v0, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator;

    check-cast v9, Landroidx/fragment/app/Fragment;

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    iget-object v2, v0, Landroidx/navigation/fragment/FragmentNavigator;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    iget-object v3, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v4, v6

    :cond_12
    :goto_9
    if-eqz v1, :cond_13

    if-nez v4, :cond_13

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->a(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v0, v0, Landroidx/navigation/fragment/FragmentNavigator;->i:Ll00;

    invoke-virtual {v0, v8}, Ll00;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    check-cast v9, Ljava/util/Map;

    check-cast v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->d0()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    shr-long/2addr v6, v3

    long-to-int v4, v6

    :cond_14
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    move-result-wide v6

    shr-long/2addr v6, v3

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->a()J

    move-result-wide v6

    shr-long/2addr v6, v3

    long-to-int v1, v6

    div-int/2addr v1, v5

    int-to-float v1, v1

    add-float/2addr v2, v1

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_15

    int-to-float v0, v4

    sub-float v2, v0, v2

    :cond_15
    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    float-to-int v1, v2

    new-instance v2, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    invoke-direct {v2, v1}, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;-><init>(I)V

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    check-cast v9, Landroid/content/Context;

    check-cast v8, Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-object/from16 v3, p1

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz v3, :cond_17

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$Monogram;

    if-eqz v0, :cond_16

    move-object v6, v8

    goto :goto_a

    :cond_16
    move-object v6, v7

    :goto_a
    const/16 v7, 0xc

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    :cond_17
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

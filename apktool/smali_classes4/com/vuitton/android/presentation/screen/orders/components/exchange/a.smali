.class public final synthetic Lcom/vuitton/android/presentation/screen/orders/components/exchange/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/a;->b:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v8, p2

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p2, 0x11

    const/16 p3, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    and-int/2addr p2, v0

    invoke-interface {v8, p2, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/a;->b:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Loading;

    if-eqz p1, :cond_3

    const p0, -0x7e698962

    const-string p1, "OrderReturnOrExchangeSizeGuideBottomSheet$lambda$0"

    invoke-static {p0, v8, p1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p0

    iget v4, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->l:F

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p0

    iget v6, p0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->m:F

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object p1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->hashCode(J)I

    move-result p2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object p3

    invoke-static {v8, p0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, p1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, p3, p1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, p1, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, p1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, p0, p1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v1}, Lcom/vuitton/android/presentation/screen/orders/components/returns/legacy/LoadingAnimationKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    instance-of p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;

    if-eqz p1, :cond_6

    const p1, -0x7e60ecfe

    invoke-interface {v8, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;->c:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->i:Ljava/lang/String;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p0, p1, :cond_4

    new-instance p0, Lii0;

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lii0;-><init>(I)V

    invoke-interface {v8, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, p0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt$OrderReturnOrExchangeSizeGuideBottomSheet$1$3$1;->b:Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt$OrderReturnOrExchangeSizeGuideBottomSheet$1$3$1;

    invoke-interface {v8, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/high16 v9, 0xdb0000

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/SizeGuideBottomSheetContentKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_6
    const p0, 0x14b23b7a

    invoke-static {v8, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

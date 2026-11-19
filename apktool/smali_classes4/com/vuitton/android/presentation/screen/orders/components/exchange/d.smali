.class public final synthetic Lcom/vuitton/android/presentation/screen/orders/components/exchange/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

.field public final synthetic c:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/d;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/d;->c:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/d;->c:Landroidx/navigation/NavHostController;

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object p4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_0

    if-ne p2, p4, :cond_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$1$1;

    const-string v5, "popBackStack()Z"

    const/16 v6, 0x8

    const/4 v1, 0x0

    const-class v3, Landroidx/navigation/NavHostController;

    const-string v4, "popBackStack"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v0

    :cond_1
    check-cast p2, Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/d;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_2

    if-ne p1, p4, :cond_3

    :cond_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$3$2$1;

    const-string v5, "confirmReturn()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    const-string v4, "confirmReturn"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v0

    :cond_3
    check-cast p1, Lkotlin/reflect/KFunction;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    const/4 p0, 0x0

    invoke-static {v2, p2, p1, p3, p0}, Lcom/vuitton/android/presentation/screen/orders/components/returns/OrderReturnSummaryComposableKt;->a(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

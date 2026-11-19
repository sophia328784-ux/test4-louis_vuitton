.class final synthetic Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeNavHostKt$OrderReturnOrExchangeNavHost$5$1$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->lc(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

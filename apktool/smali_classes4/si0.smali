.class public final synthetic Lsi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Landroidx/navigation/NavHostController;I)V
    .locals 0

    iput p3, p0, Lsi0;->b:I

    iput-object p1, p0, Lsi0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    iput-object p2, p0, Lsi0;->d:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lsi0;->b:I

    iget-object v1, p0, Lsi0;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lsi0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    check-cast p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-static {v1}, Landroidx/navigation/NavController;->c(Landroidx/navigation/NavController;)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;->I4(Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_1

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_1
    invoke-static {p2}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2, p3}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;-><init>(Ljava/util/List;Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/orders/OrderRoute$ReturnOrExchange;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/OrderRoute$ReturnOrExchange;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-static {v1, p0, v3, p1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

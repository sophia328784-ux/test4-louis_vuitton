.class public final synthetic Lri0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p3, p0, Lri0;->b:I

    iput-object p1, p0, Lri0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    iput-object p2, p0, Lri0;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lri0;->b:I

    iget-object v1, p0, Lri0;->d:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lri0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    check-cast p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-object v5, p4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz v5, :cond_0

    new-instance p4, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;

    iget-object v3, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    iget-object v6, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->f:Ljava/lang/String;

    iget-object p2, p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v7, p2, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    iget-object v8, p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, v2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)V

    invoke-interface {p0, p4}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    :cond_0
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    check-cast p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-object v5, p4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz v5, :cond_1

    new-instance p4, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;

    iget-object v3, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    iget-object v6, p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->f:Ljava/lang/String;

    iget-object p2, p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-object v7, p2, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    iget-object v8, p3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p4, v2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)V

    invoke-interface {p0, p4}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    :cond_1
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

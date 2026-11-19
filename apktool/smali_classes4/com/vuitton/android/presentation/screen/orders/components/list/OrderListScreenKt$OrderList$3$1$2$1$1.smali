.class final Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;",
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;",
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


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;->b:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;->c:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;->b:Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$3$1$2$1$1;->c:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    invoke-interface {v0, p0, p1, p2}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

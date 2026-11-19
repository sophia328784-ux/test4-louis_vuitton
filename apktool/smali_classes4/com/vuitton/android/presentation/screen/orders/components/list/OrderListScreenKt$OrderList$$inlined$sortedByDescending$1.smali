.class public final Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt$OrderList$$inlined$sortedByDescending$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object p0, p2, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    invoke-static {p0, p1}, Lkotlin/comparisons/ComparisonsKt;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method

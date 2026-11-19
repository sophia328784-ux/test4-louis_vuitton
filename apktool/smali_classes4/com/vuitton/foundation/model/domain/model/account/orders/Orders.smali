.class public final Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;",
        "history",
        "ongoing",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

.field public final b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orders(history="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ongoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

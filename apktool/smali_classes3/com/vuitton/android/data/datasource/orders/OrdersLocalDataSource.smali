.class public final Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;",
        "",
        "<init>",
        "()V",
        "data"
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
.field public a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

.field public b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

.field public c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Result;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->a:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    :goto_2
    return-object v1
.end method

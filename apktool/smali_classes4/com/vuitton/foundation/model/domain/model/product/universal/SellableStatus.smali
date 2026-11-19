.class public abstract Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;,
        Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;",
        "",
        "Sellable",
        "NotSellable",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;",
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


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    if-eqz v1, :cond_3

    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    if-eqz v1, :cond_2

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    instance-of v1, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    if-eqz v1, :cond_4

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    invoke-static {}, Lv40;->g()V

    return v2
.end method

.method public final hashCode()I
    .locals 1

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->hashCode()I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return p0
.end method

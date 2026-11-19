.class public final Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;
.super Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotSellable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;",
        "reason",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;

    return-void
.end method

.class public abstract Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$NotSellable;,
        Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;,
        Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;,
        Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "NotSellable",
        "Skip",
        "OutOfStock",
        "Unknown",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$NotSellable;",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;",
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
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;->b:Ljava/lang/String;

    return-object p0
.end method

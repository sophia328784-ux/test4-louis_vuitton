.class public abstract Lcom/vuitton/foundation/model/domain/error/cart/CartError;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002\u0082\u0001\u0006\u0003\u0004\u0005\u0006\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/error/cart/CartError;",
        "Ljava/lang/Error;",
        "Lkotlin/Error;",
        "Lcom/vuitton/foundation/model/domain/error/cart/Empty;",
        "Lcom/vuitton/foundation/model/domain/error/cart/GenericCartError;",
        "Lcom/vuitton/foundation/model/domain/error/cart/MaxPersonalizationQuantityReached;",
        "Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;",
        "Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;",
        "Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/error/cart/CartError;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/error/cart/CartError;->b:Ljava/lang/String;

    return-object p0
.end method

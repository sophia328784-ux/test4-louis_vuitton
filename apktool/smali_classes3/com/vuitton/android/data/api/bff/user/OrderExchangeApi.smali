.class public interface abstract Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;",
        "",
        "getExchangeVariations",
        "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;",
        "sku",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "price",
        "",
        "priceWithoutVAT",
        "getExchangeVariations-1cKmzHo",
        "(Ljava/lang/String;DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract getExchangeVariations-1cKmzHo(Ljava/lang/String;DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "sku"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "price"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "priceWithoutVAT"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "product/exchange/variations/{sku}"
    .end annotation
.end method

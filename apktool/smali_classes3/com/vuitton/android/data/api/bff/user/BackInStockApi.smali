.class public interface abstract Lcom/vuitton/android/data/api/bff/user/BackInStockApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/BackInStockApi;",
        "",
        "subscribe",
        "",
        "subscribeDto",
        "Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;",
        "(Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unsubscribe",
        "unsubscribeDto",
        "Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;",
        "(Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract subscribe(Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "products/subscribe"
    .end annotation
.end method

.method public abstract unsubscribe(Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/product/availability/BackInStockUnsubscribeDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "products/unsubscribe"
    .end annotation
.end method

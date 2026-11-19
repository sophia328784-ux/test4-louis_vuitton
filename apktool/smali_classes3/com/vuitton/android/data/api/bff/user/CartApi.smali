.class public interface abstract Lcom/vuitton/android/data/api/bff/user/CartApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\tH\u00a7@\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\u000cH\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\r\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\u00a7@\u00a2\u0006\u0002\u0010\u0010J\"\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\u00a7@\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u0016H\u00a7@\u00a2\u0006\u0002\u0010\u0004J.\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0001\u0010\u0019\u001a\u00020\t2\n\u0008\u0003\u0010\u001a\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\u001cH\u00a7@\u00a2\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0001\u0010 \u001a\u00020!H\u00a7@\u00a2\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\u000c2\u0008\u0008\u0001\u0010$\u001a\u00020%H\u00a7@\u00a2\u0006\u0002\u0010&J\u000e\u0010\'\u001a\u00020(H\u00a7@\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010)\u001a\u00020\u000c2\u0008\u0008\u0001\u0010*\u001a\u00020+H\u00a7@\u00a2\u0006\u0002\u0010,\u00a8\u0006-\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/CartApi;",
        "",
        "getCart",
        "Lcom/vuitton/android/data/dto/cart/bff/CartDto;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCartCount",
        "Lcom/vuitton/android/data/dto/cart/bff/CartCountDto;",
        "removeItemFromCart",
        "itemId",
        "",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "resetCartContainer",
        "",
        "updateCart",
        "cartUpdate",
        "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;",
        "(Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateItemQuantity",
        "quantity",
        "Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "prepareOrder",
        "Lcom/vuitton/android/data/dto/cart/bff/PrepareOrderDto;",
        "addToCart",
        "Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;",
        "skus",
        "sotToken",
        "addToCartDto",
        "Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setupExchange",
        "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;",
        "exchangeSetup",
        "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;",
        "(Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "submitSelfExchange",
        "exchangeRequestDto",
        "Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;",
        "(Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getConfirmationDetails",
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;",
        "sendCheckoutSurvey",
        "survey",
        "Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;",
        "(Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract addToCart(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "skus"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "sot_token"
        .end annotation
    .end param
    .param p3    # Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "v2/cart/add/{skus}"
    .end annotation
.end method

.method public abstract getCart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/CartDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cart"
    .end annotation
.end method

.method public abstract getCartCount(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/CartCountDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cart/count"
    .end annotation
.end method

.method public abstract getConfirmationDetails(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cart/checkout/confirmation-details"
    .end annotation
.end method

.method public abstract prepareOrder(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/PrepareOrderDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "cart/prepare-order"
    .end annotation
.end method

.method public abstract removeItemFromCart(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "item_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/CartDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "cart/items/{item_id}"
    .end annotation
.end method

.method public abstract resetCartContainer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "cart/reset-container"
    .end annotation
.end method

.method public abstract sendCheckoutSurvey(Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cart/checkout/survey"
    .end annotation
.end method

.method public abstract setupExchange(Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cart/self-exchange/setup"
    .end annotation
.end method

.method public abstract submitSelfExchange(Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/account/orders/ExchangeRequestDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "cart/self-exchange/submit"
    .end annotation
.end method

.method public abstract updateCart(Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/CartDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "cart"
    .end annotation
.end method

.method public abstract updateItemQuantity(Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "item_id"
        .end annotation
    .end param
    .param p2    # Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/cart/bff/ItemQuantityDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/cart/bff/CartDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "cart/items/{item_id}"
    .end annotation
.end method

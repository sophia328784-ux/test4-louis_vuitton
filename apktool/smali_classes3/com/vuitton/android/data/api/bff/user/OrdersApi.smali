.class public interface abstract Lcom/vuitton/android/data/api/bff/user/OrdersApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u00a7@\u00a2\u0006\u0002\u0010\nJ\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0003H\u00a7@\u00a2\u0006\u0002\u0010\nJ\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0003H\u00a7@\u00a2\u0006\u0002\u0010\nJ\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u00a7@\u00a2\u0006\u0002\u0010\nJ$\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00032\u000e\u0008\u0001\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0010H\u00a7@\u00a2\u0006\u0002\u0010\u0016\u00a8\u0006\u0017\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/OrdersApi;",
        "",
        "getInvoice",
        "Lretrofit2/Response;",
        "Lokhttp3/ResponseBody;",
        "invoiceDto",
        "Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;",
        "(Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPurchaseHistory",
        "Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPurchaseHistoryPersonalization",
        "Lcom/vuitton/android/data/dto/account/orders/PersonalizationDtoResponse;",
        "getPurchaseOngoing",
        "Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;",
        "getReturnReasons",
        "",
        "Lcom/vuitton/android/data/dto/account/orders/OrderReturnReasonDto;",
        "confirmReturn",
        "Lcom/vuitton/android/data/dto/account/orders/OrderReturnDtoResponse;",
        "orderReturnDto",
        "Lcom/vuitton/android/data/dto/account/orders/OrderReturnItemDto;",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract confirmReturn(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/account/orders/OrderReturnItemDto;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/account/orders/OrderReturnDtoResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "orders/return"
    .end annotation
.end method

.method public abstract getInvoice(Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v2/orders/invoice"
    .end annotation
.end method

.method public abstract getPurchaseHistory(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/orders/history"
    .end annotation
.end method

.method public abstract getPurchaseHistoryPersonalization(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/account/orders/PersonalizationDtoResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/orders/history/personalization"
    .end annotation
.end method

.method public abstract getPurchaseOngoing(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v3/orders/on-going"
    .end annotation
.end method

.method public abstract getReturnReasons(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/account/orders/OrderReturnReasonDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "orders/return-reasons"
    .end annotation
.end method

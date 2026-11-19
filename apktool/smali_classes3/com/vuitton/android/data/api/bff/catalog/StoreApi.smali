.class public interface abstract Lcom/vuitton/android/data/api/bff/catalog/StoreApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001JT\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0001\u0010\t\u001a\u00020\u00072\u0008\u0008\u0001\u0010\n\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\rJV\u0010\u000e\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0001\u0010\t\u001a\u00020\u00072\u0008\u0008\u0001\u0010\n\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007H\u00a7@\u00a2\u0006\u0002\u0010\rJ\u001e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/catalog/StoreApi;",
        "",
        "searchStoresForProduct",
        "Lcom/vuitton/android/data/dto/storelocator/StoreListDto;",
        "skuId",
        "",
        "latitudeCenter",
        "",
        "longitudeCenter",
        "latitudeA",
        "longitudeA",
        "latitudeB",
        "longitudeB",
        "(Ljava/lang/String;DDDDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "searchStoresForAppointment",
        "getStoreListByCodes",
        "",
        "Lcom/vuitton/android/data/dto/storelocator/StoreDto;",
        "codes",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract getStoreListByCodes(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "stores"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/storelocator/StoreDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "stores"
    .end annotation
.end method

.method public abstract searchStoresForAppointment(Ljava/lang/String;DDDDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "skuId"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "latitudeCenter"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "longitudeCenter"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "latitudeA"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "longitudeA"
        .end annotation
    .end param
    .param p10    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "latitudeB"
        .end annotation
    .end param
    .param p12    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "longitudeB"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDDD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/storelocator/StoreListDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "store/search"
    .end annotation
.end method

.method public abstract searchStoresForProduct(Ljava/lang/String;DDDDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "skuId"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "latitudeCenter"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "longitudeCenter"
        .end annotation
    .end param
    .param p6    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "latitudeA"
        .end annotation
    .end param
    .param p8    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "longitudeA"
        .end annotation
    .end param
    .param p10    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "latitudeB"
        .end annotation
    .end param
    .param p12    # D
        .annotation runtime Lretrofit2/http/Query;
            value = "longitudeB"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDDD",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/storelocator/StoreListDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "store/search"
    .end annotation
.end method

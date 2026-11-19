.class final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;",
        "atgSession",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1"
    f = "CatalogRepositoryImpl.kt"
    l = {
        0x116
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->d:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->d:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->e:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->d:Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    iget-object p1, p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;

    iput-object v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;->e:Ljava/lang/String;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p0
.end method

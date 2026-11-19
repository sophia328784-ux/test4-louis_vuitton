.class public final Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;",
        "",
        "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;",
        "productApi",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;->a:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;-><init>(Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1;

    invoke-direct {p2, p0, p1, v4}, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$2$1;-><init>(Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource$getProductAvailability$1;->d:I

    const-wide/16 p0, 0x2710

    invoke-static {p0, p1, p2, v0}, Lkotlinx/coroutines/TimeoutKt;->b(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

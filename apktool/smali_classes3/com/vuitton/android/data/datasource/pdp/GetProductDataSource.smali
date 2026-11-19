.class public final Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;",
        "",
        "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;",
        "productApi",
        "Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;",
        "getExclusiveApi",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;)V",
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

.field public final b:Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;->a:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;->b:Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p6, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;

    invoke-direct {v0, p0, p6}, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;-><init>(Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p6, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    :try_start_1
    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p6}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    if-eqz p2, :cond_6

    iput v4, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;->b:Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    if-nez p4, :cond_4

    move-object p4, v5

    :cond_4
    invoke-interface {p0, p1, p4, v0}, Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;->getPdpExclusive-SIrPwJI(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p6, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    goto :goto_5

    :cond_6
    iput v3, v0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource$getProduct$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;->a:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    if-eqz p5, :cond_7

    iget-object p2, p5, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->a:Ljava/lang/String;

    goto :goto_2

    :cond_7
    move-object p2, v5

    :goto_2
    if-eqz p5, :cond_8

    iget-object p4, p5, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;->a()Ljava/lang/String;

    move-result-object v5

    :cond_8
    move-object p4, p3

    move-object p3, p2

    move-object p2, p4

    move-object p5, v0

    move-object p4, v5

    invoke-interface/range {p0 .. p5}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getProductDetail-YQ596nM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    :goto_4
    check-cast p6, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    :goto_5
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p6}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_b

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_b
    throw p1
.end method

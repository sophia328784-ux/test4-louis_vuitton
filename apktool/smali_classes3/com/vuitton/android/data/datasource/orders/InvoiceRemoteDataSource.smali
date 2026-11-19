.class public final Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;",
        "",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "dispatchers",
        "Lcom/vuitton/android/data/api/bff/user/OrdersApi;",
        "ordersApi",
        "Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;",
        "ordersLegacyApi",
        "Lcom/vuitton/android/core/file/FileStorageProvider;",
        "fileStorageProvider",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;Lcom/vuitton/android/core/file/FileStorageProvider;)V",
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
.field public final a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final b:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

.field public final c:Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;

.field public final d:Lcom/vuitton/android/core/file/FileStorageProvider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;Lcom/vuitton/android/core/file/FileStorageProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->b:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->c:Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->d:Lcom/vuitton/android/core/file/FileStorageProvider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;-><init>(Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p4, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p4}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p4

    new-instance v4, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;

    const/4 v9, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v5, p3

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;-><init>(ZLcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$1;->d:I

    invoke-static {p4, v4, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/vuitton/android/core/type/FileLocation;

    iget-object p0, p4, Lcom/vuitton/android/core/type/FileLocation;->a:Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/core/type/FileLocation;

    invoke-direct {p1, p0}, Lcom/vuitton/android/core/type/FileLocation;-><init>(Ljava/lang/String;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p1
.end method

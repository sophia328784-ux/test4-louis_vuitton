.class final Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/core/type/FileLocation;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/core/type/FileLocation;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.data.datasource.orders.InvoiceRemoteDataSource$downloadInvoice$2$1"
    f = "InvoiceRemoteDataSource.kt"
    l = {
        0x1d,
        0x1f,
        0x2a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->d:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;

    iget-object v3, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->f:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->c:Z

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->d:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;-><init>(ZLcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->d:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/android/core/type/FileLocation;

    iget-object p0, p1, Lcom/vuitton/android/core/type/FileLocation;->a:Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->c:Z

    const-string v1, "https://"

    const/4 v7, 0x0

    const-string v8, "http://"

    iget-object v9, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->e:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, v3, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->b:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    new-instance v5, Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v8, v7}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v9, v8, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_4
    invoke-direct {v5, v9}, Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;-><init>(Ljava/lang/String;)V

    iput v6, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->b:I

    invoke-interface {p1, v5, p0}, Lcom/vuitton/android/data/api/bff/user/OrdersApi;->getInvoice(Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_0
    check-cast p1, Lretrofit2/Response;

    goto :goto_2

    :cond_6
    iget-object p1, v3, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->c:Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;

    new-instance v6, Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v8, v7}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v9, v8, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_7
    invoke-direct {v6, v9}, Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;-><init>(Ljava/lang/String;)V

    iput v5, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->b:I

    invoke-interface {p1, v6, p0}, Lcom/vuitton/android/data/api/bff/user/OrdersLegacyApi;->getInvoice(Lcom/vuitton/android/data/dto/account/orders/InvoiceDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_1
    check-cast p1, Lretrofit2/Response;

    :goto_2
    iget-object v1, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v5, v1, Lokhttp3/Response;->r:Z

    if-eqz v5, :cond_b

    iget-object p1, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p1, Lokhttp3/ResponseBody;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v1, "Invoice "

    const-string v2, ".pdf"

    iget-object v5, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->f:Ljava/lang/String;

    invoke-static {v1, v5, v2}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->d:Lcom/vuitton/android/core/file/FileStorageProvider;

    iput v4, p0, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource$downloadInvoice$2$1;->b:I

    invoke-interface {v2, p1, v1, p0}, Lcom/vuitton/android/core/file/FileStorageProvider;->a(Ljava/io/InputStream;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_3
    return-object v0

    :cond_9
    :goto_4
    check-cast p0, Ljava/lang/String;

    new-instance p1, Lcom/vuitton/android/core/type/FileLocation;

    invoke-direct {p1, p0}, Lcom/vuitton/android/core/type/FileLocation;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_a
    const-string p0, "Error loading an order invoice: empty body"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    iget p1, v1, Lokhttp3/Response;->e:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error loading an order invoice: HTTP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

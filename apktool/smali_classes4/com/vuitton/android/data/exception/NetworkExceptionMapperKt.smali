.class public abstract Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 5

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    instance-of p0, v0, Lcom/vuitton/foundation/exception/NetworkException;

    if-eqz p0, :cond_0

    check-cast v0, Lcom/vuitton/foundation/exception/NetworkException;

    goto/16 :goto_3

    :cond_0
    instance-of p0, v0, Lretrofit2/HttpException;

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    move-object p0, v0

    check-cast p0, Lretrofit2/HttpException;

    iget-object v2, p0, Lretrofit2/HttpException;->c:Ljava/lang/String;

    iget v3, p0, Lretrofit2/HttpException;->b:I

    const/16 v4, 0x191

    if-eq v3, v4, :cond_9

    const/16 v4, 0x194

    if-eq v3, v4, :cond_8

    const/16 v4, 0x1ad

    if-eq v3, v4, :cond_7

    const/16 v4, 0x1f7

    if-eq v3, v4, :cond_6

    iget-object p0, p0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    :cond_1
    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    :try_start_0
    check-cast v0, Lretrofit2/HttpException;

    iget p0, v0, Lretrofit2/HttpException;->b:I

    new-instance v0, Lcom/vuitton/android/data/exception/HttpStatusCode;

    invoke-direct {v0, p0}, Lcom/vuitton/android/data/exception/HttpStatusCode;-><init>(I)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/exception/HttpResponseBody;

    invoke-direct {v1, p0}, Lcom/vuitton/android/data/exception/HttpResponseBody;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/exception/NetworkException$CustomException;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_1
    check-cast p1, Lkotlin/Result;

    new-instance p0, Lcom/vuitton/foundation/exception/NetworkException$Unknown;

    invoke-direct {p0, v2}, Lcom/vuitton/foundation/exception/NetworkException$Unknown;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p0, p1

    :goto_2
    move-object v0, p0

    check-cast v0, Lcom/vuitton/foundation/exception/NetworkException;

    goto :goto_3

    :cond_4
    throw p0

    :cond_5
    new-instance v0, Lcom/vuitton/foundation/exception/NetworkException$Unknown;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/exception/NetworkException$Unknown;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/vuitton/foundation/exception/NetworkException$NotFound;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/exception/NetworkException$NotFound;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v0, Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    instance-of p0, v0, Ljava/io/IOException;

    if-eqz p0, :cond_b

    new-instance v0, Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0, v1}, Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_b
    new-instance p0, Lcom/vuitton/foundation/exception/NetworkException$Unknown;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/exception/NetworkException$Unknown;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    :goto_3
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :cond_c
    return-object p0
.end method

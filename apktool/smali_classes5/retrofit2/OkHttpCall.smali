.class final Lretrofit2/OkHttpCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;,
        Lretrofit2/OkHttpCall$NoContentResponseBody;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lretrofit2/RequestFactory;

.field public final c:Ljava/lang/Object;

.field public final d:[Ljava/lang/Object;

.field public final e:Lokhttp3/Call$Factory;

.field public final f:Lretrofit2/Converter;

.field public volatile g:Z

.field public h:Lokhttp3/Call;

.field public i:Ljava/lang/Throwable;

.field public j:Z


# direct methods
.method public constructor <init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/OkHttpCall;->b:Lretrofit2/RequestFactory;

    iput-object p2, p0, Lretrofit2/OkHttpCall;->c:Ljava/lang/Object;

    iput-object p3, p0, Lretrofit2/OkHttpCall;->d:[Ljava/lang/Object;

    iput-object p4, p0, Lretrofit2/OkHttpCall;->e:Lokhttp3/Call$Factory;

    iput-object p5, p0, Lretrofit2/OkHttpCall;->f:Lretrofit2/Converter;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/Call;
    .locals 15

    iget-object v0, p0, Lretrofit2/OkHttpCall;->b:Lretrofit2/RequestFactory;

    iget-object v1, v0, Lretrofit2/RequestFactory;->k:[Lretrofit2/ParameterHandler;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->d:[Ljava/lang/Object;

    array-length v3, v2

    array-length v4, v1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_9

    new-instance v6, Lretrofit2/RequestBuilder;

    iget-object v7, v0, Lretrofit2/RequestFactory;->d:Ljava/lang/String;

    iget-object v8, v0, Lretrofit2/RequestFactory;->c:Lokhttp3/HttpUrl;

    iget-object v9, v0, Lretrofit2/RequestFactory;->e:Ljava/lang/String;

    iget-object v10, v0, Lretrofit2/RequestFactory;->f:Lokhttp3/Headers;

    iget-object v11, v0, Lretrofit2/RequestFactory;->g:Lokhttp3/MediaType;

    iget-boolean v12, v0, Lretrofit2/RequestFactory;->h:Z

    iget-boolean v13, v0, Lretrofit2/RequestFactory;->i:Z

    iget-boolean v14, v0, Lretrofit2/RequestFactory;->j:Z

    invoke-direct/range {v6 .. v14}, Lretrofit2/RequestBuilder;-><init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V

    iget-boolean v4, v0, Lretrofit2/RequestFactory;->l:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v3, :cond_1

    aget-object v9, v2, v8

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v9, v1, v8

    aget-object v10, v2, v8

    invoke-virtual {v9, v6, v10}, Lretrofit2/ParameterHandler;->a(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lretrofit2/RequestBuilder;->d:Lokhttp3/HttpUrl$Builder;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, v6, Lretrofit2/RequestBuilder;->c:Ljava/lang/String;

    iget-object v2, v6, Lretrofit2/RequestBuilder;->b:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v1}, Lokhttp3/HttpUrl;->i(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    if-eqz v1, :cond_8

    :goto_1
    iget-object v2, v6, Lretrofit2/RequestBuilder;->k:Lokhttp3/RequestBody;

    if-nez v2, :cond_5

    iget-object v3, v6, Lretrofit2/RequestBuilder;->j:Lokhttp3/FormBody$Builder;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lokhttp3/FormBody$Builder;->b()Lokhttp3/FormBody;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v3, v6, Lretrofit2/RequestBuilder;->i:Lokhttp3/MultipartBody$Builder;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->b()Lokhttp3/MultipartBody;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-boolean v3, v6, Lretrofit2/RequestBuilder;->h:Z

    if-eqz v3, :cond_5

    new-array v2, v7, [B

    sget-object v3, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v5, v2}, Lokhttp3/RequestBody$Companion;->a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v2

    :cond_5
    :goto_2
    iget-object v3, v6, Lretrofit2/RequestBuilder;->g:Lokhttp3/MediaType;

    iget-object v5, v6, Lretrofit2/RequestBuilder;->f:Lokhttp3/Headers$Builder;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_6

    new-instance v7, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v7, v2, v3}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V

    move-object v2, v7

    goto :goto_3

    :cond_6
    const-string v7, "Content-Type"

    iget-object v3, v3, Lokhttp3/MediaType;->a:Ljava/lang/String;

    invoke-virtual {v5, v7, v3}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v3, v6, Lretrofit2/RequestBuilder;->e:Lokhttp3/Request$Builder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v3, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v5}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Headers;->h()Lokhttp3/Headers$Builder;

    move-result-object v1

    iput-object v1, v3, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    iget-object v1, v6, Lretrofit2/RequestBuilder;->a:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    new-instance v1, Lretrofit2/Invocation;

    iget-object v2, v0, Lretrofit2/RequestFactory;->a:Ljava/lang/Class;

    iget-object v0, v0, Lretrofit2/RequestFactory;->b:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lretrofit2/OkHttpCall;->c:Ljava/lang/Object;

    invoke-direct {v1, v2, v5, v0, v4}, Lretrofit2/Invocation;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/util/ArrayList;)V

    const-class v0, Lretrofit2/Invocation;

    invoke-virtual {v3, v0, v1}, Lokhttp3/Request$Builder;->d(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lokhttp3/Request;

    invoke-direct {v0, v3}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    iget-object p0, p0, Lretrofit2/OkHttpCall;->e:Lokhttp3/Call$Factory;

    invoke-interface {p0, v0}, Lokhttp3/Call$Factory;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Malformed URL. Base: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Relative: "

    iget-object v1, v6, Lretrofit2/RequestBuilder;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lb21;->w(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_9
    const-string p0, "Argument count ("

    const-string v0, ") doesn\'t match expected count ("

    invoke-static {v3, p0, v0}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length v0, v1

    const-string v1, ")"

    invoke-static {v0, v1, p0}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v5
.end method

.method public final b()Lokhttp3/Call;
    .locals 1

    iget-object v0, p0, Lretrofit2/OkHttpCall;->h:Lokhttp3/Call;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    instance-of p0, v0, Ljava/io/IOException;

    if-nez p0, :cond_2

    instance-of p0, v0, Ljava/lang/RuntimeException;

    if-eqz p0, :cond_1

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_2
    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->a()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/OkHttpCall;->h:Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lretrofit2/Utils;->m(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lretrofit2/OkHttpCall;->i:Ljava/lang/Throwable;

    throw v0
.end method

.method public final c(Lokhttp3/Response;)Lretrofit2/Response;
    .locals 7

    iget-object v0, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1, p1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    new-instance p1, Lretrofit2/OkHttpCall$NoContentResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-direct {p1, v2, v3, v4}, Lretrofit2/OkHttpCall$NoContentResponseBody;-><init>(Lokhttp3/MediaType;J)V

    iput-object p1, v1, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p1

    iget-boolean v1, p1, Lokhttp3/Response;->r:Z

    iget v2, p1, Lokhttp3/Response;->e:I

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-lt v2, v3, :cond_6

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0xcc

    const-string v5, "rawResponse must be successful response"

    if-eq v2, v3, :cond_4

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;

    invoke-direct {v2, v0}, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;-><init>(Lokhttp3/ResponseBody;)V

    :try_start_0
    iget-object p0, p0, Lretrofit2/OkHttpCall;->f:Lretrofit2/Converter;

    invoke-interface {p0, v2}, Lretrofit2/Converter;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz v1, :cond_2

    new-instance v0, Lretrofit2/Response;

    invoke-direct {v0, p1, p0, v4}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    iget-object p1, v2, Lretrofit2/OkHttpCall$ExceptionCatchingResponseBody;->h:Ljava/io/IOException;

    if-nez p1, :cond_3

    throw p0

    :cond_3
    throw p1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    if-eqz v1, :cond_5

    new-instance p0, Lretrofit2/Response;

    invoke-direct {p0, p1, v4, v4}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V

    return-object p0

    :cond_5
    invoke-static {v5}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_6
    :goto_1
    :try_start_1
    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-interface {v2, p0}, Lokio/BufferedSource;->N1(Lokio/BufferedSink;)J

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    invoke-static {v2, v5, v6, p0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object p0

    const-string v2, "body == null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez v1, :cond_7

    new-instance v1, Lretrofit2/Response;

    invoke-direct {v1, p1, v4, p0}, Lretrofit2/Response;-><init>(Lokhttp3/Response;Ljava/lang/Object;Lokhttp3/ResponseBody;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-object v1

    :cond_7
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    throw p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->g:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->h:Lokhttp3/Call;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v4, p0, Lretrofit2/OkHttpCall;->e:Lokhttp3/Call$Factory;

    iget-object v5, p0, Lretrofit2/OkHttpCall;->f:Lretrofit2/Converter;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->b:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->c:Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->d:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public final clone()Lretrofit2/Call;
    .locals 6

    .line 16
    new-instance v0, Lretrofit2/OkHttpCall;

    iget-object v4, p0, Lretrofit2/OkHttpCall;->e:Lokhttp3/Call$Factory;

    iget-object v5, p0, Lretrofit2/OkHttpCall;->f:Lretrofit2/Converter;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->b:Lretrofit2/RequestFactory;

    iget-object v2, p0, Lretrofit2/OkHttpCall;->c:Ljava/lang/Object;

    iget-object v3, p0, Lretrofit2/OkHttpCall;->d:[Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lretrofit2/OkHttpCall;-><init>(Lretrofit2/RequestFactory;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    return-object v0
.end method

.method public final execute()Lretrofit2/Response;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->j:Z

    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->b()Lokhttp3/Call;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->g:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    invoke-static {v0}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/OkHttpCall;->c(Lokhttp3/Response;)Lretrofit2/Response;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isCanceled()Z
    .locals 2

    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lretrofit2/OkHttpCall;->h:Lokhttp3/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final p(Lretrofit2/Callback;)V
    .locals 3

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit2/OkHttpCall;->j:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/OkHttpCall;->j:Z

    iget-object v0, p0, Lretrofit2/OkHttpCall;->h:Lokhttp3/Call;

    iget-object v1, p0, Lretrofit2/OkHttpCall;->i:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->a()Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lretrofit2/OkHttpCall;->h:Lokhttp3/Call;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lretrofit2/Utils;->m(Ljava/lang/Throwable;)V

    iput-object v1, p0, Lretrofit2/OkHttpCall;->i:Ljava/lang/Throwable;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    invoke-interface {p1, p0, v1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lretrofit2/OkHttpCall;->g:Z

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_2
    new-instance v1, Lretrofit2/OkHttpCall$1;

    invoke-direct {v1, p0, p1}, Lretrofit2/OkHttpCall$1;-><init>(Lretrofit2/OkHttpCall;Lretrofit2/Callback;)V

    invoke-static {v0, v1}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void

    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final declared-synchronized request()Lokhttp3/Request;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lretrofit2/OkHttpCall;->b()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

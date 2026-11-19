.class public Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;,
        Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;
    }
.end annotation


# instance fields
.field public final JSON:Lokhttp3/MediaType;

.field private final MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

.field protected mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/json; charset=utf-8"

    sget-object v1, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->JSON:Lokhttp3/MediaType;

    const-string v0, "application/octet-stream"

    :try_start_1
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-object v1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->c(J)V

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->d(J)V

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->b(J)V

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    iput-object v1, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->parseResponse(Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendSuccessCallBack(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->isSuccessful(I)Z

    move-result p0

    return p0
.end method

.method private buildDelRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    :try_start_0
    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    sget-object p1, Lokhttp3/RequestBody;->b:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    const-string p2, "DELETE"

    invoke-virtual {p0, p2, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private buildGetRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    :try_start_0
    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private buildPostRequest(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 85
    new-instance p0, Lokhttp3/FormBody$Builder;

    invoke-direct {p0}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    .line 87
    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->b()Lokhttp3/FormBody;

    move-result-object p0

    .line 89
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 90
    const-string p1, "POST"

    invoke-virtual {p2, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 91
    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, p2}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0
.end method

.method private buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 92
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    .line 94
    :try_start_0
    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 96
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->c(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p2

    .line 97
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 98
    const-string p1, "POST"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 99
    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    :try_start_0
    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->b()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    const-string p1, "POST"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 85
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    .line 87
    :try_start_0
    iget-object v2, v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

    sget-object p2, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    new-instance p2, Lokhttp3/RequestBody$Companion$asRequestBody$1;

    invoke-direct {p2, p0, p3}, Lokhttp3/RequestBody$Companion$asRequestBody$1;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V

    .line 92
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 93
    const-string p0, "PUT"

    invoke-virtual {v0, p0, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 94
    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0
.end method

.method private buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 95
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 96
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    .line 97
    :try_start_0
    iget-object v2, v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v1, v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->JSON:Lokhttp3/MediaType;

    invoke-static {p3, p0}, Lokhttp3/RequestBody;->c(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p0

    .line 100
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 101
    const-string p1, "PUT"

    invoke-virtual {v0, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 102
    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0
.end method

.method private buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    :try_start_0
    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    new-instance p2, Lokhttp3/FormBody$Builder;

    invoke-direct {p2}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lokhttp3/FormBody$Builder;->b()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    const-string p1, "PUT"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private getExecuteRequest(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->parseResponse(Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private isSuccessful(I)Z
    .locals 0

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_0

    const/16 p0, 0x12c

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private parseResponse(Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;-><init>()V

    :try_start_0
    iget-object v0, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->bytes:[B

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->body:Ljava/lang/String;

    iget-object v0, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->headers:Lokhttp3/Headers;

    iget v0, p1, Lokhttp3/Response;->e:I

    iput v0, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->code:I

    iget-object p1, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    iget-object p1, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object p1, p1, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;->body:Ljava/lang/String;

    return-object p0
.end method

.method private postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 43
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 44
    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 45
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 46
    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$6;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private putRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$7;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$7;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private putRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 40
    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 41
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 42
    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$11;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$11;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private putRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 35
    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 36
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 37
    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$10;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$10;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$12;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendSuccessCallBack(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$13;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public delRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    sget-object p1, Lokhttp3/RequestBody;->b:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$8;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$8;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, v0}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public delRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildDelRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    .line 39
    invoke-static {p3, p3, p1, v0}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 40
    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$9;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$9;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->delRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public delete(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p2, p3, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->delRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->getRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->getRequest(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public getExecute(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->getExecuteRequest(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p0

    return-object p0
.end method

.method public getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public getRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 2

    .line 33
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 35
    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$2;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$2;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, v0}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public getRequest(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildGetRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "okhttp Request is nullponter"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    invoke-static {p2, p2, p1, v0}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance p2, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$1;

    invoke-direct {p2, p0, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$1;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public postExecute(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->postExecuteRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p0

    return-object p0
.end method

.method public postExecuteRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)",
            "Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->parseResponse(Lokhttp3/Response;)Lcom/linkplay/lpmdpkit/okhttp/OkHttpResponseItem;

    move-result-object p0

    return-object p0
.end method

.method public postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    invoke-static {p3, p3, p1, v0}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$3;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$3;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public postRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 35
    :cond_0
    iget-object p3, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 36
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 37
    new-instance p3, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$4;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$4;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public postRequest(Lokhttp3/Request;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V
    .locals 2

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "okhttp Request is nullponter"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$5;-><init>(Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, v0}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

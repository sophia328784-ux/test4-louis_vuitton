.class public Lcom/linkplay/network/HttpRequestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/network/HttpRequestUtils$ResultCallback;,
        Lcom/linkplay/network/HttpRequestUtils$Param;
    }
.end annotation


# static fields
.field public static final COMMAND_URL:Ljava/lang/String; = "/httpapi.asp?command="

.field public static final JSON:Lokhttp3/MediaType;

.field private static final MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;


# instance fields
.field protected mOkHttpClient:Lokhttp3/OkHttpClient;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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
    sput-object v0, Lcom/linkplay/network/HttpRequestUtils;->JSON:Lokhttp3/MediaType;

    const-string v0, "application/octet-stream"

    :try_start_1
    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v1, Lcom/linkplay/network/HttpRequestUtils;->MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getReadTimeOut()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->c(J)V

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getWriteTimeOut()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->d(J)V

    invoke-static {}, Lcom/linkplay/network/OkHttpDataUtil;->getConnectTimeOut()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->b(J)V

    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    iput-object v1, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/linkplay/network/HttpRequestUtils;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/linkplay/network/HttpRequestUtils;Lokhttp3/Response;)Lcom/linkplay/network/OkHttpResponseItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/network/HttpRequestUtils;->parseResponse(Lokhttp3/Response;)Lcom/linkplay/network/OkHttpResponseItem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method private buildDelRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
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

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

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
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
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

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

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
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 80
    new-instance p0, Lokhttp3/FormBody$Builder;

    invoke-direct {p0}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    .line 82
    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/FormBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lokhttp3/FormBody$Builder;->b()Lokhttp3/FormBody;

    move-result-object p0

    .line 84
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 85
    const-string p1, "POST"

    invoke-virtual {p2, p1, p0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 86
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
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 87
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    .line 89
    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 90
    invoke-static {p3, p2}, Lokhttp3/RequestBody;->c(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p2

    .line 91
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 92
    const-string p1, "POST"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 93
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
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
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

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 80
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    .line 82
    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    sget-object p2, Lcom/linkplay/network/HttpRequestUtils;->MEDIA_OBJECT_STREAM:Lokhttp3/MediaType;

    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    new-instance v0, Lokhttp3/RequestBody$Companion$asRequestBody$1;

    invoke-direct {v0, p2, p3}, Lokhttp3/RequestBody$Companion$asRequestBody$1;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V

    .line 86
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 87
    const-string p1, "PUT"

    invoke-virtual {p0, p1, v0}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 88
    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lokhttp3/Request;"
        }
    .end annotation

    .line 89
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0}, Lokhttp3/Request$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 90
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    .line 91
    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object p2, Lcom/linkplay/network/HttpRequestUtils;->JSON:Lokhttp3/MediaType;

    invoke-static {p3, p2}, Lokhttp3/RequestBody;->c(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p2

    .line 93
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 94
    const-string p1, "PUT"

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    .line 95
    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p1
.end method

.method private buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
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

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    check-cast v0, Lcom/linkplay/network/HttpRequestUtils$Param;

    iget-object v1, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/linkplay/network/HttpRequestUtils$Param;->value:Ljava/lang/String;

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

.method public static bridge synthetic c(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/network/HttpRequestUtils;->sendSuccessCallBack(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Lcom/linkplay/network/OkHttpResponseItem;)V

    return-void
.end method

.method private delRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    sget-object p1, Lokhttp3/RequestBody;->b:Lokhttp3/RequestBody$Companion$toRequestBody$1;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    iget-object v0, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance v0, Lcom/linkplay/network/HttpRequestUtils$7;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$7;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, v0}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private delRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p3}, Lcom/linkplay/network/HttpRequestUtils;->buildDelRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    .line 39
    invoke-static {p3, p3, p1, v0}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 40
    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$8;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$8;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private getExecuteRequest(Ljava/lang/String;)Lcom/linkplay/network/OkHttpResponseItem;
    .locals 2

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    iget-object v0, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkplay/network/HttpRequestUtils;->parseResponse(Lokhttp3/Response;)Lcom/linkplay/network/OkHttpResponseItem;

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

.method private getRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 2

    .line 33
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->e(Ljava/lang/String;)V

    .line 34
    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 35
    iget-object v0, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v0, p1, v1}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/linkplay/network/HttpRequestUtils$2;

    invoke-direct {v0, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$2;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, v0}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private getRequest(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->buildGetRequestHeader(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "okhttp Request is nullponter"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    invoke-static {p2, p2, p1, v0}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance p2, Lcom/linkplay/network/HttpRequestUtils$1;

    invoke-direct {p2, p0, p3}, Lcom/linkplay/network/HttpRequestUtils$1;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p2}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method public static getRequestPrefix(Lcom/linkplay/request/RequestItem;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/linkplay/request/RequestItem;->getSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->isEncryptedFirmware(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "/httpapi.asp?command="

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/request/RequestItem;->getIp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/linkplay/request/RequestItem;->getIp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRequestUtils(Lcom/linkplay/request/RequestItem;)Lcom/linkplay/network/HttpRequestUtils;
    .locals 1

    invoke-virtual {p0}, Lcom/linkplay/request/RequestItem;->getSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/network/HttpRequestUtils;->isEncryptedFirmware(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/linkplay/request/RequestItem;->getSecurity()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/network/HttpRequestUtils;->isHttpsEncrypted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/linkplay/network/EncryptedOkHttp;->getInstance()Lcom/linkplay/network/EncryptedOkHttp;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/linkplay/network/EncryptedNewOkHttp;->getInstance()Lcom/linkplay/network/EncryptedNewOkHttp;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/linkplay/network/OkHttpUtils;->getInstance()Lcom/linkplay/network/OkHttpUtils;

    move-result-object p0

    return-object p0
.end method

.method private static isEncryptedFirmware(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/linkplay/network/HttpRequestUtils;->isHttpsEncrypted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/linkplay/network/HttpRequestUtils;->isHttps2Encrypted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isHttps2Encrypted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https/2.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isHttpsEncrypted(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private parseResponse(Lokhttp3/Response;)Lcom/linkplay/network/OkHttpResponseItem;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/linkplay/network/OkHttpResponseItem;

    invoke-direct {p0}, Lcom/linkplay/network/OkHttpResponseItem;-><init>()V

    :try_start_0
    iget-object v0, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B

    iget-object v0, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    iput-object v0, p0, Lcom/linkplay/network/OkHttpResponseItem;->headers:Lokhttp3/Headers;

    iget p1, p1, Lokhttp3/Response;->e:I

    iput p1, p0, Lcom/linkplay/network/OkHttpResponseItem;->code:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/network/OkHttpResponseItem;->bytes:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p0
.end method

.method private postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/linkplay/network/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 v0, 0x0

    invoke-static {p3, p3, p1, v0}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$3;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$3;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 40
    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 41
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 42
    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$5;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$5;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->buildPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 35
    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 36
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 37
    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$4;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$4;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$6;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$6;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 39
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 40
    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 41
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 42
    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$10;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$10;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->buildPutRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lokhttp3/Request;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Ljava/lang/Exception;

    const-string p3, "okhttp Request is nullponter"

    invoke-direct {p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/linkplay/network/HttpRequestUtils;->sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    return-void

    .line 35
    :cond_0
    iget-object p3, p0, Lcom/linkplay/network/HttpRequestUtils;->mOkHttpClient:Lokhttp3/OkHttpClient;

    const/4 p4, 0x0

    .line 36
    invoke-static {p3, p3, p1, p4}, Ln00;->w(Lokhttp3/OkHttpClient;Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    .line 37
    new-instance p3, Lcom/linkplay/network/HttpRequestUtils$9;

    invoke-direct {p3, p0, p2}, Lcom/linkplay/network/HttpRequestUtils$9;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    invoke-static {p1, p3}, Lcom/dynatrace/android/callback/OkCallback;->a(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void
.end method

.method private sendFailCallback(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/network/HttpRequestUtils;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linkplay/network/HttpRequestUtils$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/linkplay/network/HttpRequestUtils$11;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendSuccessCallBack(Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Lcom/linkplay/network/OkHttpResponseItem;)V
    .locals 2

    iget-object v0, p0, Lcom/linkplay/network/HttpRequestUtils;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/linkplay/network/HttpRequestUtils$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/linkplay/network/HttpRequestUtils$12;-><init>(Lcom/linkplay/network/HttpRequestUtils;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Lcom/linkplay/network/OkHttpResponseItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/linkplay/network/HttpRequestUtils;->delRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public delete(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3, p1}, Lcom/linkplay/network/HttpRequestUtils;->delRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public get(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/linkplay/network/HttpRequestUtils;->getRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public get(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/network/HttpRequestUtils;->getRequest(Ljava/util/List;Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V

    return-void
.end method

.method public getExecute(Ljava/lang/String;)Lcom/linkplay/network/OkHttpResponseItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/linkplay/network/HttpRequestUtils;->getExecuteRequest(Ljava/lang/String;)Lcom/linkplay/network/OkHttpResponseItem;

    move-result-object p0

    return-object p0
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/linkplay/network/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/linkplay/network/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->postRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/linkplay/network/HttpRequestUtils$ResultCallback;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;",
            "Ljava/util/List<",
            "Lcom/linkplay/network/HttpRequestUtils$Param;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/linkplay/network/HttpRequestUtils;->putRequest(Ljava/lang/String;Lcom/linkplay/network/HttpRequestUtils$ResultCallback;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

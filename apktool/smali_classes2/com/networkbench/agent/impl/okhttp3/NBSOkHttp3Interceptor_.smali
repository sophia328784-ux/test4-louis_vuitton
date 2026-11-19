.class public Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;

.field private static final b:Ljava/lang/String; = "NBSOkHttp3Interceptor_"


# instance fields
.field private c:Lcom/networkbench/agent/impl/okhttp3/g;

.field private d:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/okhttp3/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/okhttp3/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    return-void
.end method

.method private a(I)I
    .locals 0

    const/16 p0, 0xa

    if-ge p1, p0, :cond_0

    return p1

    .line 238
    :cond_0
    sget p0, Lcom/networkbench/agent/impl/util/r;->c:I

    return p0
.end method

.method private a(Lokhttp3/Request;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 3

    .line 228
    const-class p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 230
    invoke-virtual {p1, v1}, Lokhttp3/Request;->a(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "get transactionState tag from reqeust"

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 233
    invoke-virtual {p1, p0}, Lokhttp3/Request;->a(Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p0

    .line 234
    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 235
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error getTransactionState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {p0, v0, p1}, Lo60;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    .line 237
    :cond_0
    new-instance p0, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    return-object p0
.end method

.method private a(Lokhttp3/ResponseBody;JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    const-string p0, ""

    .line 240
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    .line 241
    invoke-interface {v0, p2, p3}, Lokio/BufferedSource;->request(J)Z

    .line 242
    invoke-interface {v0}, Lokio/BufferedSource;->Q()Lokio/Buffer;

    move-result-object p2

    .line 243
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 244
    const-string p1, "utf-8"

    .line 245
    invoke-static {p4}, Lcom/networkbench/agent/impl/util/ak;->t(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 246
    const-string p1, "GBK"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lokio/Buffer;->j()Lokio/Buffer;

    move-result-object p2

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokio/Buffer;->i1(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p0

    .line 248
    :goto_1
    const-string p2, "NBSOkHttp3Interceptor_"

    const-string p3, "get response body error:"

    invoke-static {p2, p3, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private a(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lokhttp3/Request;
    .locals 4

    .line 204
    const-string p0, "sw8"

    const-string v0, ":"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/k/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    iget-object v2, p1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 206
    invoke-virtual {v1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 207
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p2

    .line 208
    invoke-virtual {v1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p1

    .line 211
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    iget-object v3, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iget v2, v2, Lokhttp3/HttpUrl;->e:I

    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v3

    iget-object v3, v3, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    .line 217
    invoke-static {v1, v2, v3, v0}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, p1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    .line 219
    invoke-virtual {v1, p0, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v2, Lokhttp3/Request;

    invoke-direct {v2, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 221
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 222
    :goto_1
    const-string p2, "setSeriesHeader has error .... "

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private a(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Request$Builder;)V
    .locals 6

    const-string v0, "okhttp3 setCrossProcessHeader apmsIssue  length :"

    const-string v1, "OKhttp3 setCrossProcessHeader uuid :"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a(I)I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "okhttp3 setCrossProcessHeader apms  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p3, v3, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setUUid(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "okhttp3 setCrossProcessHeader  apmsList  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " okhttp3 apms\u6570\u636e\u683c\u5f0f\u89e3\u6790\u9519\u8bef!!!"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lokhttp3/Response;)Z
    .locals 1

    .line 223
    :try_start_0
    const-string p0, "Content-Range"

    const-string v0, ""

    .line 224
    iget-object p1, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    .line 225
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 226
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 227
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "isContentRangeHeaderExist happened error"

    invoke-interface {p1, v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private b(Lokhttp3/Request;)J
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 111
    iget-object p0, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    if-nez p0, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/RequestBody;->a()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 113
    sget-object p1, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRequestBodyLength error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-static {p0, v2, p1}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private b(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lokhttp3/Request;
    .locals 5

    const-string p0, "traceparent"

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/k/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getSeriesData()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "tracestate"

    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {v1, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/k/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/k/d;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, p1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-virtual {v1, p0, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lokhttp3/Request;

    invoke-direct {v4, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getApmsList()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, v3}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :goto_1
    const-string p2, "setSeriesHeader has error .... "

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/c/g;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method private c(Lokhttp3/Request;)Ljava/lang/String;
    .locals 0

    .line 144
    :try_start_0
    iget-object p0, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    if-nez p0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0, p1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    .line 146
    new-instance p1, Lokhttp3/Request;

    invoke-direct {p1, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 147
    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    .line 148
    iget-object p1, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    .line 149
    invoke-virtual {p1, p0}, Lokhttp3/RequestBody;->e(Lokio/BufferedSink;)V

    .line 150
    invoke-virtual {p0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 151
    :catchall_0
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private c(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lokhttp3/Request;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0, p1}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    if-nez p2, :cond_0

    new-instance p2, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-object v1, v1, Lcom/networkbench/agent/impl/util/r;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v2, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRequestHeaderIdValue(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aj()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->ar()I

    move-result v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/r;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Tingyun-Id"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aH()Lcom/networkbench/agent/impl/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/k/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "X-Tingyun"

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->an()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lokhttp3/Request;

    invoke-direct {v1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-direct {p0, v1, p2, v0}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Lokhttp3/Request$Builder;)V

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    sget-object p2, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSOkHttp3Interceptor_  setCrossProcessHeader---> has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-object p1
.end method

.method private d(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lokhttp3/Request;->d:Lokhttp3/RequestBody;

    iget-object p1, p1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lokhttp3/RequestBody;->b()Lokhttp3/MediaType;

    move-result-object p0

    iget-object p0, p0, Lokhttp3/MediaType;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "NBSOkHttp3Interceptor_"

    const-string v1, "Content-Type"

    const-string v2, "intercept  response "

    const-string v3, "okhttp3 requestBody is:"

    const-string v4, "Util.getHeader  has error .... "

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a(Lokhttp3/Request;)Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setokhttp3(Z)V

    sget-object v7, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "intercept new nbsTransactionState:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    :try_start_0
    sget-object v7, Lcom/networkbench/agent/impl/harvest/HttpLibType;->OkHttp:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v6, v7}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    iget-object v7, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    if-nez v7, :cond_1

    new-instance v7, Lcom/networkbench/agent/impl/okhttp3/b;

    invoke-direct {v7}, Lcom/networkbench/agent/impl/okhttp3/b;-><init>()V

    iput-object v7, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    invoke-interface {v7}, Lcom/networkbench/agent/impl/okhttp3/g;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v5, v6}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->b(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lokhttp3/Request;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lokhttp3/Request;

    move-result-object v5

    invoke-direct {p0, v5, v6}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)Lokhttp3/Request;

    move-result-object v5

    iget-object v7, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    invoke-interface {v7, v5, v6}, Lcom/networkbench/agent/impl/okhttp3/g;->a(Lokhttp3/Request;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v7

    :try_start_2
    sget-object v8, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v9, "okhttp3.0 -> setCrossProcessHeader occur an error"

    invoke-interface {v8, v9, v7}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v7, v5, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v7}, Lokhttp3/Headers;->i()Ljava/util/TreeMap;

    move-result-object v7

    invoke-static {v7}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, v6, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    iget-object v7, v5, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v7, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->d(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->requestHeaderParam:Ljava/util/HashMap;

    const-string v8, "content-type"

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->d(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v7

    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    sget-object v4, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->d(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bodyMaxLength:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide v8

    long-to-int v3, v8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide v7

    long-to-int v3, v7

    invoke-static {v4, v3}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRequestBody(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v4, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v7, "okhttp3 intercept error"

    invoke-interface {v4, v7, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->d:Lokhttp3/OkHttpClient;

    if-eqz v3, :cond_4

    iget-object v4, v3, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    if-eqz v4, :cond_4

    invoke-static {v3, v6}, Lcom/networkbench/agent/impl/okhttp3/c;->a(Lokhttp3/OkHttpClient;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    :cond_4
    :try_start_5
    invoke-interface {p1, v5}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    sget-object v3, Lcom/networkbench/agent/impl/okhttp3/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v2, 0x0

    :try_start_6
    iget-object v3, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v3}, Lokhttp3/Headers;->i()Ljava/util/TreeMap;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->f(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, v6, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->responseHeaderParam:Ljava/util/HashMap;

    iget-object v3, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v3, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v3, v2

    :cond_5
    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setContentType(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->b(Lokhttp3/Request;)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setBytesSent(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    :try_start_7
    sget-object v4, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    const-string v5, "NBSOkHttp3Interceptor_. getContentType occur an error"

    invoke-interface {v4, v5, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_5
    iget-object v3, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    invoke-interface {v3}, Lcom/networkbench/agent/impl/okhttp3/g;->a()Z

    :try_start_8
    iget-object v3, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    invoke-interface {v3, p1, v6}, Lcom/networkbench/agent/impl/okhttp3/g;->a(Lokhttp3/Response;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    sget-object v4, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "NBSOkHttp3Interceptor_  intercept()---> responseFinished  has an error : "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_6
    iget-object v3, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    if-eqz v3, :cond_8

    :try_start_9
    sget-object v4, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v4, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v2

    :cond_6
    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide v4

    iget-object v7, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v7, v1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    invoke-direct {p0, v3, v4, v5, v2}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a(Lokhttp3/ResponseBody;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setResponseBody(Ljava/lang/String;)V

    goto :goto_8

    :catchall_3
    move-exception v1

    goto :goto_a

    :cond_8
    :goto_8
    if-eqz v3, :cond_a

    sget-object v1, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    :goto_9
    sget-object v2, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/networkbench/agent/impl/okhttp3/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, Lokhttp3/Response$Builder;

    invoke-direct {v1, p1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v1, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v1}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    return-object p0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :goto_a
    const-string v2, "error process info"

    invoke-static {v0, v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, p1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    :cond_a
    new-instance v0, Lokhttp3/Response$Builder;

    invoke-direct {v0, p1}, Lokhttp3/Response$Builder;-><init>(Lokhttp3/Response;)V

    new-instance v1, Lcom/networkbench/agent/impl/okhttp3/e;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a(Lokhttp3/Response;)Z

    move-result p0

    invoke-direct {v1, v3, v6, p0}, Lcom/networkbench/agent/impl/okhttp3/e;-><init>(Lokhttp3/ResponseBody;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Z)V

    iput-object v1, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p1

    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    invoke-interface {v0}, Lcom/networkbench/agent/impl/okhttp3/g;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_a
    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->c:Lcom/networkbench/agent/impl/okhttp3/g;

    invoke-interface {p0, v6, p1}, Lcom/networkbench/agent/impl/okhttp3/g;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/io/IOException;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_b

    :catch_3
    move-exception p0

    sget-object v0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NBSOkHttp3Interceptor_  intercept() --->httpError has an error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :cond_b
    :goto_b
    throw p1

    :cond_c
    :goto_c
    invoke-interface {p1, v5}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/NBSOkHttp3Interceptor_;->d:Lokhttp3/OkHttpClient;

    return-void
.end method

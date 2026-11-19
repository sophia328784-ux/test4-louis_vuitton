.class Lcom/dynatrace/android/callback/UriReqStateParms;
.super Lcom/dynatrace/android/callback/WebReqStateParms;
.source "SourceFile"


# instance fields
.field public final m:Lorg/apache/http/client/methods/HttpUriRequest;

.field public final n:Lorg/apache/http/HttpRequest;

.field public final o:Lorg/apache/http/HttpHost;

.field public final p:Lorg/apache/http/protocol/HttpContext;

.field public final q:Lcom/dynatrace/android/callback/CbURIDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    sget-object v0, Lcom/dynatrace/android/callback/CbConstants$WrMethod;->execute:Lcom/dynatrace/android/callback/CbConstants$WrMethod;

    sget-object v1, Lcom/dynatrace/android/callback/CbConstants$WrStates;->PRE_EXEC:Lcom/dynatrace/android/callback/CbConstants$WrStates;

    invoke-direct {p0, v0, v1}, Lcom/dynatrace/android/callback/WebReqStateParms;-><init>(Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    iput-object p1, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->o:Lorg/apache/http/HttpHost;

    iput-object p2, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    iput-object p3, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->p:Lorg/apache/http/protocol/HttpContext;

    invoke-static {p2, p1}, Lcom/dynatrace/android/callback/CbURIDesc;->a(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpHost;)Lcom/dynatrace/android/callback/CbURIDesc;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->q:Lcom/dynatrace/android/callback/CbURIDesc;

    if-eqz p2, :cond_0

    instance-of p1, p2, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->m:Lorg/apache/http/client/methods/HttpUriRequest;

    :cond_0
    return-void
.end method

.method public static i(Lorg/apache/http/protocol/HttpContext;)J
    .locals 10

    const-string v0, "http.request"

    invoke-interface {p0, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v6, v2

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    add-int/2addr v6, v8

    const-string v8, "Content-Length"

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v2

    add-int/2addr p0, v6

    int-to-long v0, p0

    add-long/2addr v0, v3

    return-wide v0
.end method

.method public static j(Lorg/apache/http/HttpResponse;)J
    .locals 12

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p0

    array-length v2, p0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v8, v1

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_2

    aget-object v9, p0, v7

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    add-int/2addr v8, v10

    if-eqz v5, :cond_1

    const-string v10, "Content-Length"

    invoke-interface {v9}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v5

    sget-boolean v9, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v9, :cond_0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v8

    int-to-long v0, v0

    add-long/2addr v0, v3

    return-wide v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NA"

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->q:Lcom/dynatrace/android/callback/CbURIDesc;

    iget-object v0, v0, Lcom/dynatrace/android/callback/CbURIDesc;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->q:Lcom/dynatrace/android/callback/CbURIDesc;

    iget-object p0, p0, Lcom/dynatrace/android/callback/CbURIDesc;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->m:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->n:Lorg/apache/http/HttpRequest;

    instance-of v0, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "NA"

    return-object p0
.end method

.method public final f()Ljava/net/URL;
    .locals 2

    iget-object p0, p0, Lcom/dynatrace/android/callback/UriReqStateParms;->q:Lcom/dynatrace/android/callback/CbURIDesc;

    iget-object p0, p0, Lcom/dynatrace/android/callback/CbURIDesc;->c:Ljava/net/URI;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    return-object v0

    :catch_1
    move-exception p0

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public final g()Lcom/dynatrace/agent/events/enrichment/WebContext;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

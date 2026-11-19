.class Lcom/dynatrace/android/callback/OkRequestStateParms;
.super Lcom/dynatrace/android/callback/WebReqStateParms;
.source "SourceFile"


# instance fields
.field public final m:Lokhttp3/Request;

.field public n:Lokhttp3/Response;

.field public o:Lcom/dynatrace/agent/events/enrichment/WebContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lokhttp3/Request;Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/dynatrace/android/callback/WebReqStateParms;-><init>(Lcom/dynatrace/android/callback/CbConstants$WrMethod;Lcom/dynatrace/android/callback/CbConstants$WrStates;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->o:Lcom/dynatrace/agent/events/enrichment/WebContext;

    iput-object p1, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    return-void
.end method

.method public static i(Ljava/util/TreeMap;)J
    .locals 8

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v3

    add-long/2addr v0, v6

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Content-Length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-wide v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    if-eqz p0, :cond_0

    const-string p0, "Request"

    return-object p0

    :cond_0
    const-string p0, "NA"

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object p0, p0, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    invoke-static {p0}, Lcom/dynatrace/android/agent/WebRequestUtils;->a(Ljava/lang/String;)Lcom/dynatrace/android/agent/WebRequestUtils$FormattedUrl;

    move-result-object p0

    iget-object p0, p0, Lcom/dynatrace/android/agent/WebRequestUtils$FormattedUrl;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object p0, p0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->m:Lokhttp3/Request;

    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->k()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public final g()Lcom/dynatrace/agent/events/enrichment/WebContext;
    .locals 0

    iget-object p0, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->o:Lcom/dynatrace/agent/events/enrichment/WebContext;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Lokhttp3/Response;)V
    .locals 9

    iput-object p1, p0, Lcom/dynatrace/android/callback/OkRequestStateParms;->n:Lokhttp3/Response;

    iget-object p1, p1, Lokhttp3/Response;->j:Lokhttp3/Response;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p1, Lokhttp3/Response;->b:Lokhttp3/Request;

    iget-object v1, p1, Lokhttp3/Response;->c:Lokhttp3/Protocol;

    invoke-virtual {v1}, Lokhttp3/Protocol;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->k()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v1

    const-wide/16 v5, 0x4

    add-long/2addr v3, v5

    iget-object v0, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v0}, Lokhttp3/Headers;->i()Ljava/util/TreeMap;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/callback/OkRequestStateParms;->i(Ljava/util/TreeMap;)J

    move-result-wide v7

    add-long/2addr v3, v7

    const-wide/16 v7, 0x2

    add-long/2addr v3, v7

    iput-wide v3, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    iget v0, p1, Lokhttp3/Response;->e:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    add-long/2addr v1, v5

    iget-object p1, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {p1}, Lokhttp3/Headers;->i()Ljava/util/TreeMap;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/OkRequestStateParms;->i(Ljava/util/TreeMap;)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->g:J

    iput-wide v0, p0, Lcom/dynatrace/android/callback/WebReqStateParms;->h:J

    :cond_1
    return-void
.end method

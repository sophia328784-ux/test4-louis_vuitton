.class public Lcom/networkbench/agent/impl/harvest/a/k;
.super Lcom/networkbench/agent/impl/harvest/a/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 3

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LogTaskUrl error parse result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .line 31
    const-string v0, "/reportLogTaskData"

    .line 32
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getHttpDataVersion()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 35
    const-string v0, "{0}?version={1}&token={2}"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 1

    const-string p0, "X-Tingyun-Resource"

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

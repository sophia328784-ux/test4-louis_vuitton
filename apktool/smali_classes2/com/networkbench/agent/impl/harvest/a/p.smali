.class public Lcom/networkbench/agent/impl/harvest/a/p;
.super Lcom/networkbench/agent/impl/harvest/a/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;-><init>(Ljava/lang/String;Z)V

    const-string p1, "TransactionSpanUrl"

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/harvest/a/h;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/reportSpanData?version="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getTaskDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;
    .locals 3

    const-string v0, "TransactionSpanUrl response body is:"

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->d(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/harvest/d/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/a/h;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "error parseResult in TransactionSpanUrl"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/harvest/a/h;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/d/c;)Lcom/networkbench/agent/impl/harvest/d/c;

    move-result-object p0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/a/p;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

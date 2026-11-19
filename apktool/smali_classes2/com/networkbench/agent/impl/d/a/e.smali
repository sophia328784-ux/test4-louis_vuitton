.class public Lcom/networkbench/agent/impl/d/a/e;
.super Lcom/networkbench/agent/impl/d/a/d;
.source "SourceFile"


# static fields
.field private static final c:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Lcom/networkbench/agent/impl/d/a/a;

.field private b:Lcom/networkbench/agent/impl/d/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/a/e;->c:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/d/a/a;Lcom/networkbench/agent/impl/d/a/b;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->h:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/a/d;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/a/e;->a:Lcom/networkbench/agent/impl/d/a/a;

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/a/e;->b:Lcom/networkbench/agent/impl/d/a/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/d/a;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/networkbench/agent/impl/d/a/d;->a(Lcom/networkbench/agent/impl/d/a;)V

    instance-of v0, p1, Lcom/networkbench/agent/impl/d/b/c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/networkbench/agent/impl/d/b/c;

    sget-boolean v0, Lcom/networkbench/agent/impl/plugin/f/h;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/c;->e()Lcom/networkbench/agent/impl/d/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/networkbench/agent/impl/d/a/e;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "enter TransactionStateMeasurementConsumer after_error scene"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/d/a/e;->a:Lcom/networkbench/agent/impl/d/a/a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/c;->d()Lcom/networkbench/agent/impl/d/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/d/a/a;->a(Lcom/networkbench/agent/impl/d/b/a;)Lcom/networkbench/agent/impl/harvest/ActionData;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/data/f;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/c;->e()Lcom/networkbench/agent/impl/d/b/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/agent/impl/data/f;-><init>(Lcom/networkbench/agent/impl/d/b/b;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/f;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/networkbench/agent/impl/harvest/ActionData;->setErrorInfo(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;

    invoke-direct {v2}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;-><init>()V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getActionDatas()Lcom/networkbench/agent/impl/harvest/ActionDatas;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/networkbench/agent/impl/harvest/ActionDatas;->add(Lcom/networkbench/agent/impl/harvest/ActionData;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->getErrorDatas()Lcom/networkbench/agent/impl/data/g;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/networkbench/agent/impl/data/g;->a(Lcom/networkbench/agent/impl/data/f;)V

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/NetworkPerfMetrics;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TingyunSDK_network"

    invoke-static {v2, v3}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addNetwork error debuglog has error :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/f;->j()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcom/networkbench/agent/impl/plugin/f/c;

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/plugin/f/c;-><init>(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/data/f;)V

    invoke-static {p0}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/a/e;->a(Lcom/networkbench/agent/impl/d/b/c;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/a/e;->a(Lcom/networkbench/agent/impl/d/b/c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/d/b/c;)V
    .locals 2

    .line 142
    sget-object v0, Lcom/networkbench/agent/impl/d/a/e;->c:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "not NetworkErrorScene"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/c;->d()Lcom/networkbench/agent/impl/d/b/a;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/c;->e()Lcom/networkbench/agent/impl/d/b/b;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/d/b/c;->e()Lcom/networkbench/agent/impl/d/b/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/networkbench/agent/impl/d/a/e;->b:Lcom/networkbench/agent/impl/d/a/b;

    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/d/a/b;->a(Lcom/networkbench/agent/impl/d/a;)V

    .line 147
    new-instance p1, Lcom/networkbench/agent/impl/data/f;

    invoke-direct {p1, v1}, Lcom/networkbench/agent/impl/data/f;-><init>(Lcom/networkbench/agent/impl/d/b/b;)V

    .line 148
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/f;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/networkbench/agent/impl/d/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/d/a/e;->a:Lcom/networkbench/agent/impl/d/a/a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/d/a/a;->a(Lcom/networkbench/agent/impl/d/a;)V

    return-void
.end method

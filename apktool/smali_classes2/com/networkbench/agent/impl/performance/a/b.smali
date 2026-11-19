.class public Lcom/networkbench/agent/impl/performance/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/a/c/a;

.field b:Lcom/networkbench/agent/impl/performance/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->a:Lcom/networkbench/agent/impl/performance/a/c/a;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/c/a;->formatInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, ""

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b;->b:Lcom/networkbench/agent/impl/performance/b;

    if-eqz v1, :cond_1

    .line 54
    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 55
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b;->b:Lcom/networkbench/agent/impl/performance/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b;->formatInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public a(I)V
    .locals 3

    .line 45
    new-instance v0, Lcom/networkbench/agent/impl/performance/a/c/a;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/performance/a/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->a:Lcom/networkbench/agent/impl/performance/a/c/a;

    .line 46
    new-instance v0, Lcom/networkbench/agent/impl/performance/b;

    const-string v1, "cpuMetrics"

    const-string v2, "otelMetric"

    invoke-direct {v0, v1, p1, v2}, Lcom/networkbench/agent/impl/performance/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->b:Lcom/networkbench/agent/impl/performance/b;

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/a/c/b;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->a:Lcom/networkbench/agent/impl/performance/a/c/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/crash/b;->a(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/a/c/b;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addErrorEvent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/a/c/b;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b;->a:Lcom/networkbench/agent/impl/performance/a/c/a;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/a/c/a;->a(Lcom/networkbench/agent/impl/performance/a/c/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/a;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->b:Lcom/networkbench/agent/impl/performance/b;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addCpuEventData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/networkbench/agent/impl/performance/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b;->b:Lcom/networkbench/agent/impl/performance/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b;->d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->a:Lcom/networkbench/agent/impl/performance/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/c/a;->reset()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b;->a:Lcom/networkbench/agent/impl/performance/a/c/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/c/a;->c()V

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b;->b:Lcom/networkbench/agent/impl/performance/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/b;->reset()V

    :cond_1
    return-void
.end method

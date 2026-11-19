.class Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;
.super Lcom/networkbench/agent/impl/performance/a/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/performance/a/b/a/a/c;-><init>(Lcom/networkbench/agent/impl/performance/a/b/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/networkbench/agent/impl/performance/a/b/c/a;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "currentCpuLoad: "

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->a(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    iget v2, v1, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g:I

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/c;->f()D

    move-result-wide v1

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    iget-object v3, v3, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->b(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v3}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->b()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e()V

    return-void

    :cond_0
    invoke-static {v3}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->c(Lcom/networkbench/agent/impl/performance/a/b/a/a/c;)Lcom/networkbench/agent/impl/performance/a/a/b;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/networkbench/agent/impl/performance/a/b/a/a;->a(Lcom/networkbench/agent/impl/performance/a/a/b;D)Z

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    iget v2, v1, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->g:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    if-nez v0, :cond_1

    const-string v0, "ThreadDetectState executeCpuTask, count >= 2, resetAndSwitchToProcessDetectState"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/a/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a/a/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->e()V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/a/b/a/a/c;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ThreadDetectState executeCpuTask has error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void
.end method

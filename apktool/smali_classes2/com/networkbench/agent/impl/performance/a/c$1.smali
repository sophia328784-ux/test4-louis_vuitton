.class Lcom/networkbench/agent/impl/performance/a/c$1;
.super Lcom/networkbench/agent/impl/performance/a/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/performance/a/c;->initModule(Landroid/content/Context;Lcom/networkbench/agent/impl/c/e;Lcom/networkbench/agent/impl/harvest/a/a/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/a/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/c;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/c;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/networkbench/agent/impl/performance/a/b/c/a;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "cpuTask--->CpuModuleWrapper initModule cpuOnlineConfigManager  run---->"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/performance/a/c;->a(Lcom/networkbench/agent/impl/performance/a/c;)Lcom/networkbench/agent/impl/performance/a/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/b/c/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/c;

    invoke-static {v0}, Lcom/networkbench/agent/impl/performance/a/c;->b(Lcom/networkbench/agent/impl/performance/a/c;)Lcom/networkbench/agent/impl/performance/a/b/b/h;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/c$1;->a:Lcom/networkbench/agent/impl/performance/a/c;

    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/a/c;->b(Lcom/networkbench/agent/impl/performance/a/c;)Lcom/networkbench/agent/impl/performance/a/b/b/h;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/b/d$a;->a()Lcom/networkbench/agent/impl/performance/a/b/b/d;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuModuleWrapper updateCpuCollectTasks error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void
.end method

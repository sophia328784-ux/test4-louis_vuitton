.class Lcom/networkbench/agent/impl/performance/a/b/b/h$1;
.super Lcom/networkbench/agent/impl/performance/a/b/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/performance/a/b/b/h;->a(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/a/b/a;

.field final synthetic b:Lcom/networkbench/agent/impl/performance/a/b/b/h;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h$1;->b:Lcom/networkbench/agent/impl/performance/a/b/b/h;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/a/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h$1;->b:Lcom/networkbench/agent/impl/performance/a/b/b/h;

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h$1;->a:Lcom/networkbench/agent/impl/performance/a/b/a;

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuDataCollector run error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

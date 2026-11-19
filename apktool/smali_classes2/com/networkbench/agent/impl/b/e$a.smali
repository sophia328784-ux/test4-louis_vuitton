.class Lcom/networkbench/agent/impl/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/b/e;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/b/e;J)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/e$a;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/networkbench/agent/impl/b/e$a;->b:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/b/e;->d()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "RetryRunnable run invoked"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/f;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/b/o;

    new-instance v1, Lcom/networkbench/agent/impl/b/k;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/b/e$a;->b:J

    invoke-direct {v1, v2, v3}, Lcom/networkbench/agent/impl/b/k;-><init>(J)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/b/e$a;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-static {v2}, Lcom/networkbench/agent/impl/b/e;->a(Lcom/networkbench/agent/impl/b/e;)Lcom/networkbench/agent/impl/b/a/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/b/o;-><init>(Lcom/networkbench/agent/impl/b/k;Lcom/networkbench/agent/impl/b/a/a;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/e$a;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/e;->b(Lcom/networkbench/agent/impl/b/e;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/networkbench/agent/impl/b/e$a;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/e;->a(Lcom/networkbench/agent/impl/b/e;)Lcom/networkbench/agent/impl/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/b/a/a;->d()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/b/e$a;->a:Lcom/networkbench/agent/impl/b/e;

    invoke-static {p0}, Lcom/networkbench/agent/impl/b/e;->a(Lcom/networkbench/agent/impl/b/e;)Lcom/networkbench/agent/impl/b/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/b/a/a;->b()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->a()Lcom/networkbench/agent/impl/util/c/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/util/c/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/networkbench/agent/impl/util/d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/agent/impl/b/e;->d()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    const-string v1, "error notifyBlockEvent"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/networkbench/agent/impl/b/e;->d()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "warning the blockinfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

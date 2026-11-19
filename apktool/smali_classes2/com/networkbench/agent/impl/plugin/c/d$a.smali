.class Lcom/networkbench/agent/impl/plugin/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/plugin/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/c/d;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v1, "LogTrackRunnable error: "

    const-string v0, "startTime:"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v3}, Lcom/networkbench/agent/impl/plugin/c/d;->a(Lcom/networkbench/agent/impl/plugin/c/d;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "LogTrackPlugin"

    if-nez v3, :cond_1

    :try_start_1
    const-string v0, "logTrack is not allow upload"

    invoke-static {v4, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    iput-boolean v2, v0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->e(Lcom/networkbench/agent/impl/plugin/c/d;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->b(Lcom/networkbench/agent/impl/plugin/c/d;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endTime:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->c(Lcom/networkbench/agent/impl/plugin/c/d;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", taskId:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->d(Lcom/networkbench/agent/impl/plugin/c/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->getLogTraceWrapper()Lcom/networkbench/agent/impl/plugin/c/g;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "logTraceWrapper is not init success"

    invoke-static {v4, v0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/networkbench/agent/impl/NBSLogger;->getLogTraceWrapper()Lcom/networkbench/agent/impl/plugin/c/g;

    move-result-object v3

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->b(Lcom/networkbench/agent/impl/plugin/c/d;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->c(Lcom/networkbench/agent/impl/plugin/c/d;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/d;->d(Lcom/networkbench/agent/impl/plugin/c/d;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/networkbench/agent/impl/plugin/c/g;->a(JJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :goto_1
    :try_start_4
    instance-of v3, v0, Ljava/lang/InterruptedException;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v4, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    if-eqz v3, :cond_3

    :try_start_5
    iput-boolean v2, v4, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    invoke-static {}, Lcom/networkbench/agent/impl/plugin/c/d;->h()Lcom/networkbench/agent/impl/c/e;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :goto_3
    invoke-static {}, Lcom/networkbench/agent/impl/util/c/c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    iput-boolean v2, v1, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    :cond_4
    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/c/d;->e(Lcom/networkbench/agent/impl/plugin/c/d;)Lcom/networkbench/agent/impl/plugin/f/i;

    move-result-object v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/d$a;->a:Lcom/networkbench/agent/impl/plugin/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/networkbench/agent/impl/plugin/f/i;->a(Ljava/lang/String;)V

    throw v0
.end method

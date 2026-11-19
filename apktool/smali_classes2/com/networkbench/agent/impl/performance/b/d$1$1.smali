.class Lcom/networkbench/agent/impl/performance/b/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/performance/b/d$1;->a(Ljava/lang/String;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:Lcom/networkbench/agent/impl/performance/b/d$1;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/b/d$1;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->b:J

    iput-object p5, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->c:Ljava/lang/String;

    iput-wide p6, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-static {v2}, Lcom/networkbench/agent/impl/performance/b/d$1;->a(Lcom/networkbench/agent/impl/performance/b/d$1;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide v4, 0x2540be400L

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-static {v3}, Lcom/networkbench/agent/impl/performance/b/d$1;->b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-static {v3}, Lcom/networkbench/agent/impl/performance/b/d$1;->b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    iget-object v3, v3, Lcom/networkbench/agent/impl/performance/b/d$1;->b:Lcom/networkbench/agent/impl/performance/b/d;

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->c:Ljava/lang/String;

    iget-wide v5, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->d:J

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/networkbench/agent/impl/performance/b/d;->a(Ljava/lang/String;Ljava/util/HashMap;J)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-static {v2, v0, v1}, Lcom/networkbench/agent/impl/performance/b/d$1;->a(Lcom/networkbench/agent/impl/performance/b/d$1;J)J

    :cond_1
    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->b:J

    const-wide/32 v2, 0xfe502a

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/b/d$1;->b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {v2}, Lcom/networkbench/agent/impl/performance/b/d$1;->b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/b/d$1$1;->e:Lcom/networkbench/agent/impl/performance/b/d$1;

    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/b/d$1;->b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-static {v2}, Lcom/networkbench/agent/impl/performance/b/d$1;->b(Lcom/networkbench/agent/impl/performance/b/d$1;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doFrame  error-->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpsModule"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

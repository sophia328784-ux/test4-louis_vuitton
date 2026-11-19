.class public Lcom/networkbench/agent/impl/performance/coulometry/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

.field b:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

.field c:[Ljava/lang/StackTraceElement;

.field private d:I

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(ILcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->d:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->d:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->a:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iput-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "TrackerCount threshold:"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    monitor-enter p0

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a([Ljava/lang/StackTraceElement;)V
    .locals 9

    const-string v0, "addTask  \u5df2\u7ecf\u89e6\u53d1\u5f02\u5e38,\u4e0d\u518d\u8ba1\u7b97\u6570\u636e, type:"

    const-string v1, "addTask  \u8d85\u51fa\u4e86\u6ed1\u52a8\u7a97\u53e3,\u9700\u8981\u6e05\u7a7a\u6570\u636e, type:"

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const-wide/32 v5, 0x927c0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v4, v7, v5

    if-lez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->c:[Ljava/lang/StackTraceElement;

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    cmp-long p1, v0, v5

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->d:I

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6b21\u6570\u8ba1\u7b97\u7684\u6ed1\u52a8\u7a97\u53e3count \u8ba1\u6570\u5df2\u7ecf\u8fbe\u5230\u9608\u503c....."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->a:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->c:[Ljava/lang/StackTraceElement;

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;[Ljava/lang/StackTraceElement;)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8fd9\u6b21\u5f02\u5e38\u662f\u5426\u53d1\u9001\u8fc7\u4e86 :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addTask   slidingWindow.size() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

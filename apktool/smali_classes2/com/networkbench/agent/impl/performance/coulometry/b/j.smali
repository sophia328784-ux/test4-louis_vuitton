.class public Lcom/networkbench/agent/impl/performance/coulometry/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J = 0x927c0L


# instance fields
.field protected b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

.field d:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

.field private e:I

.field private f:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/networkbench/agent/impl/performance/coulometry/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/b/j$1;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/j$1;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/b/j;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->e:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iput-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 260
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public declared-synchronized a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)V
    .locals 10

    const-string v0, "addTask  totalTime:"

    const-string v1, "\u8fd9\u6b21\u5f02\u5e38\u662f\u5426\u53d1\u9001\u8fc7\u4e86 :"

    const-string v2, "\u5360\u7528\u65f6\u95f4\u8ba1\u6570\u7684\u6ed1\u52a8\u7a97\u53e3totalTime \u5df2\u7ecf\u8fbe\u5230\u9608\u503c....."

    const-string v3, "addTask:"

    const-string v4, "addTask  \u5df2\u7ecf\u89e6\u53d1\u5f02\u5e38,\u4e0d\u518d\u8ba1\u7b97\u6570\u636e, type:"

    const-string v5, "addTask  \u8d85\u51fa\u4e86\u6ed1\u52a8\u7a97\u53e3,\u9700\u8981\u6e05\u7a7a\u6570\u636e, type:"

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v6

    iget-object v8, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v4

    iget-object v6, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v6}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->a()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->a(J)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b()J

    move-result-wide v3

    iget v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->e:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->c()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;[Ljava/lang/StackTraceElement;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "---  thresholdCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->e:I

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

.method public b()J
    .locals 11

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v3

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v5

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_1

    sub-long/2addr v5, v3

    add-long/2addr v5, v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v3

    move-wide v9, v3

    move-wide v3, v1

    move-wide v1, v5

    move-wide v5, v9

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_0

    :cond_2
    sub-long/2addr v5, v3

    add-long/2addr v5, v1

    return-wide v5
.end method

.method public declared-synchronized b(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)V
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->f:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

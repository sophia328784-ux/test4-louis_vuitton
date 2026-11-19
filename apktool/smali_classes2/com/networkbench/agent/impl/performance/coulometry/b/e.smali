.class public Lcom/networkbench/agent/impl/performance/coulometry/b/e;
.super Lcom/networkbench/agent/impl/performance/coulometry/b/b;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

.field b:Lcom/networkbench/agent/impl/performance/coulometry/b/j;

.field c:Lcom/networkbench/agent/impl/performance/coulometry/c/b/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/b;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/a;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->c:Lcom/networkbench/agent/impl/performance/coulometry/c/b/a;

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/a/b;->b()I

    move-result v1

    sget-object v2, Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;->c:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-direct {v0, v1, p1, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;-><init>(ILcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b/j;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/a/b;->c()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    sget-object v1, Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;->d:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-direct {v0, p2, p1, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;-><init>(ILcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/j;

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->c:Lcom/networkbench/agent/impl/performance/coulometry/c/b/a;

    return-object p0
.end method

.method public a(JJLcom/networkbench/agent/impl/performance/coulometry/c/d;)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/b/g;

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;-><init>(JJ)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)V

    iget-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/b/g;

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->b()I

    move-result p3

    iget-object p4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v0, p3

    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-boolean p3, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    if-nez p3, :cond_0

    iget-wide p3, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a:J

    sub-long p3, p1, p3

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->k:Lcom/networkbench/agent/impl/harvest/a/a/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/a/a/b;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long p3, p3, v0

    if-ltz p3, :cond_0

    iget-object p3, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->j:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    sget-object p4, Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;->b:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    iget-object v0, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    invoke-virtual {p3, p4, v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;[Ljava/lang/StackTraceElement;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u8d85\u8fc7\u5f02\u5e38\u9608\u503c(120), \u5355\u6b21 locationDurationTime :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a:J

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    goto :goto_0

    :cond_0
    iget-boolean p3, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    iget-wide v0, p5, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a:J

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u5df2\u7ecf\u89e6\u53d1\u8fc7\u5f02\u5e38, \u5355\u6b21 locationDurationTime :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\u6ca1\u6709\u8d85\u8fc7\u5f02\u5e38\u9608\u503c(120), \u5355\u6b21 locationDurationTime :"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/j;

    invoke-virtual {p5}, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b()Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    iget-object p1, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->a([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public a(Z)V
    .locals 9

    .line 131
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/a;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    if-eqz v8, :cond_0

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a(JJLcom/networkbench/agent/impl/performance/coulometry/c/d;)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    goto :goto_1

    :cond_0
    move-object v3, p0

    :goto_1
    move-object p0, v3

    goto :goto_0

    :cond_1
    move-object v3, p0

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 139
    iget-object p0, v3, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b()V

    .line 140
    iget-object p0, v3, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/j;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->a()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 5

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/j;

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/j;->a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;)V

    return-void
.end method

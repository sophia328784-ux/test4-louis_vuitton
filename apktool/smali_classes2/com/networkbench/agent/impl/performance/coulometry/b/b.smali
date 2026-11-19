.class public abstract Lcom/networkbench/agent/impl/performance/coulometry/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/coulometry/b/d;


# instance fields
.field protected d:Lcom/networkbench/agent/impl/performance/coulometry/b/g;

.field protected e:Ljava/util/concurrent/atomic/AtomicLong;

.field protected f:Ljava/util/concurrent/atomic/AtomicLong;

.field protected g:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected h:J

.field protected i:J

.field protected j:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

.field protected k:Lcom/networkbench/agent/impl/harvest/a/a/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/b/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/g;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/b/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->h:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->i:J

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->j:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    iput-object p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->k:Lcom/networkbench/agent/impl/harvest/a/a/b;

    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public d()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public f()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->b()V

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->d:Lcom/networkbench/agent/impl/performance/coulometry/b/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/g;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

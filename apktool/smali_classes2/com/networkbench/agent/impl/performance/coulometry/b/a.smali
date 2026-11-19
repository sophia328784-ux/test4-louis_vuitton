.class public Lcom/networkbench/agent/impl/performance/coulometry/b/a;
.super Lcom/networkbench/agent/impl/performance/coulometry/b/b;
.source "SourceFile"


# instance fields
.field a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

.field b:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

.field c:Lcom/networkbench/agent/impl/performance/coulometry/c/a/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/b;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/harvest/a/a/b;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->j:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/c/a/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/a;-><init>(Landroid/content/Context;Lcom/networkbench/agent/impl/performance/coulometry/b/b;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->c:Lcom/networkbench/agent/impl/performance/coulometry/c/a/a;

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/a/b;->h()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->j:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    sget-object v2, Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;->i:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-direct {p1, v0, v1, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;-><init>(ILcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/a/a/b;->g()I

    move-result p2

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->j:Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;

    sget-object v1, Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;->h:Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;

    invoke-direct {p1, p2, v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;-><init>(ILcom/networkbench/agent/impl/performance/coulometry/a/a/a;Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->c:Lcom/networkbench/agent/impl/performance/coulometry/c/a/a;

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)V
    .locals 3

    iget v0, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    iget-object v2, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->a([Ljava/lang/StackTraceElement;)V

    iput-boolean v1, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->g:Z

    :cond_0
    iget-boolean v0, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    iget-object v2, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->a([Ljava/lang/StackTraceElement;)V

    iput-boolean v1, p1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->h:Z

    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->c()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/g;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/c/f;->a()Lcom/networkbench/agent/impl/performance/coulometry/c/a;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/c/a;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 40
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b()V

    .line 41
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/a;->b:Lcom/networkbench/agent/impl/performance/coulometry/b/i;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b/i;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

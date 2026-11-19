.class public Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, " acquireWakeLock "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    array-length v0, p3

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/os/IBinder;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/d;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p3, v2

    if-eqz v2, :cond_0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    aget-object v2, p3, v2

    if-eqz v2, :cond_2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->b(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    if-nez v1, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    iput-object v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a:J

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-static {v2}, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->c(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    iget-object v0, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/l;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/l;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    iget-object v0, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/l;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/l;->c()V

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

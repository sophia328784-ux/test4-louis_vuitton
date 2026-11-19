.class public Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "LocationManager method : requestLocationUpdates"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    aget-object v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/d;-><init>()V

    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    invoke-static {v4}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->b(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iput-wide v4, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a:J

    iput-wide v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    iget-object v0, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/e;

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/d;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    iget-object v0, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/e;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->c()V

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

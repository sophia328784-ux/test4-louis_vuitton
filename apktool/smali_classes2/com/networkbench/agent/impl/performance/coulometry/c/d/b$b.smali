.class public Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$b;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "  releaseWakeLock  "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    array-length v1, p3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, p3, v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Landroid/os/IBinder;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-static {v2}, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->d(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    if-nez v8, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    iget-object v3, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/l;

    iget-wide v4, v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    iget-wide v6, v8, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    invoke-virtual/range {v3 .. v8}, Lcom/networkbench/agent/impl/performance/coulometry/b/l;->a(JJLcom/networkbench/agent/impl/performance/coulometry/c/d;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;

    invoke-static {v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;->e(Lcom/networkbench/agent/impl/performance/coulometry/c/d/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

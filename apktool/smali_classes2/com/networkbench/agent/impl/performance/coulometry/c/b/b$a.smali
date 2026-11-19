.class public Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "LocationManager method : removeUpdates"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, p3, v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->c(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    if-nez v7, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->c:J

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    iget-object v2, v1, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->c:Lcom/networkbench/agent/impl/performance/coulometry/b/e;

    iget-wide v5, v7, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    invoke-virtual/range {v2 .. v7}, Lcom/networkbench/agent/impl/performance/coulometry/b/e;->a(JJLcom/networkbench/agent/impl/performance/coulometry/c/d;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b$a;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;

    invoke-static {v1}, Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;->d(Lcom/networkbench/agent/impl/performance/coulometry/c/b/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class public Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$b;
.super Lcom/networkbench/agent/impl/performance/coulometry/c/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

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

    const-string v0, "AlarmManager  method :  set() "

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/d;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v5, p3, v2

    instance-of v6, v5, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    if-nez v3, :cond_0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->d:I

    move v3, v7

    goto :goto_3

    :cond_0
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_5

    if-nez v4, :cond_3

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iget v8, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->d:I

    if-eq v8, v7, :cond_2

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v7, v5

    :cond_2
    :goto_1
    iput-wide v5, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->e:J

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    instance-of v6, v5, Landroid/app/PendingIntent;

    if-eqz v6, :cond_6

    check-cast v5, Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b$b;->a:Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;

    invoke-static {v6}, Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/c/a/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AlarmManager  method :  set()  pendingIntent : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    iget-wide v1, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->b:J

    iput-wide v1, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->a:J

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iput-object v1, v0, Lcom/networkbench/agent/impl/performance/coulometry/c/d;->f:[Ljava/lang/StackTraceElement;

    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/c/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

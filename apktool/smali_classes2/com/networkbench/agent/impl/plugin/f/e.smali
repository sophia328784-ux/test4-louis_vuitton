.class public Lcom/networkbench/agent/impl/plugin/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/plugin/f/e;->a:J

    iput-boolean p3, p0, Lcom/networkbench/agent/impl/plugin/f/e;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/h;)Z
    .locals 3

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getInterval()J

    move-result-wide v0

    long-to-int v0, v0

    :try_start_0
    const-string v1, "taskId \u5305\u542b...checkTime"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/networkbench/agent/impl/plugin/h;->j:Lcom/networkbench/agent/impl/plugin/a;

    instance-of v1, v1, Lcom/networkbench/agent/impl/plugin/f;

    if-eqz v1, :cond_1

    const-string v1, "taskId \u5305\u542b...checkTime1111111"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    iget p1, p1, Lcom/networkbench/agent/impl/plugin/h;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "..........."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V

    if-gtz p1, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "taskId \u5305\u542b...checkTime22222"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide p0, p0, Lcom/networkbench/agent/impl/plugin/f/e;->a:J

    sub-long/2addr v1, p0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long p0, v0

    cmp-long p0, v1, p0

    if-gez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

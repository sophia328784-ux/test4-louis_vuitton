.class public Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/performance/coulometry/c/c/a;


# instance fields
.field a:I

.field b:Landroid/app/usage/NetworkStatsManager;

.field c:Landroid/app/usage/NetworkStats;

.field d:Landroid/app/usage/NetworkStats;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a:I

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->e:J

    return-void
.end method

.method private a(I)J
    .locals 10

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v2

    const-string v3, "netstats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    new-instance v2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v6, 0x0

    const-wide v8, 0x7ffffffffffffffeL

    const/4 v5, 0x0

    move v4, p1

    :try_start_1
    invoke-virtual/range {v3 .. v9}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v3, v0

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    iget v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a:I

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    add-long/2addr v0, v5

    invoke-virtual {v2}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-long/2addr v3, v5

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    move-wide v3, v0

    :catchall_1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_1

    :catchall_2
    move-wide v3, v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->f:J

    add-long/2addr v0, v3

    const-wide/16 p0, 0x400

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 90
    iget v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    .line 93
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "TrafficHighData getUuid has an error : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->e:J

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TrafficHook  this.allData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method public b()J
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->a(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->e:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/c/c/b;->e:J

    return-wide v2
.end method

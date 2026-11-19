.class public Lcom/networkbench/agent/impl/performance/a/b/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/networkbench/agent/impl/performance/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/performance/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/performance/a/b/a;)V
    .locals 20

    move-object/from16 v1, p1

    iget-object v0, v1, Lcom/networkbench/agent/impl/performance/a/b/a;->f:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/a/b;->a()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "CpuDataCollector handleCpuDataCollection cpuInterval : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/networkbench/agent/impl/performance/a/b/a;->c:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "CpuDataCollector handleCpuDataCollection return : "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/networkbench/agent/impl/performance/a/b/a;->c:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-wide v4, v1, Lcom/networkbench/agent/impl/performance/a/b/a;->c:J

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->c()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, v6}, Lcom/networkbench/agent/impl/performance/a/e/h;->a(ILjava/util/Map;)V

    const-wide/16 v8, 0x168

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v8, "CpuDataCollector InterruptedException stop error"

    invoke-static {v8, v0}, Lcom/networkbench/agent/impl/c/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, v7}, Lcom/networkbench/agent/impl/performance/a/e/h;->a(ILjava/util/Map;)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->c()J

    move-result-wide v8

    sub-long v10, v8, v2

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    long-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->d()J

    move-result-wide v12

    long-to-double v12, v12

    div-double v18, v10, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->a()J

    move-result-wide v4

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-lez v0, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v0, v4, v12

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "CpuDataCollector handleCpuDataCollection cpuRatetime : "

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-float v8, v8

    long-to-float v2, v2

    sub-float/2addr v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    mul-long/2addr v4, v10

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->d()J

    move-result-wide v2

    mul-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    div-float/2addr v8, v0

    float-to-double v3, v8

    new-instance v14, Lcom/networkbench/agent/impl/performance/a/c/f;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v3

    invoke-direct/range {v14 .. v19}, Lcom/networkbench/agent/impl/performance/a/c/f;-><init>(Ljava/lang/String;DD)V

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/e/a;->d()J

    move-result-wide v3

    mul-long/2addr v3, v10

    long-to-float v0, v3

    div-float/2addr v0, v2

    invoke-virtual {v1, v0, v6, v7, v14}, Lcom/networkbench/agent/impl/performance/a/b/a;->a(FLjava/util/Map;Ljava/util/Map;Lcom/networkbench/agent/impl/performance/a/c/f;)V

    return-void

    :cond_2
    :goto_1
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/c;->b()Lcom/networkbench/agent/impl/performance/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/a/c;->c()Lcom/networkbench/agent/impl/performance/a/b/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->b(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    const-string v0, "CpuTaskManager cancelTask CpuModuleWrapper CpuTask ,  getCpuUsageTime error!"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/a;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a(Lcom/networkbench/agent/impl/performance/a/b/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 247
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/b/e$a;->a()Lcom/networkbench/agent/impl/performance/a/b/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/e;->a()V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/harvest/a/a/c;)V
    .locals 1

    .line 236
    check-cast p1, Lcom/networkbench/agent/impl/performance/a/a/b;

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateConfig :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/a/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->z(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/b/e$a;->a()Lcom/networkbench/agent/impl/performance/a/b/b/e;

    move-result-object p1

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/performance/a/b/b/e;->a(Lcom/networkbench/agent/impl/performance/a/a/b;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/b/d;)V
    .locals 0

    .line 239
    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/a/b/b/h;->a:Lcom/networkbench/agent/impl/performance/a/a/b;

    if-eqz p1, :cond_1

    .line 240
    iget-object p2, p2, Lcom/networkbench/agent/impl/performance/a/b/b/d;->b:Lcom/networkbench/agent/impl/performance/a/b/a;

    .line 241
    iput-object p1, p2, Lcom/networkbench/agent/impl/performance/a/b/a;->f:Lcom/networkbench/agent/impl/performance/a/a/b;

    .line 242
    iget-object p1, p2, Lcom/networkbench/agent/impl/performance/a/b/a;->a:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    if-nez p1, :cond_0

    .line 243
    new-instance p1, Lcom/networkbench/agent/impl/performance/a/b/b/h$1;

    invoke-direct {p1, p0, p2}, Lcom/networkbench/agent/impl/performance/a/b/b/h$1;-><init>(Lcom/networkbench/agent/impl/performance/a/b/b/h;Lcom/networkbench/agent/impl/performance/a/b/a;)V

    iput-object p1, p2, Lcom/networkbench/agent/impl/performance/a/b/a;->a:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    .line 244
    :cond_0
    iget-object p0, p2, Lcom/networkbench/agent/impl/performance/a/b/a;->a:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    if-eqz p0, :cond_1

    .line 245
    invoke-static {}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a()Lcom/networkbench/agent/impl/performance/a/b/c/b;

    move-result-object p0

    iget-object p1, p2, Lcom/networkbench/agent/impl/performance/a/b/a;->a:Lcom/networkbench/agent/impl/performance/a/b/c/a;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/a/b/c/b;->a(Lcom/networkbench/agent/impl/performance/a/b/c/a;)V

    :cond_1
    return-void
.end method

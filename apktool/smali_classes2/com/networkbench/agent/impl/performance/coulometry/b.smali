.class public Lcom/networkbench/agent/impl/performance/coulometry/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/performance/coulometry/b$a;
    }
.end annotation


# instance fields
.field a:Landroid/os/BatteryManager;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:I

.field private e:I

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->d:I

    const v0, 0x927c0

    iput v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->e:I

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->g:Z

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->d:I

    :cond_0
    iput-boolean p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->g:Z

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a(Landroid/os/BatteryManager;)F
    .locals 2

    const/4 v0, 0x2

    .line 199
    invoke-virtual {p0, v0}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v0

    long-to-float p0, v0

    const v0, -0x34e76980    # -1.0E7f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    const v0, 0x4b189680    # 1.0E7f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(FJ)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;
    .locals 0

    .line 201
    new-instance p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    invoke-direct {p0, p2, p3, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;-><init>(JF)V

    .line 202
    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;

    const-string p2, "app.on_background"

    const-string p3, "0"

    invoke-direct {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;)V

    return-object p0
.end method

.method private a(FJLjava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;
    .locals 0

    .line 203
    new-instance p0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    invoke-direct {p0, p2, p3, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;-><init>(JF)V

    .line 204
    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;

    const-string p2, "page.name"

    invoke-direct {p1, p2, p4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;)V

    .line 205
    new-instance p1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;

    const-string p2, "app.on_background"

    const-string p3, "0"

    invoke-direct {p1, p2, p3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/a;)V

    return-object p0
.end method

.method private a(FF)V
    .locals 6

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 182
    iget-object v4, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;

    if-eqz v0, :cond_2

    .line 183
    iget-object v4, v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->a:Ljava/lang/String;

    sget-object v5, Lcom/networkbench/agent/impl/harvest/Harvest;->currentActivity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    cmpl-float p0, p1, v3

    if-eqz p0, :cond_0

    cmpl-float p0, p1, v2

    if-eqz p0, :cond_0

    .line 184
    iget-object p0, v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->b:Ljava/util/List;

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    cmpl-float p0, p2, v3

    if-eqz p0, :cond_1

    cmpl-float p0, p2, v2

    if-eqz p0, :cond_1

    .line 185
    iget-object p0, v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 186
    :cond_2
    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;

    sget-object v4, Lcom/networkbench/agent/impl/harvest/Harvest;->currentActivity:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;-><init>(Ljava/lang/String;)V

    cmpl-float v4, p1, v3

    if-eqz v4, :cond_3

    cmpl-float v4, p1, v2

    if-eqz v4, :cond_3

    .line 187
    iget-object v4, v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->b:Ljava/util/List;

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    cmpl-float p1, p2, v3

    if-eqz p1, :cond_4

    cmpl-float p1, p2, v2

    if-eqz p1, :cond_4

    .line 188
    iget-object p1, v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_4
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "addTemperatureAndElectric has an error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method private a(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V
    .locals 5

    .line 191
    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object v0

    const-string v1, "Alarm"

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getEvent(Ljava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/b/d;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->e()J

    move-result-wide v0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractedAlarm alarmSetCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    .line 194
    new-instance v2, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;

    const-string v3, "alarm_manager.count"

    const-string v4, ""

    invoke-direct {v2, v3, v4, v4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v0, v0

    .line 195
    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FJ)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    move-result-object p0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3, v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    return-void

    .line 197
    :cond_0
    const-string p0, "event is null"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V
    .locals 9

    const-string v0, "extractedBattery "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;

    const-string v1, "battery.temperature"

    const-string v2, ""

    const-string v3, "\u00b0C"

    invoke-direct {v0, v1, v2, v3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;

    const-string v2, "battery.electric"

    const-string v3, ""

    const-string v4, "mA"

    invoke-direct {v1, v2, v3, v4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->a()V

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->b()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->b()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-wide v6, v3, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->d:J

    iget-object v8, v3, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->a:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v7, v8}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FJLjava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    move-result-object v4

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->c()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->c()Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-wide v5, v3, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->d:J

    iget-object v3, v3, Lcom/networkbench/agent/impl/performance/coulometry/a/b/e;->a:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v3}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FJLjava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    move-result-object v3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    invoke-virtual {p1, v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    iget-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/performance/coulometry/b;FF)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FF)V

    return-void
.end method

.method private b(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object v0

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getEvent(Ljava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/b/d;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->d()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractedLocation  locationDruation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v2, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;

    const-string v3, ""

    const-string v4, "s"

    const-string v5, "gps.use_duration"

    invoke-direct {v2, v5, v3, v4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FJ)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    move-result-object p0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    return-void

    :cond_0
    const-string p0, "event is null"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method private c(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object v0

    const-string v1, "WakeLock"

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getEvent(Ljava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/b/d;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/b;->f()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractedWakeLock  wakeLockDruation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v2, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;

    const-string v3, ""

    const-string v4, "s"

    const-string v5, "wake_lock.duration"

    invoke-direct {v2, v5, v3, v4}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FJ)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    move-result-object p0

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    return-void

    :cond_0
    const-string p0, "event is null"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    .line 60
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private d(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getInstance()Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;

    move-result-object v0

    const-string v1, "network.traffic"

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/performance/coulometry/CoulometryModuleWrapper;->getEvent(Ljava/lang/String;)Lcom/networkbench/agent/impl/performance/coulometry/b/d;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/performance/coulometry/b/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/b/k;->a()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "extractedTrafficCount  trafficCount:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;

    const-string v4, ""

    const-string v5, "KB"

    invoke-direct {v0, v1, v4, v5}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v1, v2

    invoke-direct {p0, v1, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(FJ)Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;

    move-result-object p0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/d;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/b;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;->a(Lcom/networkbench/agent/impl/performance/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 8

    const-string v0, "NBSGlobalSettings.isMainProcess :"

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b;->b()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 166
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 168
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b;->d()V

    .line 169
    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/u;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->g:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/networkbench/agent/impl/util/r;->p:I

    if-nez v0, :cond_3

    .line 172
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/networkbench/agent/impl/performance/coulometry/b$1;

    invoke-direct {v2, p0}, Lcom/networkbench/agent/impl/performance/coulometry/b$1;-><init>(Lcom/networkbench/agent/impl/performance/coulometry/b;)V

    iget v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->d:I

    int-to-long v5, v0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->f:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Lcom/networkbench/agent/impl/performance/b;)V
    .locals 3

    .line 174
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/b;->d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V

    .line 177
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/b;->d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->d(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V

    .line 178
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/b;->d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->c(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V

    .line 179
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/b;->d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/networkbench/agent/impl/performance/coulometry/b;->b(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V

    .line 180
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/b;->d()Lcom/networkbench/agent/impl/performance/coulometry/a/b/c;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/networkbench/agent/impl/performance/coulometry/b;->a(JLcom/networkbench/agent/impl/performance/coulometry/a/b/c;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized c()V
    .locals 3

    const-string v0, "HarvestTimer stop  has an error : "

    monitor-enter p0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/b;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    const-string v0, "NBSCoulometryService: Attempting to stop when not running"

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 74
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 76
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 79
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

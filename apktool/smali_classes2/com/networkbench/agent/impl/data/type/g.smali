.class public Lcom/networkbench/agent/impl/data/type/g;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/a/a;


# static fields
.field private static final a:Ljava/lang/String; = "AppStartData"


# instance fields
.field private b:I

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Lcom/networkbench/agent/impl/k/b;

.field private k:Lcom/networkbench/agent/impl/data/type/p;


# direct methods
.method public constructor <init>(ILcom/networkbench/agent/impl/data/type/p;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    iput p1, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    iput-object p2, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "appStartType is:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppStartData"

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/type/g;->i:J

    new-instance p1, Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/networkbench/agent/impl/k/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/g;->j:Lcom/networkbench/agent/impl/k/b;

    iput-object p3, p1, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->calcDurationWithEndStamp(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {p2}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getDuration()J

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/networkbench/agent/impl/data/type/r;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/g;->b(Ljava/util/Map;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    move-result-object v0

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->e:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    const-string v1, "AppStartData"

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v2, "beginUnit unit or resume unit is null, please check"

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    goto :goto_0

    :cond_2
    const-string v2, "not find beginUnit unit"

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "not find resume unit"

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/networkbench/agent/impl/data/type/g;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    return-void
.end method

.method private b(J)J
    .locals 6

    iget v0, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    :goto_0
    add-long/2addr v2, v4

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->c:J

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->d:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    goto :goto_0

    :goto_1
    const-string v0, "checkTimes duraTime: "

    const-string v4, ", mainActivityCreateTime:"

    invoke-static {p1, p2, v0, v4}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", mainActivityResumeTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppStartData"

    invoke-static {v4, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    iget p1, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    if-ne p1, v1, :cond_1

    iget-wide p1, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    :goto_2
    add-long/2addr p1, v2

    goto :goto_3

    :cond_1
    iget-wide p1, p0, Lcom/networkbench/agent/impl/data/type/g;->c:J

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->d:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    add-long/2addr p1, v0

    goto :goto_2

    :cond_2
    :goto_3
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowStartThreshold()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/g;->g:Z

    :cond_3
    return-wide p1
.end method

.method private b(Ljava/util/Map;)Lcom/networkbench/agent/impl/instrumentation/NBSUnit;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/networkbench/agent/impl/data/type/r;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;)",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;"
        }
    .end annotation

    .line 104
    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->f:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    if-nez p0, :cond_0

    .line 105
    const-string p0, "AppStartData"

    const-string v0, "not find restart unit, continue to find onCreate"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object p0, Lcom/networkbench/agent/impl/data/type/r;->c:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    :cond_0
    return-object p0
.end method

.method private c(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/networkbench/agent/impl/data/type/r;",
            "Lcom/networkbench/agent/impl/instrumentation/NBSUnit;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/data/type/r;->a:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->b:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->c:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    sget-object v3, Lcom/networkbench/agent/impl/data/type/r;->e:Lcom/networkbench/agent/impl/data/type/r;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;

    const-string v3, "AppStartData"

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v4, "attachBaseContext or appCreate or activityCreate or activityResume unit is null, please check"

    invoke-static {v3, v4}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->c:J

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/data/type/g;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/networkbench/agent/impl/data/type/g;->d:J

    invoke-direct {p0, v1, v2}, Lcom/networkbench/agent/impl/data/type/g;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "app start data not find resume unit"

    invoke-static {v3, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/networkbench/agent/impl/data/type/g;->a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/p;->w()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/type/g;->a(Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/type/g;->c(Ljava/util/Map;)V

    return-void
.end method

.method private f()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/g;->g:Z

    return p0
.end method

.method private g()J
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->l()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private h()Z
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->g()J

    move-result-wide v0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowStartThreshold()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private i()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->c:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->d:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->e()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->d()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    const-string v1, "AppStartData"

    const-string v2, "error process hot launch"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->e()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    return-void
.end method

.method public a(J)V
    .locals 4

    .line 57
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v2, p1, p2}, Lcom/networkbench/agent/impl/data/type/p;->f(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    .line 58
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    const-string v0, "setAppLaunchEndTime"

    sget-object v1, Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;->SYNC:Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/networkbench/agent/impl/data/type/p;->a(JLjava/lang/String;Lcom/networkbench/agent/impl/data/type/SlowStartState$CallType;)V

    return-void
.end method

.method public a(JLjava/lang/String;Z)V
    .locals 0

    .line 52
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/data/type/p;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    return-void
.end method

.method public a()Z
    .locals 4

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->q()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1b58

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 9

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->h()Z

    move-result v4

    iput-boolean v4, p0, Lcom/networkbench/agent/impl/data/type/g;->g:Z

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->g()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/data/type/g;->b(J)J

    move-result-wide v4

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v7, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v7, p0, Lcom/networkbench/agent/impl/data/type/g;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v7, p0, Lcom/networkbench/agent/impl/data/type/g;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v7, p0, Lcom/networkbench/agent/impl/data/type/g;->e:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v7, p0, Lcom/networkbench/agent/impl/data/type/g;->f:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v7, p0, Lcom/networkbench/agent/impl/data/type/g;->g:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v6

    invoke-virtual {v6}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/type/g;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/g;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->f()Z

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v7, p0, Lcom/networkbench/agent/impl/data/type/g;->h:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual {v3, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/asyncaction/s;->h()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/asyncaction/s;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/asyncaction/s;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_3
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/g;->j:Lcom/networkbench/agent/impl/k/b;

    iget-object v6, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    if-nez v6, :cond_5

    iget-wide v6, p0, Lcom/networkbench/agent/impl/data/type/g;->i:J

    sub-long/2addr v6, v4

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Lcom/networkbench/agent/impl/asyncaction/s;->g()J

    move-result-wide v6

    :goto_4
    invoke-direct {v0, v1, v2, v6, v7}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V

    new-instance p0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v3
.end method

.method public b()V
    .locals 1

    .line 107
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getAppStartDatas()Lcom/networkbench/agent/impl/data/type/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/type/h;->a(Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;)V

    .line 108
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->c()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/g;->k:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/r;->b(Lcom/networkbench/agent/impl/asyncaction/e;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 4

    .line 82
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x4650

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->i()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/g;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/type/g;->b:I

    return p0
.end method

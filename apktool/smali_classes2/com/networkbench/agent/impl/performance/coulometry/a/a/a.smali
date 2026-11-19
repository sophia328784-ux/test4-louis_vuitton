.class public Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/session/SpanFormat;


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/com/google/gson/JsonObject;
    .locals 5

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->c:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/networkbench/agent/impl/util/r;->g(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceData()Lcom/networkbench/agent/impl/harvest/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    const-string v2, "dev"

    invoke-virtual {v0, v2, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    const-string v1, "errs"

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->c()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->d:J

    return-void
.end method

.method public declared-synchronized a(Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;)V
    .locals 2

    const-string v0, "addErrorInfo debuglog has error :"

    monitor-enter p0

    if-nez p1, :cond_0

    .line 90
    :try_start_0
    const-string p1, "addErrorInfo : null"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->m(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 92
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a:Z

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->b()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TingyunSDK_customError"

    invoke-static {p1, v1}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 97
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/networkbench/agent/impl/performance/coulometry/a/a/c;[Ljava/lang/StackTraceElement;)V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string p1, "addErrorInfo  isBatteryErrorEnabled is false"

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/g;->y(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {v0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;-><init>(I[Ljava/lang/StackTraceElement;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a(Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 2

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;->b()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public checkData()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->c:I

    return p0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->d:J

    return-wide v0
.end method

.method public formatInfo()Ljava/lang/String;
    .locals 4

    const-string v0, "batteryAbnormal"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->checkData()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a:Z

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a:Z

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a:Z

    return-object v0

    :goto_0
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->a:Z

    throw v0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/performance/coulometry/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/performance/coulometry/a/a/a;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.class public Lcom/linkplay/core/model/DelayedTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private MAX_DELAYED:J

.field private end:J

.field private isFirstDelayed:Z

.field public isRefreshing:Z

.field private start:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/linkplay/core/model/DelayedTimer;->start:J

    iput-wide v0, p0, Lcom/linkplay/core/model/DelayedTimer;->end:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/model/DelayedTimer;->isRefreshing:Z

    iput-wide p1, p0, Lcom/linkplay/core/model/DelayedTimer;->MAX_DELAYED:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/linkplay/core/model/DelayedTimer;->isFirstDelayed:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized isRefreshing()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/linkplay/core/model/DelayedTimer;->isRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isValidate()Z
    .locals 7

    iget-boolean v0, p0, Lcom/linkplay/core/model/DelayedTimer;->isFirstDelayed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/linkplay/core/model/DelayedTimer;->isFirstDelayed:Z

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/linkplay/core/model/DelayedTimer;->isRefreshing:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/linkplay/core/model/DelayedTimer;->start:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/linkplay/core/model/DelayedTimer;->MAX_DELAYED:J

    cmp-long p0, v3, v5

    if-lez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public declared-synchronized resetDelayedTimer()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/linkplay/core/model/DelayedTimer;->start:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/linkplay/core/model/DelayedTimer;->isRefreshing:Z
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

.method public declared-synchronized setRefreshTime(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/linkplay/core/model/DelayedTimer;->isRefreshing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateStartTime()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/linkplay/core/model/DelayedTimer;->start:J
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

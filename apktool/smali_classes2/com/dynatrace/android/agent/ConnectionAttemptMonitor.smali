.class public final Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$Delays;,
        Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/util/Timer;

.field public d:Z

.field public e:Z

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v0, "dtxConnectionAttemptMonitor"

    sput-object v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4

    iput-wide v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b()Ljava/util/Date;
    .locals 9

    new-instance v0, Ljava/util/Date;

    sget-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget-wide v1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    iput-wide v3, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    return-object v2

    :cond_1
    iget-wide v5, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    const-wide/32 v7, 0x1d4c00

    cmp-long v1, v5, v7

    const-wide/32 v7, 0x342f60

    if-nez v1, :cond_2

    iput-wide v7, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    return-object v0

    :cond_2
    cmp-long v1, v5, v7

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    const-wide/16 v1, 0x2

    mul-long/2addr v5, v1

    iput-wide v5, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    return-object v0

    :cond_4
    :goto_0
    return-object v2
.end method

.method public final declared-synchronized c(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e:Z

    iget-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "Connection ok notification"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->d:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a:J

    iput-wide v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a()V

    goto :goto_1

    :cond_1
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "No connection notification"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    iget-boolean p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->d:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;

    if-nez p1, :cond_3

    iget-wide v2, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_3

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e(Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(I)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e:Z

    iget-object v1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/Date;

    sget-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    int-to-long v3, p1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    add-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e(Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized e(Ljava/util/Date;)V
    .locals 4

    const-string v0, "Failed to schedule a connection attempt ... "

    const-string v1, "Connection attempt is scheduled for "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->g:Ljava/util/Date;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/Timer;

    sget-object v2, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->h:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$AttemptTimer;-><init>(Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;Lcom/dynatrace/android/agent/ConnectionAttemptMonitor$1;)V

    iget-object v3, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->g:Ljava/util/Date;

    invoke-virtual {p1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->g:Ljava/util/Date;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

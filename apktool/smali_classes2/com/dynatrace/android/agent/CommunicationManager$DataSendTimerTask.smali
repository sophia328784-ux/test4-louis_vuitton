.class Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dynatrace/android/agent/CommunicationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataSendTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dynatrace/android/agent/CommunicationManager;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    const-string v0, "invalid DataSendTimerTask appeared"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/CommunicationManager;->i()V

    return-void

    :cond_1
    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const-wide/32 v3, 0x6ddd00

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    monitor-exit v0

    goto/16 :goto_3

    :cond_2
    :try_start_1
    iget-boolean v1, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e:Z

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c:Ljava/util/Timer;

    if-nez v1, :cond_8

    iget-wide v8, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a:J

    cmp-long v1, v8, v5

    if-lez v1, :cond_3

    iget-wide v8, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/32 v10, 0x342f60

    cmp-long v1, v8, v10

    if-ltz v1, :cond_8

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_3
    :goto_0
    monitor-exit v0

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    iget-object v8, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-wide v8, v8, Lcom/dynatrace/android/agent/CommunicationManager;->q:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    sget-boolean v8, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v8, :cond_4

    sget-object v8, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    const-string v8, "connection attempts exhausted - scheduling recovery in 2 hours"

    invoke-static {v8}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    add-long v12, v0, v3

    iput-wide v12, v8, Lcom/dynatrace/android/agent/CommunicationManager;->q:J

    :cond_5
    iget-object v8, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-wide v8, v8, Lcom/dynatrace/android/agent/CommunicationManager;->q:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_19

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    const-string v0, "try to recover connection after 2 hours of sleep"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iput-wide v10, v0, Lcom/dynatrace/android/agent/CommunicationManager;->q:J

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e:Z

    iget-object v1, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_7

    const-string v1, "Connection stop notification"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    new-instance v1, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;-><init>()V

    iput-object v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    monitor-exit v0

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    iget-object v8, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-wide v9, v8, Lcom/dynatrace/android/agent/CommunicationManager;->p:J

    sub-long/2addr v0, v9

    iget-object v9, v8, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    iget-boolean v10, v9, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->d:Z

    if-eqz v10, :cond_a

    iget-boolean v10, v9, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e:Z

    if-nez v10, :cond_a

    iget-wide v10, v9, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->b:J

    cmp-long v10, v10, v5

    if-lez v10, :cond_a

    iget-object v8, v8, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v9, v9, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v8, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v8, v8, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_a

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_19

    sget-object v2, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    const-string v2, "ReconnWait: mUemActive=%b lastCheck=%ds ago"

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-void

    :cond_a
    cmp-long v0, v0, v3

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->u:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    if-eqz v0, :cond_c

    const-string v0, "taskTimer: keep waiting for the GET request executed via BPv4"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    iget-object v0, v0, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v7

    goto :goto_4

    :cond_d
    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_e
    :goto_5
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iget-object v3, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v3, v3, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    const-string v4, "TaskTimer mForceUemUpdate="

    const-string v8, " mUemActive="

    const-string v9, " waitingForInitialBPv4Config="

    invoke-static {v4, v8, v9, v0, v1}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_9

    :cond_10
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->r:Lcom/dynatrace/android/agent/CalloutTable;

    iget-object v1, v0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_4
    iget-wide v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    cmp-long v8, v3, v5

    const-wide/16 v9, 0x1

    if-lez v8, :cond_12

    sub-long/2addr v3, v9

    iput-wide v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->b:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_11

    move v2, v7

    :cond_11
    monitor-exit v1

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_12
    iget-object v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    iget-object v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v11, v3, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    sub-long/2addr v11, v9

    iput-wide v11, v3, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    cmp-long v3, v11, v5

    if-nez v3, :cond_15

    :cond_13
    iget-object v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    iget-object v3, v0, Lcom/dynatrace/android/agent/CalloutTable;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/android/agent/CalloutTable$CTElement;

    iget-wide v3, v3, Lcom/dynatrace/android/agent/CalloutTable$CTElement;->b:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_13

    :cond_14
    monitor-exit v1

    move v2, v7

    goto :goto_6

    :cond_15
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_6
    if-eqz v2, :cond_16

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_16
    sget-object v0, Lcom/dynatrace/android/agent/CustomSegment;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v7, :cond_17

    iget-object v1, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_8

    :goto_7
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_17
    :goto_8
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_18

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    const-string v0, "TaskTimer mForceSendEvent=%s thread ID=%d"

    iget-object v1, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v2, v2, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->f(Ljava/lang/Thread;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    :goto_9
    return-void

    :cond_1a
    :goto_a
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;->this$0:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->p:J

    return-void

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :goto_b
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.class public Lcom/dynatrace/android/agent/CommunicationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;,
        Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;,
        Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;,
        Lcom/dynatrace/android/agent/CommunicationManager$SendState;,
        Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public a:Lcom/dynatrace/android/agent/db/DataAccessObject;

.field public b:Lcom/dynatrace/android/agent/comm/RequestExecutor;

.field public final c:Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;

.field public final d:Lcom/dynatrace/android/agent/TimeLineProvider;

.field public final e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Lcom/dynatrace/agent/communication/api/AgentState;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public l:Ljava/lang/Thread;

.field public m:Ljava/util/Timer;

.field public n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

.field public o:Z

.field public p:J

.field public q:J

.field public final r:Lcom/dynatrace/android/agent/CalloutTable;

.field public s:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

.field public t:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

.field public volatile u:Z

.field public volatile v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    const-string v0, "dtxCommunicationManager"

    sput-object v0, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/CalloutTable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->c:Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;

    sget-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->g:Ljava/lang/Object;

    new-instance v0, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;-><init>(Z)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->h:Lcom/dynatrace/agent/communication/api/AgentState;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->o:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/dynatrace/android/agent/CommunicationManager;->p:J

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/dynatrace/android/agent/CommunicationManager;->q:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->s:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->t:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->u:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->r:Lcom/dynatrace/android/agent/CalloutTable;

    new-instance p1, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    invoke-direct {p1, p0}, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;)V

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    return-void
.end method

.method public static a(Lcom/dynatrace/android/agent/CommunicationManager;Z)V
    .locals 22

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p1, :cond_1

    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v3

    iget v1, v2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    if-lez v1, :cond_0

    move v10, v11

    :cond_0
    invoke-virtual {v0, v3, v4, v10}, Lcom/dynatrace/android/agent/db/DataAccessObject;->a(JZ)V

    return-void

    :cond_1
    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v12

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v11, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-wide v3, v12, Lcom/dynatrace/android/agent/data/Session;->b:J

    iget-object v5, v1, Lcom/dynatrace/android/agent/CommunicationManager;->e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Write.lock"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v7, v5, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->b:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v7, v7, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v7}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    sub-long/2addr v7, v13

    const-wide/32 v13, 0xea60

    cmp-long v7, v7, v13

    if-lez v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    move v0, v10

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    iput-object v6, v5, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_4
    move v0, v11

    :goto_0
    xor-int/2addr v0, v11

    goto :goto_1

    :catch_1
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    move v0, v10

    :goto_1
    if-nez v0, :cond_5

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->NO_DATA:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    goto/16 :goto_b

    :cond_5
    const/4 v13, 0x0

    :try_start_2
    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v5

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->flushQueue()V

    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iget v7, v2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    if-lez v7, :cond_6

    move v7, v11

    goto :goto_2

    :cond_6
    move v7, v10

    :goto_2
    invoke-virtual {v0, v5, v6, v7}, Lcom/dynatrace/android/agent/db/DataAccessObject;->a(JZ)V

    iget v0, v2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    if-lez v0, :cond_7

    move v5, v11

    goto :goto_3

    :cond_7
    move v5, v10

    :goto_3
    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v6, v5, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    sget v7, Lcom/dynatrace/android/agent/db/EventsDbHelper;->e:I

    invoke-virtual {v6, v7, v0}, Lcom/dynatrace/android/agent/db/EventsDbHelper;->d(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    :try_start_4
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :goto_5
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_d

    :cond_8
    :goto_6
    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iget v5, v2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->a:I

    int-to-long v5, v5

    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x5

    sub-long/2addr v5, v7

    iget-object v7, v1, Lcom/dynatrace/android/agent/CommunicationManager;->c:Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;

    invoke-virtual {v0, v5, v6, v7}, Lcom/dynatrace/android/agent/db/DataAccessObject;->b(JLcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;)Lcom/dynatrace/android/agent/db/MonitoringDataEntity;

    move-result-object v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->NO_DATA:Lcom/dynatrace/android/agent/CommunicationManager$SendState;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v3, v1, Lcom/dynatrace/android/agent/CommunicationManager;->e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    iget-object v4, v3, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;

    if-eqz v4, :cond_d

    :goto_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    iput-object v13, v3, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;

    goto :goto_b

    :cond_9
    :try_start_8
    iget-boolean v5, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->g:Z

    xor-int/lit8 v9, v5, 0x1

    iget-wide v6, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->a:J

    cmp-long v3, v6, v3

    if-nez v3, :cond_a

    move v5, v11

    goto :goto_8

    :cond_a
    move v5, v10

    :goto_8
    iget-object v3, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->f:Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

    iget v4, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->d:I

    iget v8, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->b:I

    invoke-virtual/range {v1 .. v9}, Lcom/dynatrace/android/agent/CommunicationManager;->e(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJIZ)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->DATA_NOT_SENT:Lcom/dynatrace/android/agent/CommunicationManager$SendState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v3, v1, Lcom/dynatrace/android/agent/CommunicationManager;->e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    iget-object v4, v3, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_b
    :try_start_9
    iget-object v3, v1, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v14, v3, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    iget-wide v4, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->a:J

    iget v6, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->b:I

    iget v7, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->c:I

    iget v8, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->d:I

    iget-wide v10, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->e:J

    move-wide v15, v4

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move-wide/from16 v17, v10

    invoke-virtual/range {v14 .. v21}, Lcom/dynatrace/android/agent/db/EventsDbHelper;->e(JJIII)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :catch_3
    :try_start_b
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_9
    :try_start_c
    monitor-exit v3

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/db/MonitoringDataEntity;->g:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->FINISHED:Lcom/dynatrace/android/agent/CommunicationManager$SendState;

    goto :goto_a

    :cond_c
    sget-object v0, Lcom/dynatrace/android/agent/CommunicationManager$SendState;->MORE_DATA_AVAILABLE:Lcom/dynatrace/android/agent/CommunicationManager$SendState;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_a
    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v3, v1, Lcom/dynatrace/android/agent/CommunicationManager;->e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    iget-object v4, v3, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;

    if-eqz v4, :cond_d

    goto :goto_7

    :cond_d
    :goto_b
    sget-object v3, Lcom/dynatrace/android/agent/CommunicationManager$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_12

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    const/4 v3, 0x3

    if-eq v0, v3, :cond_f

    const/4 v3, 0x4

    if-eq v0, v3, :cond_e

    goto/16 :goto_e

    :cond_e
    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v2, v12}, Lcom/dynatrace/android/agent/CommunicationManager;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/data/Session;)V

    goto/16 :goto_e

    :cond_f
    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_e

    :cond_10
    const/4 v3, 0x1

    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v3

    iget-object v4, v1, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_11

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_e

    :cond_11
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2, v0}, Lcom/dynatrace/android/agent/CommunicationManager;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/data/Session;)V

    goto :goto_e

    :cond_12
    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v3

    iget-object v4, v1, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_13

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_e

    :cond_13
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2, v0}, Lcom/dynatrace/android/agent/CommunicationManager;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/data/Session;)V

    goto :goto_e

    :goto_c
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_d
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->e:Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;

    iget-object v2, v1, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iput-object v13, v1, Lcom/dynatrace/android/agent/CommunicationManager$WriteLock;->a:Ljava/io/File;

    :cond_14
    throw v0

    :cond_15
    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v1, v2, v12}, Lcom/dynatrace/android/agent/CommunicationManager;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/data/Session;)V

    return-void

    :cond_16
    invoke-virtual {v12}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v2, v12}, Lcom/dynatrace/android/agent/CommunicationManager;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/data/Session;)V

    :cond_17
    :goto_e
    return-void
.end method


# virtual methods
.method public final b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/data/Session;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    iget-object v2, v1, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iget-object v3, v1, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v3

    move-object/from16 v6, p1

    iget v5, v6, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->e:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-lez v5, :cond_0

    move v5, v15

    goto :goto_0

    :cond_0
    move v5, v14

    :goto_0
    invoke-virtual {v2, v3, v4, v5}, Lcom/dynatrace/android/agent/db/DataAccessObject;->a(JZ)V

    :try_start_0
    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    iget-object v5, v1, Lcom/dynatrace/android/agent/CommunicationManager;->b:Lcom/dynatrace/android/agent/comm/RequestExecutor;

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v9, v2, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v10, v0, Lcom/dynatrace/android/agent/data/Session;->b:J

    iget v12, v0, Lcom/dynatrace/android/agent/data/Session;->c:I

    const/4 v13, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v13}, Lcom/dynatrace/android/agent/comm/RequestExecutor;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLjava/lang/String;IJIZ)Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v15}, Lcom/dynatrace/android/agent/CommunicationManager;->c(Lcom/dynatrace/android/agent/data/Session;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v15}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c(Z)V

    :cond_1
    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2

    const-string v2, "beacon request failed"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Lcom/dynatrace/android/agent/CommunicationManager;->d(Ljava/lang/Exception;)V

    :goto_2
    iget-object v0, v1, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v15, :cond_4

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_5

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UEM state update: UEM state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mForceUemUpdate: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final c(Lcom/dynatrace/android/agent/data/Session;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V
    .locals 7

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v1, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-wide v3, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    iget-wide v5, v2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    cmp-long v2, v3, v5

    if-ltz v2, :cond_8

    iget v2, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/dynatrace/android/agent/CommunicationManager;->h:Lcom/dynatrace/agent/communication/api/AgentState;

    instance-of v2, v2, Lcom/dynatrace/agent/communication/api/AgentState$Enabled;

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/dynatrace/android/agent/CommunicationManager;->f(Z)V

    iget-object v2, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    sget-object v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->ERROR:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    if-ne v2, v5, :cond_2

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    goto :goto_3

    :cond_2
    iget-object v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    const-string v2, "ServerConfig"

    iget-object v1, v1, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->h(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_2
    sget-boolean v5, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_3
    invoke-static {p2}, Lcom/dynatrace/android/agent/Core;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/dynatrace/android/agent/CommunicationManager;->t:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    if-eqz p3, :cond_3

    invoke-interface {p3, p2}, Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    :cond_3
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result p3

    if-nez p3, :cond_7

    iget-object p3, p0, Lcom/dynatrace/android/agent/CommunicationManager;->g:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    invoke-virtual {p1}, Lcom/dynatrace/android/agent/data/Session;->f()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, p2}, Lcom/dynatrace/android/agent/data/Session;->d(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    move v3, v4

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_9

    :cond_4
    :goto_4
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_7

    iget-object p2, p0, Lcom/dynatrace/android/agent/CommunicationManager;->s:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    if-eqz p2, :cond_5

    new-instance p3, Ls3;

    const/16 v0, 0x12

    invoke-direct {p3, p1, v0}, Ls3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, p3}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    :cond_5
    invoke-virtual {p1}, Lcom/dynatrace/android/agent/data/Session;->e()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iget-wide v0, p1, Lcom/dynatrace/android/agent/data/Session;->b:J

    iget p0, p1, Lcom/dynatrace/android/agent/data/Session;->c:I

    monitor-enter p2

    :try_start_4
    iget-object p1, p2, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p3, "Events"

    const-string v2, "visitor_id= ? AND session_id= ?"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p3, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_1
    :try_start_5
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    monitor-exit p2

    goto :goto_7

    :goto_6
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :cond_6
    sget-boolean p2, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->flushQueue()V

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    monitor-enter p0

    :try_start_7
    iget-object p2, p0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {p2, p1}, Lcom/dynatrace/android/agent/db/EventsDbHelper;->j(Lcom/dynatrace/android/agent/data/Session;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    goto :goto_7

    :catchall_3
    move-exception p1

    goto :goto_8

    :catch_2
    :try_start_8
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    :goto_7
    sget-object p0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_a

    :goto_8
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    :goto_9
    :try_start_a
    monitor-exit p3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0

    :cond_7
    :goto_a
    return-void

    :cond_8
    :try_start_b
    const-string p0, "discard too old configuration"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p0
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 4

    instance-of v0, p1, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dynatrace/android/agent/comm/InvalidResponseException;

    iget-object p1, p1, Lcom/dynatrace/android/agent/comm/InvalidResponseException;->b:Lcom/dynatrace/android/agent/comm/HttpResponse;

    iget v0, p1, Lcom/dynatrace/android/agent/comm/HttpResponse;->a:I

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_0

    iget-object p1, p1, Lcom/dynatrace/android/agent/comm/HttpResponse;->d:Ljava/util/Map;

    const-string v0, "Retry-After"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/CommunicationManager;->f(Z)V

    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->flushQueue()V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->g:Lcom/dynatrace/android/agent/db/DataAccessObject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "Events"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->d(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/CommunicationManager;->f(Z)V

    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c(Z)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final e(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJIZ)Z
    .locals 14

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v3, v2, Lcom/dynatrace/android/agent/AdkSettings;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p4, :cond_0

    invoke-static {v0}, Lcom/dynatrace/android/agent/BasicSegment;->a(Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    move v3, v1

    goto :goto_2

    :cond_0
    move v3, v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/dynatrace/android/agent/CommunicationManager;->b:Lcom/dynatrace/android/agent/comm/RequestExecutor;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->a:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "&"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    move-object v6, p1

    move/from16 v9, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lcom/dynatrace/android/agent/comm/RequestExecutor;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;ZLjava/lang/String;IJIZ)Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    move-result-object p1

    if-eqz v3, :cond_3

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {v0, v4}, Lcom/dynatrace/android/agent/AdkSettings;->a(Z)V

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v4}, Lcom/dynatrace/android/agent/CommunicationManager;->c(Lcom/dynatrace/android/agent/data/Session;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->c(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return v4

    :goto_2
    if-eqz v3, :cond_5

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/CommunicationManager;->d(Ljava/lang/Exception;)V

    return v1
.end method

.method public final f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->s:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    if-eqz p0, :cond_0

    new-instance v0, Lwm;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lwm;-><init>(ZI)V

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/CommunicationManager;->f(Z)V

    iget-object v1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->f(Ljava/lang/Thread;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Shutdown allocated time: 5000 ms threadId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v2

    monitor-enter v1

    :try_start_0
    iget-boolean v4, p0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    if-eqz v4, :cond_1

    const-string v4, "cannot flush events while still waiting for BPv4 configuration"

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iput-boolean v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->o:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/dynatrace/android/agent/CommunicationManager;->b:Lcom/dynatrace/android/agent/comm/RequestExecutor;

    iget-object v4, v4, Lcom/dynatrace/android/agent/comm/RequestExecutor;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput-boolean v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->f(Ljava/lang/Thread;)J

    move-result-wide v0

    const-string p0, "Shutdown took: "

    const-string v2, " ms threadID="

    invoke-static {v4, v5, p0, v2}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final declared-synchronized h(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p1, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->g:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->e(Ljava/util/Date;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_2
    :goto_0
    new-instance p1, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    invoke-direct {p1}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    :goto_1
    new-instance v0, Ljava/util/Timer;

    sget-object p1, Lcom/dynatrace/android/agent/CommunicationManager;->w:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    new-instance v1, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;

    invoke-direct {v1, p0}, Lcom/dynatrace/android/agent/CommunicationManager$DataSendTimerTask;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;)V

    iget-boolean p1, p0, Lcom/dynatrace/android/agent/CommunicationManager;->o:Z

    if-eqz p1, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v2, 0x64

    :goto_2
    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final declared-synchronized i()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->m:Ljava/util/Timer;

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->r:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/CalloutTable;->d()V

    iget-object v0, p0, Lcom/dynatrace/android/agent/CommunicationManager;->n:Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/ConnectionAttemptMonitor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

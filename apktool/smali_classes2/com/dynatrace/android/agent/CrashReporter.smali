.class public Lcom/dynatrace/android/agent/CrashReporter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/crash/CrashListener;


# static fields
.field public static final synthetic c:I


# instance fields
.field public final a:Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;

.field public final b:Lcom/dynatrace/android/agent/CommunicationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/agent/CommunicationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/CrashReporter;->b:Lcom/dynatrace/android/agent/CommunicationManager;

    new-instance p1, Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;

    invoke-direct {p1}, Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/CrashReporter;->a:Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->m:Lcom/dynatrace/android/agent/data/RandomFactory;

    sget-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    iget-object v2, p0, Lcom/dynatrace/android/agent/CrashReporter;->b:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/CommunicationManager;->i()V

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/data/Session;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/dynatrace/android/agent/CrashReporter;->c(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/dynatrace/android/agent/data/Session;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {}, Lcom/dynatrace/android/agent/Core;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/Thread;Ljava/lang/Throwable;Lcom/dynatrace/android/agent/data/Session;I)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    sget-object v2, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v7

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v2, v5, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->CRASH:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v2

    const-string v12, "a crash"

    if-nez v2, :cond_0

    invoke-static {v12}, Lcom/dynatrace/android/agent/Core;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v2, v2, Lcom/dynatrace/android/agent/conf/Configuration;->u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    iget-object v3, v0, Lcom/dynatrace/android/agent/CrashReporter;->a:Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;->a(Ljava/lang/Throwable;Lcom/dynatrace/agent/common/InstrumentationFlavor;)Lcom/dynatrace/android/agent/crash/StacktraceProcessor;

    move-result-object v3

    invoke-interface {v3}, Lcom/dynatrace/android/agent/crash/StacktraceProcessor;->a()Lcom/dynatrace/android/agent/crash/StacktraceData;

    move-result-object v3

    iget-object v4, v3, Lcom/dynatrace/android/agent/crash/StacktraceData;->a:Ljava/lang/String;

    sget-object v6, Lcom/dynatrace/agent/common/InstrumentationFlavor;->REACT_NATIVE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-ne v2, v6, :cond_1

    if-eqz v4, :cond_1

    const-string v2, "JavascriptException"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v12}, Lcom/dynatrace/android/agent/Core;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "reportCrash, thread: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", throwable: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", serverId: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-boolean v2, v5, Lcom/dynatrace/android/agent/data/Session;->k:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    const-string v2, "crash event: "

    :try_start_0
    invoke-static {v1, v15}, Lcom/dynatrace/agent/events/error/ErrorEvent;->a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "characteristics.has_crash"

    invoke-virtual {v1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v9, "error.is_fatal"

    invoke-virtual {v1, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v1

    goto :goto_0

    :catch_0
    const-string v1, "crash event can\'t be generated"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    move-object v10, v14

    :goto_0
    if-eqz v10, :cond_2

    move v1, v6

    sget-object v6, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;

    const/4 v11, 0x0

    invoke-static {v5}, Lcom/dynatrace/android/agent/mixed/SessionInformationGenerator;->a(Lcom/dynatrace/android/agent/data/Session;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v9

    move/from16 v16, v1

    invoke-virtual/range {v6 .. v11}, Lcom/dynatrace/agent/OneAgentFacade;->a(JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lorg/json/JSONObject;Z)V

    goto :goto_1

    :cond_2
    move/from16 v16, v6

    goto :goto_1

    :cond_3
    move/from16 v16, v6

    const-string v1, "reportCrash can\'t be executed: Grail is disabled"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/dynatrace/android/agent/CrashSegment;

    iget-object v2, v3, Lcom/dynatrace/android/agent/crash/StacktraceData;->b:Ljava/lang/String;

    move-object v6, v2

    move-object v2, v4

    iget-object v4, v3, Lcom/dynatrace/android/agent/crash/StacktraceData;->c:Ljava/lang/String;

    iget-object v3, v3, Lcom/dynatrace/android/agent/crash/StacktraceData;->d:Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/crash/PlatformType;->a()Ljava/lang/String;

    move-result-object v7

    iget-boolean v3, v5, Lcom/dynatrace/android/agent/data/Session;->k:Z

    xor-int/lit8 v8, v3, 0x1

    move-object v3, v6

    move v6, v13

    invoke-direct/range {v1 .. v8}, Lcom/dynatrace/android/agent/CrashSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V

    invoke-static {v12}, Lcom/dynatrace/android/agent/Core;->e(Ljava/lang/String;)V

    iget v6, v5, Lcom/dynatrace/android/agent/data/Session;->d:I

    const/4 v2, -0x1

    if-ne v6, v2, :cond_4

    move/from16 v6, v16

    :cond_4
    invoke-virtual {v5}, Lcom/dynatrace/android/agent/data/Session;->e()Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    goto/16 :goto_6

    :cond_5
    iget-object v13, v0, Lcom/dynatrace/android/agent/CrashReporter;->b:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/CrashSegment;->h()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v13, Lcom/dynatrace/android/agent/CommunicationManager;->c:Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;

    iget-wide v3, v5, Lcom/dynatrace/android/agent/data/Session;->a:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v14, v3, v4}, Lcom/dynatrace/android/agent/BasicSegment$UpdatableDataGenerator;->a(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;

    iget-object v4, v1, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-static {v4}, Lcom/dynatrace/android/agent/Core;->f(Lcom/dynatrace/android/agent/data/Session;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_6

    move/from16 v6, v16

    goto :goto_2

    :cond_6
    move v6, v15

    :goto_2
    iget-wide v7, v1, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-nez v0, :cond_7

    move/from16 v17, v16

    goto :goto_3

    :cond_7
    move/from16 v17, v15

    :goto_3
    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v14, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    if-eqz v6, :cond_8

    move v0, v15

    move-object v15, v14

    move-object v14, v13

    new-instance v13, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;

    iget-wide v6, v5, Lcom/dynatrace/android/agent/data/Session;->b:J

    iget v2, v5, Lcom/dynatrace/android/agent/data/Session;->c:I

    const/16 v22, 0x0

    move/from16 v21, v2

    move-object/from16 v16, v3

    move-wide/from16 v19, v6

    move/from16 v18, v17

    move/from16 v17, p4

    invoke-direct/range {v13 .. v22}, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJILcom/dynatrace/android/agent/CommunicationManager$1;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-virtual {v13, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_4
    invoke-static {v13}, Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;->access$300(Lcom/dynatrace/android/agent/CommunicationManager$PostCrashReportThread;)Z

    move-result v2

    goto :goto_5

    :cond_8
    move-object v2, v14

    move v0, v15

    move-object v15, v3

    move-object v14, v13

    iget-wide v3, v5, Lcom/dynatrace/android/agent/data/Session;->b:J

    iget v5, v5, Lcom/dynatrace/android/agent/data/Session;->c:I

    const/16 v21, 0x0

    move/from16 v16, p4

    move-wide/from16 v18, v3

    move/from16 v20, v5

    move-object v14, v2

    invoke-virtual/range {v13 .. v21}, Lcom/dynatrace/android/agent/CommunicationManager;->e(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lcom/dynatrace/android/agent/comm/MonitoringDataPacket;IZJIZ)Z

    move-result v2

    :goto_5
    if-nez v2, :cond_9

    iput-boolean v0, v1, Lcom/dynatrace/android/agent/CrashSegment;->z:Z

    iget v0, v1, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {v1, v0}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    :cond_9
    :goto_6
    return-void
.end method

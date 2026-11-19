.class public final Lcom/dynatrace/android/agent/Core;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

.field public static final b:Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;

.field public static final c:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;

.field public static final d:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;

.field public static final e:Lcom/dynatrace/android/window/WindowCallbackMonitor;

.field public static final f:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

.field public static g:Lcom/dynatrace/android/agent/db/DataAccessObject;

.field public static h:Lcom/dynatrace/android/agent/BasicSegment;

.field public static i:J

.field public static final j:Lcom/dynatrace/android/agent/CalloutTable;

.field public static final k:Lcom/dynatrace/android/agent/CommunicationManager;

.field public static l:Lcom/dynatrace/agent/OneAgentFacade;

.field public static final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final n:Lcom/dynatrace/android/agent/AdkSettings;

.field public static final o:Lcom/dynatrace/android/agent/CrashReporter;

.field public static p:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

.field public static q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

.field public static r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

.field public static s:Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;

.field public static t:Lcom/dynatrace/agent/OneAgentStartup;

.field public static u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

.field public static v:Lcom/dynatrace/agent/events/EventThrottler;

.field public static w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

.field public static x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    invoke-direct {v0}, Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    new-instance v0, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;

    invoke-direct {v0}, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->b:Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;

    new-instance v0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;

    invoke-direct {v0}, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->c:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;

    new-instance v0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;

    invoke-direct {v0}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->d:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;

    new-instance v0, Lcom/dynatrace/android/window/WindowCallbackMonitor;

    invoke-direct {v0}, Lcom/dynatrace/android/window/WindowCallbackMonitor;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->e:Lcom/dynatrace/android/window/WindowCallbackMonitor;

    new-instance v0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->f:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    const/4 v0, 0x0

    sput-object v0, Lcom/dynatrace/android/agent/Core;->h:Lcom/dynatrace/android/agent/BasicSegment;

    const-wide/16 v1, 0xc

    sput-wide v1, Lcom/dynatrace/android/agent/Core;->i:J

    new-instance v1, Lcom/dynatrace/android/agent/CalloutTable;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/dynatrace/android/agent/CalloutTable;-><init>(I)V

    sput-object v1, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    new-instance v2, Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-direct {v2, v1}, Lcom/dynatrace/android/agent/CommunicationManager;-><init>(Lcom/dynatrace/android/agent/CalloutTable;)V

    sput-object v2, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/dynatrace/android/agent/Core;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    sput-object v1, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    new-instance v1, Lcom/dynatrace/android/agent/CrashReporter;

    invoke-direct {v1, v2}, Lcom/dynatrace/android/agent/CrashReporter;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;)V

    sput-object v1, Lcom/dynatrace/android/agent/Core;->o:Lcom/dynatrace/android/agent/CrashReporter;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->p:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->s:Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->v:Lcom/dynatrace/agent/events/EventThrottler;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;IJLcom/dynatrace/android/agent/DTXActionImpl;Lcom/dynatrace/android/agent/data/Session;I[Ljava/lang/String;)Lcom/dynatrace/android/agent/CustomSegment;
    .locals 15

    move/from16 v11, p1

    move-object/from16 v0, p4

    move-object/from16 v6, p5

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Handle event name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-gez v4, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    move-wide/from16 v4, p2

    :goto_0
    sget-object v12, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    const/4 v8, 0x1

    if-eq v11, v8, :cond_11

    const/4 v9, 0x2

    if-eq v11, v9, :cond_10

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eq v11, v0, :cond_d

    const/16 v0, 0x14

    const/4 v3, 0x3

    const/4 v10, 0x0

    if-eq v11, v0, :cond_b

    const/16 v0, 0x15

    if-eq v11, v0, :cond_9

    const/16 v13, 0xfa

    packed-switch v11, :pswitch_data_0

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "addEvent invalid type: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_2
    move-object v0, v2

    goto/16 :goto_2

    :pswitch_0
    new-instance v0, Lcom/dynatrace/android/agent/CustomSegment;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->IDENTIFY_USER:Lcom/dynatrace/android/agent/EventType;

    iget-boolean v2, v6, Lcom/dynatrace/android/agent/data/Session;->k:Z

    xor-int/2addr v8, v2

    const/16 v2, 0xc

    move-object v1, p0

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lcom/dynatrace/android/agent/CrashSegment;

    aget-object v2, p7, v10

    aget-object v3, p7, v8

    aget-object v1, p7, v9

    iget-boolean v4, v6, Lcom/dynatrace/android/agent/data/Session;->k:Z

    xor-int/lit8 v7, v4, 0x1

    move/from16 v5, p6

    move-object v4, v6

    move-object v6, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/dynatrace/android/agent/CrashSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    aget-object v2, p7, v9

    aget-object v3, p7, v10

    aget-object v4, p7, v8

    invoke-static {v2, p0, v3, v4}, Lcom/dynatrace/android/agent/crash/CrashCatcher;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/dynatrace/android/agent/ErrorSegment;

    aget-object v2, p7, v10

    move v7, v3

    aget-object v3, p7, v8

    move-wide v13, v4

    aget-object v4, p7, v9

    aget-object v9, p7, v7

    iget-boolean v5, v6, Lcom/dynatrace/android/agent/data/Session;->k:Z

    xor-int/lit8 v10, v5, 0x1

    move-object v1, p0

    move/from16 v8, p6

    move-object v7, v6

    move-wide v5, v13

    invoke-direct/range {v0 .. v10}, Lcom/dynatrace/android/agent/ErrorSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto/16 :goto_2

    :pswitch_3
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/dynatrace/android/agent/CustomSegment;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->ERROR_INT:Lcom/dynatrace/android/agent/EventType;

    iget-boolean v1, v6, Lcom/dynatrace/android/agent/data/Session;->k:Z

    xor-int/2addr v8, v1

    const/4 v2, 0x6

    move-object v1, p0

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    aget-object v1, p7, v10

    invoke-static {v13, v1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto/16 :goto_2

    :pswitch_4
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/dynatrace/android/agent/CustomSegment;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->VALUE_STRING:Lcom/dynatrace/android/agent/EventType;

    const/4 v8, 0x1

    const/4 v2, 0x6

    move-object v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    aget-object v1, p7, v10

    invoke-static {v13, v1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto/16 :goto_2

    :pswitch_5
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_1

    :cond_7
    new-instance v0, Lcom/dynatrace/android/agent/CustomSegment;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->VALUE_DOUBLE:Lcom/dynatrace/android/agent/EventType;

    const/4 v8, 0x1

    const/4 v2, 0x6

    move-object v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    aget-object v1, p7, v10

    invoke-static {v13, v1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto/16 :goto_2

    :pswitch_6
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/dynatrace/android/agent/CustomSegment;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->VALUE_INT64:Lcom/dynatrace/android/agent/EventType;

    const/4 v8, 0x1

    const/4 v2, 0x6

    move-object v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    aget-object v1, p7, v10

    invoke-static {v13, v1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto/16 :goto_2

    :cond_9
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1

    :cond_a
    new-instance v0, Lcom/dynatrace/android/agent/CrashSegment;

    aget-object v2, p7, v10

    aget-object v3, p7, v8

    aget-object v6, p7, v9

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/dynatrace/android/agent/CrashSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    aget-object v2, p7, v9

    aget-object v3, p7, v10

    aget-object v4, p7, v8

    invoke-static {v2, p0, v3, v4}, Lcom/dynatrace/android/agent/crash/CrashCatcher;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move v7, v3

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    new-instance v0, Lcom/dynatrace/android/agent/ErrorSegment;

    aget-object v2, p7, v10

    aget-object v3, p7, v8

    aget-object v6, p7, v9

    aget-object v9, p7, v7

    const/4 v10, 0x1

    move-wide v7, v4

    move-object v4, v6

    move-wide v5, v7

    move-object v1, p0

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/dynatrace/android/agent/ErrorSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/dynatrace/android/agent/data/Session;ILjava/lang/String;Z)V

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto :goto_2

    :cond_d
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1

    :cond_e
    new-instance v0, Lcom/dynatrace/android/agent/CustomSegment;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->NAMED_EVENT:Lcom/dynatrace/android/agent/EventType;

    const/4 v8, 0x1

    const/4 v2, 0x4

    move-object v1, p0

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    invoke-virtual {v12}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    goto :goto_2

    :cond_f
    :goto_1
    return-object v2

    :cond_10
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/CustomSegment;->m()V

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_12

    invoke-virtual {v12, v0}, Lcom/dynatrace/android/agent/CalloutTable;->a(Lcom/dynatrace/android/agent/DTXActionImpl;)V

    :cond_12
    :goto_2
    invoke-static {v0, v11}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    .locals 4

    sget-object v0, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switching settings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iput-object p0, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->d:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    sput-wide v0, Lcom/dynatrace/android/agent/Core;->i:J

    sget-object v2, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {v2, v0, v1}, Lcom/dynatrace/android/agent/CalloutTable;->c(J)V

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Send event timeout set to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ticks"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->m:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iput v0, v1, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    sget-object v1, Lcom/dynatrace/android/agent/Core;->q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;->b(I)V

    :cond_2
    sget-object v0, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    iput-boolean p0, v0, Lcom/dynatrace/android/agent/data/Session;->l:Z

    :cond_3
    return-void
.end method

.method public static c(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/android/agent/data/Session;Z)V
    .locals 3

    iget-object p2, p2, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    iget-object p2, p2, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    iget-object v0, p2, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->a()I

    move-result v0

    iget-boolean p2, p2, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    sget-object v1, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v1, v1, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v2, v2, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v2, v2, Lcom/dynatrace/android/agent/conf/Configuration;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->a:Z

    iget-object p3, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->f:Ljava/lang/String;

    iput v0, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->g:I

    iput-boolean p2, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->h:Z

    iput-boolean v1, p0, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;->j:Z

    return-void
.end method

.method public static d()V
    .locals 4

    sget-object v0, Lcom/dynatrace/android/agent/Core;->g:Lcom/dynatrace/android/agent/db/DataAccessObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->flushQueue()V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/CalloutTable;->d()V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    if-eqz v1, :cond_1

    const-string v0, "cannot flush events while still waiting for BPv4 configuration"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/dynatrace/android/agent/CommunicationManager;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ... force closed actions due to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/dynatrace/android/agent/ActionThreadLocal;->a:Ljava/lang/ThreadLocal;

    const-class p0, Lcom/dynatrace/android/agent/ActionThreadLocal;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/dynatrace/android/agent/ActionThreadLocal;->a:Ljava/lang/ThreadLocal;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/agent/DTXActionImpl;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/DTXActionImpl;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    monitor-exit p0

    sget-object p0, Lcom/dynatrace/android/agent/DTXAutoAction;->J:Ljava/lang/String;

    const-class v0, Lcom/dynatrace/android/agent/DTXAutoAction;

    monitor-enter v0

    :try_start_6
    sget-object p0, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    const/4 v1, 0x0

    sput-object v1, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz p0, :cond_3

    sget-object v1, Lcom/dynatrace/android/agent/DTXAutoAction;->O:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_2
    monitor-exit v0

    sget-object p0, Lcom/dynatrace/android/agent/DTXAutoAction;->O:Ljava/util/List;

    monitor-enter p0

    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/agent/DTXAutoAction;

    :try_start_8
    invoke-virtual {v0}, Lcom/dynatrace/android/agent/DTXAutoAction;->a()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    goto :goto_3

    :cond_5
    return-void

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :goto_4
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0

    :goto_5
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0
.end method

.method public static f(Lcom/dynatrace/android/agent/data/Session;)Ljava/lang/String;
    .locals 7

    sget-object v0, Lcom/dynatrace/android/agent/Core;->h:Lcom/dynatrace/android/agent/BasicSegment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vv=3&va=8.343.1.1038&ap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&an="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&ai="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->t:Lcom/dynatrace/agent/metrics/AppVersion;

    if-nez v3, :cond_0

    const-string v3, "&vb=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, "&vb="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/dynatrace/agent/metrics/AppVersion;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/dynatrace/agent/metrics/AppVersion;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/16 v4, 0x32

    invoke-static {v4, v3}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&vn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v3, "&vi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/dynatrace/android/agent/data/Session;->b:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "&sn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/dynatrace/android/agent/data/Session;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&ss=0&rm="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->n:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "&cp="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "&os="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->m:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&mf="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->e:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "unknown"

    :goto_1
    const/16 v4, 0xfa

    invoke-static {v4, v3}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&md="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->q:Ljava/lang/String;

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->g:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    const-string v4, "&rj="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "r"

    goto :goto_2

    :cond_4
    const-string v3, "g"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "&ul="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v3, v3, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_7

    iget v3, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    iget v4, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    const-string v5, "&sh="

    const-string v6, "&sw="

    if-le v3, v4, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    const-string v3, "&sd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    const-string v2, "&pt=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const-string v2, "l"

    goto :goto_4

    :cond_8
    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const-string v2, "p"

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_a

    const-string v3, "&so="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->o:I

    if-ltz v2, :cond_b

    const-string v2, "&bl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->p:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    const-string v2, "&fm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->p:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->h:Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v2, "&cr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->h:Ljava/lang/String;

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->i:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    sget-object v3, Lcom/dynatrace/android/agent/metrics/ConnectionType;->OTHER:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    if-eq v2, v3, :cond_e

    const-string v2, "&ct="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->i:Lcom/dynatrace/android/agent/metrics/ConnectionType;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/metrics/ConnectionType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "&np="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object p0, p0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    iget-object v2, v0, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "&tt=maandroid&dl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    iget-object v2, v2, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    sget-boolean v2, Lcom/dynatrace/android/agent/crash/CrashCatcher;->a:Z

    if-nez v2, :cond_f

    const-string p0, "0"

    goto :goto_5

    :cond_f
    iget-boolean p0, p0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    if-eqz p0, :cond_10

    const-string p0, "2"

    goto :goto_5

    :cond_10
    const-string p0, "1"

    :goto_5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&fv="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lcom/dynatrace/android/agent/BasicSegment;->b:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-virtual {p0}, Lcom/dynatrace/agent/common/InstrumentationFlavor;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lcom/dynatrace/android/agent/CustomSegment;I)V
    .locals 11

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/dynatrace/android/agent/Core;->h:Lcom/dynatrace/android/agent/BasicSegment;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    iget-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1, v2}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/dynatrace/android/agent/Core;->v:Lcom/dynatrace/agent/events/EventThrottler;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dynatrace/agent/events/EventThrottler;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/CustomSegment;->h()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/dynatrace/android/agent/Core;->h:Lcom/dynatrace/android/agent/BasicSegment;

    iget-object v1, v1, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    iget-object v2, v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v2

    iget-wide v5, v1, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->u:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x1770

    cmp-long v2, v2, v5

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->e()V

    :goto_0
    invoke-static {v0}, Lcom/dynatrace/android/agent/Core;->f(Lcom/dynatrace/android/agent/data/Session;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object v0

    new-instance v2, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;

    iget-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v6

    iget-wide v7, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget v9, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    sget-object v10, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;IJILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->accept(Lcom/dynatrace/android/agent/db/DatabaseWriteQueue$DatabaseRecord;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_2
    sget-object v0, Lcom/dynatrace/android/agent/CustomSegment;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_3

    :cond_4
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_5
    :goto_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p1, p0}, Lcom/dynatrace/android/agent/CalloutTable;->e(Lcom/dynatrace/android/agent/CustomSegment;)V

    :cond_6
    return-void
.end method

.method public static declared-synchronized h()V
    .locals 5

    const-class v0, Lcom/dynatrace/android/agent/Core;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v1, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->b()V

    sget-object v1, Lcom/dynatrace/android/agent/Core;->x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->b()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->e:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    sget-object v2, Lcom/dynatrace/android/agent/Core;->c:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;

    iget-object v3, v2, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;->a:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v1, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v4, v2, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;->a:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;

    :cond_1
    sget-object v2, Lcom/dynatrace/android/agent/Core;->b:Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;

    iget-object v3, v2, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->a:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v4, v2, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->a:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    iput-object v4, v2, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    :cond_2
    sget-object v2, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;->b()V

    :cond_3
    sget-object v2, Lcom/dynatrace/android/agent/Core;->u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "tearDown OneAgent"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/dynatrace/agent/di/CoreComponent;->a(Lcom/dynatrace/agent/di/CoreComponent;)V

    :cond_4
    sput-object v4, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    sput-object v4, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :cond_5
    :goto_1
    sget-object v2, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    iget-object v3, v2, Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;->a:Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;

    if-eqz v3, :cond_6

    invoke-virtual {v1, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v4, v2, Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;->a:Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;

    :cond_6
    sget-object v2, Lcom/dynatrace/android/agent/Core;->d:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;

    iget-object v3, v2, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;->a:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;

    if-eqz v3, :cond_7

    invoke-virtual {v1, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v4, v2, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;->a:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;

    :cond_7
    sget-object v2, Lcom/dynatrace/android/agent/Core;->e:Lcom/dynatrace/android/window/WindowCallbackMonitor;

    iget-object v3, v2, Lcom/dynatrace/android/window/WindowCallbackMonitor;->a:Lcom/dynatrace/android/window/ActivityWindowTracker;

    if-eqz v3, :cond_8

    invoke-virtual {v1, v3}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v4, v2, Lcom/dynatrace/android/window/WindowCallbackMonitor;->a:Lcom/dynatrace/android/window/ActivityWindowTracker;

    :cond_8
    sput-object v4, Lcom/dynatrace/android/agent/Core;->p:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->stopThread()V

    sget-object v1, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/CommunicationManager;->g()V

    sput-object v4, Lcom/dynatrace/android/agent/Core;->u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    sput-object v4, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    sput-object v4, Lcom/dynatrace/android/agent/Core;->q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    sput-object v4, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    sput-object v4, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static i(ZLcom/dynatrace/android/agent/conf/PrivacyRules;J)V
    .locals 26

    move-object/from16 v0, p1

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    iget-object v1, v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    iget-object v1, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    sget-object v2, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    const/16 v3, 0x10

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    iget-object v2, v1, Lcom/dynatrace/android/agent/data/SessionParameterStore;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->a()V

    iget-object v1, v1, Lcom/dynatrace/android/agent/data/SessionParameterStore;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_0
    add-int/2addr v1, v9

    sget-object v2, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    iget-object v10, v2, Lcom/dynatrace/android/agent/data/SessionParameterStore;->d:Ljava/lang/Long;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->a()V

    iget-object v2, v2, Lcom/dynatrace/android/agent/data/SessionParameterStore;->d:Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    :cond_3
    move-wide v10, v6

    :goto_1
    cmp-long v2, v10, v6

    if-nez v2, :cond_4

    sget-object v2, Lcom/dynatrace/android/agent/data/SessionParameterUtil;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v10, v2

    shl-long v2, v10, v3

    add-long v10, v6, v2

    move v2, v9

    goto :goto_2

    :cond_4
    move v2, v8

    :goto_2
    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-wide v3, v3, Lcom/dynatrace/android/agent/data/Session;->b:J

    cmp-long v3, v3, v10

    if-eqz v3, :cond_5

    move v3, v9

    goto :goto_3

    :cond_5
    move v3, v8

    :goto_3
    if-nez v2, :cond_6

    if-eqz p0, :cond_7

    if-eqz v3, :cond_7

    :cond_6
    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {v2, v8}, Lcom/dynatrace/android/agent/AdkSettings;->a(Z)V

    :cond_7
    sget-object v2, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    invoke-virtual {v2, v1, v10, v11}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->d(IJ)V

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/dynatrace/android/agent/data/SessionParameterUtil;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    int-to-long v10, v2

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v1, v1

    shl-long/2addr v1, v3

    add-long/2addr v10, v1

    sget-object v1, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    invoke-virtual {v1, v8, v6, v7}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->d(IJ)V

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {v1, v9}, Lcom/dynatrace/android/agent/AdkSettings;->a(Z)V

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    sget-object v1, Lcom/dynatrace/android/agent/Core;->u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcom/dynatrace/agent/di/CoreComponent;->e:Lcom/dynatrace/agent/metrics/MetricsRepository;

    goto :goto_4

    :cond_9
    move-object v1, v5

    :goto_4
    if-eqz v1, :cond_a

    iget-object v12, v1, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    const/16 v24, 0x0

    const v25, 0x3ffcf

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v17

    invoke-static/range {v12 .. v25}, Lcom/dynatrace/agent/storage/preference/MetricsData;->a(Lcom/dynatrace/agent/storage/preference/MetricsData;IIIILjava/lang/Double;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/dynatrace/agent/storage/preference/MetricsData;

    move-result-object v2

    iput-object v2, v1, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    :cond_a
    move v1, v9

    :goto_5
    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v2

    sget-object v3, Lcom/dynatrace/android/agent/Core;->x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->a()V

    iget-object v3, v3, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sget-object v4, Lcom/dynatrace/android/agent/Core;->x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    invoke-virtual {v4}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->a()V

    iget-object v4, v4, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    if-lez v3, :cond_e

    sget-object v6, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v6, v6, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    if-eqz v6, :cond_b

    iget-object v5, v6, Lcom/dynatrace/android/agent/conf/Configuration;->u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    :cond_b
    if-eqz v5, :cond_e

    sget-object v6, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq v5, v6, :cond_e

    sget-object v6, Lcom/dynatrace/agent/common/InstrumentationFlavor;->JETPACK_COMPOSE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-eq v5, v6, :cond_e

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CrossPlatformScreenshotCount"

    const-string v7, "{\"visitId\":\""

    const-string v12, "\",\"screenshotCount\":"

    const-string v13, ",\"technology\":\""

    invoke-static {v3, v7, v4, v12, v13}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"}"

    invoke-static {v5, v4, v3}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/dynatrace/android/internal/api/SelfMonitoring;->a:I

    sget-object v4, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v5, v4, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-boolean v5, v5, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->b:Z

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    sget-object v5, Lcom/dynatrace/android/agent/data/Session;->n:Lcom/dynatrace/android/agent/data/Session;

    if-eqz v5, :cond_e

    iget v7, v5, Lcom/dynatrace/android/agent/data/Session;->f:I

    const/16 v12, 0x14

    if-lt v7, v12, :cond_d

    goto :goto_6

    :cond_d
    iget v4, v4, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    sget-boolean v7, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v7, Lcom/dynatrace/android/agent/SelfMonitoringSegment;

    invoke-direct {v7, v6, v3, v5, v4}, Lcom/dynatrace/android/agent/SelfMonitoringSegment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)V

    sget-object v3, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/CalloutTable;->b()V

    iget v3, v7, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {v7, v3}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    iget v3, v5, Lcom/dynatrace/android/agent/data/Session;->f:I

    add-int/2addr v3, v9

    iput v3, v5, Lcom/dynatrace/android/agent/data/Session;->f:I

    :cond_e
    :goto_6
    if-eqz v2, :cond_f

    iget-boolean v2, v2, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v2, :cond_f

    move v2, v9

    goto :goto_7

    :cond_f
    move v2, v8

    :goto_7
    if-eqz p0, :cond_10

    invoke-static/range {p1 .. p3}, Lcom/dynatrace/android/agent/data/Session;->h(Lcom/dynatrace/android/agent/conf/PrivacyRules;J)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v3

    goto :goto_8

    :cond_10
    invoke-static {v0}, Lcom/dynatrace/android/agent/data/Session;->i(Lcom/dynatrace/android/agent/conf/PrivacyRules;)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v3

    :goto_8
    iput-wide v10, v3, Lcom/dynatrace/android/agent/data/Session;->b:J

    iput v1, v3, Lcom/dynatrace/android/agent/data/Session;->c:I

    if-nez p0, :cond_11

    iput-object v0, v3, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    :cond_11
    iget-boolean v0, v3, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v2, :cond_12

    if-nez v0, :cond_12

    const-string v0, "Grail has been turned off for this new session"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    invoke-interface {v0}, Lcom/dynatrace/agent/OneAgentStartup;->a()V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iput-boolean v8, v0, Lcom/dynatrace/android/agent/CommunicationManager;->u:Z

    const-string v0, "gen3Enabled updated to: false"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    if-nez v2, :cond_13

    if-eqz v0, :cond_13

    const-string v0, "Grail is active with this new session"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iput-boolean v9, v0, Lcom/dynatrace/android/agent/CommunicationManager;->u:Z

    const-string v0, "gen3Enabled updated to: true"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v1, v1, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-interface {v0, v1}, Lcom/dynatrace/agent/OneAgentStartup;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    :cond_13
    :goto_9
    if-eqz p0, :cond_14

    const-class v1, Lcom/dynatrace/android/agent/Core;

    monitor-enter v1

    :try_start_0
    const-string v0, "resetLifecycle"

    invoke-static {v0}, Lcom/dynatrace/android/agent/Core;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_14
    :goto_a
    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget v1, v1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->l:I

    iput v1, v0, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    sget-object v2, Lcom/dynatrace/android/agent/Core;->q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    if-eqz v2, :cond_15

    invoke-interface {v2, v1}, Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;->b(I)V

    :cond_15
    sget-object v2, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    if-eqz v2, :cond_16

    invoke-interface {v2}, Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;->c()V

    :cond_16
    sget-object v2, Lcom/dynatrace/android/agent/Core;->h:Lcom/dynatrace/android/agent/BasicSegment;

    iget-object v2, v2, Lcom/dynatrace/android/agent/BasicSegment;->a:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->d()V

    iget-object v4, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->v:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v4}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->u:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1770

    cmp-long v4, v4, v6

    if-gtz v4, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v2}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->e()V

    :goto_b
    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v0, v0, Lcom/dynatrace/android/agent/conf/Configuration;->v:Z

    if-eqz v0, :cond_19

    sget-object v2, Lcom/dynatrace/android/agent/Core;->p:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    if-eqz v2, :cond_19

    monitor-enter v2

    :try_start_2
    iget-boolean v0, v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->l:Z

    if-eqz v0, :cond_18

    invoke-virtual {v2, v8}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->b(Z)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_18
    :goto_c
    iput-object v3, v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->e:Lcom/dynatrace/android/agent/data/Session;

    new-instance v0, Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget-object v4, v3, Lcom/dynatrace/android/agent/data/Session;->j:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    invoke-direct {v0, v4}, Lcom/dynatrace/android/ragetap/detection/RageTapRules;-><init>(Lcom/dynatrace/android/agent/conf/RageTapConfiguration;)V

    iput-object v0, v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget-object v0, v3, Lcom/dynatrace/android/agent/data/Session;->j:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v0, v0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    int-to-long v4, v0

    iput-wide v4, v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->k:J

    iput-boolean v9, v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    goto :goto_e

    :goto_d
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_19
    :goto_e
    iget-object v0, v3, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v2, Lcom/dynatrace/android/agent/EventType;->ACTION_AUTO_LOADING_APP:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v0, v2}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/dynatrace/android/agent/DTXAutoAction;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/dynatrace/android/agent/AdkSettings;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3, v1}, Lcom/dynatrace/android/agent/DTXAutoAction;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/data/Session;I)V

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/CustomSegment;->m()V

    sget-object v1, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, v0, Lcom/dynatrace/android/agent/DTXActionImpl;->u:I

    iput-object v2, v0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    iget v1, v0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {v0, v1}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    :cond_1a
    sget-object v0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-boolean v1, v0, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    if-eqz v1, :cond_1b

    const-string v0, "startNewSession: waiting for the GET request executed via BPv4"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_1b
    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/data/Session;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_f
    invoke-static {}, Lcom/dynatrace/android/agent/Core;->d()V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/dynatrace/android/agent/mixed/SessionInformationGenerator;->a(Lcom/dynatrace/android/agent/data/Session;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v0

    sget-object v1, Lcom/dynatrace/agent/events/TracestateHeader;->a:Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;

    iget-object v1, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dynatrace/agent/events/TracestateHeader;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v3, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/dynatrace/android/agent/Core;->f:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    new-instance v2, Ljq;

    invoke-direct {v2, v0, v3, v9}, Ljq;-><init>(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/android/agent/data/Session;I)V

    invoke-virtual {v1, v2}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    goto :goto_10

    :cond_1c
    sget-object v1, Lcom/dynatrace/android/agent/Core;->f:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    new-instance v2, Ljq;

    invoke-direct {v2, v0, v3, v8}, Ljq;-><init>(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/android/agent/data/Session;I)V

    invoke-virtual {v1, v2}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    :goto_10
    sget-object v0, Lcom/dynatrace/android/agent/Core;->x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    if-eqz v0, :cond_1d

    new-instance v1, Lcom/dynatrace/android/agent/events/eventsapi/format/SessionIdFormatter;

    invoke-direct {v1}, Lcom/dynatrace/android/agent/events/eventsapi/format/SessionIdFormatter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, v3, Lcom/dynatrace/android/agent/data/Session;->b:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/dynatrace/android/agent/data/Session;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->d(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public static j(Landroid/app/Application;Lcom/dynatrace/android/agent/conf/Configuration;Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;)V
    .locals 11

    sput-object p2, Lcom/dynatrace/android/agent/Core;->u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p2, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance p2, Lcom/dynatrace/android/agent/data/SessionParameterStore;

    invoke-direct {p2, p0}, Lcom/dynatrace/android/agent/data/SessionParameterStore;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/dynatrace/android/agent/Core;->w:Lcom/dynatrace/android/agent/data/SessionParameterStore;

    invoke-virtual {p2}, Lcom/dynatrace/android/agent/data/SessionParameterStore;->c()V

    new-instance p2, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    invoke-direct {p2, p0}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/dynatrace/android/agent/Core;->x:Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;

    invoke-virtual {p2}, Lcom/dynatrace/android/agent/data/CrossPlatformScreenshotStore;->c()V

    sget-object p2, Lcom/dynatrace/android/agent/DTXAutoAction;->J:Ljava/lang/String;

    iget p2, p1, Lcom/dynatrace/android/agent/conf/Configuration;->f:I

    sput p2, Lcom/dynatrace/android/agent/DTXAutoAction;->K:I

    iget p2, p1, Lcom/dynatrace/android/agent/conf/Configuration;->g:I

    sput p2, Lcom/dynatrace/android/agent/DTXAutoAction;->L:I

    iget-boolean p2, p1, Lcom/dynatrace/android/agent/conf/Configuration;->h:Z

    sput-boolean p2, Lcom/dynatrace/android/agent/DTXAutoAction;->M:Z

    sget-object p2, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    invoke-virtual {p2, p1, p0}, Lcom/dynatrace/android/agent/AdkSettings;->b(Lcom/dynatrace/android/agent/conf/Configuration;Landroid/app/Application;)V

    iget-object p2, p2, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    new-instance v0, Lcom/dynatrace/android/agent/conf/InitialServerIdProvider;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/InitialServerIdProvider;-><init>()V

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/Configuration;->t:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dynatrace/android/agent/conf/InitialServerIdProvider;->a:Lcom/dynatrace/android/agent/data/RandomFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x7fff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p2, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    const-string v3, "ServerConfig"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    :goto_1
    move-object p2, v5

    goto :goto_3

    :cond_1
    iget-object v4, p2, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    :try_start_0
    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object v4, v5

    :goto_2
    sget-boolean v6, Lcom/dynatrace/android/agent/Global;->a:Z

    :try_start_1
    iget-object p2, p2, Lcom/dynatrace/android/agent/conf/PreferencesManager;->b:Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;

    sget-object v6, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {p2, v6, v4}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;->c(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    move-result-object p2

    iget-object v4, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    sget-object v6, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;->OK:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    if-ne v4, v6, :cond_2

    goto :goto_3

    :cond_2
    new-instance v4, Lcom/dynatrace/android/agent/comm/InvalidConfigurationException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected status code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->n:Lcom/dynatrace/android/agent/conf/ServerConfiguration$Status;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/dynatrace/android/agent/comm/InvalidConfigurationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sget-boolean p2, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :goto_3
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    new-instance v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {v0, p2, v2}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    goto :goto_4

    :cond_3
    new-instance p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {p2}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    iput v0, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->l:I

    iput-boolean v2, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->i:Z

    move-object v0, p2

    :goto_4
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    iput v1, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->g:I

    iput-boolean v2, v0, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->m:Z

    new-instance p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p2, v0}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    sget-object v0, Lcom/dynatrace/android/agent/Core;->u:Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    sget-object v3, Lcom/dynatrace/android/agent/Core;->f:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    invoke-virtual {v0, v3}, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;)V

    sget-object v0, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    iget-object v3, v3, Lcom/dynatrace/agent/di/CoreComponent;->h:Lcom/dynatrace/agent/OneAgentStartupImpl;

    sput-object v3, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    iget-object v3, v3, Lcom/dynatrace/agent/di/CoreComponent;->g:Lcom/dynatrace/agent/communication/CommunicationManagerBridgeImpl;

    sput-object v3, Lcom/dynatrace/android/agent/Core;->q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    iget-object v3, v3, Lcom/dynatrace/agent/di/CoreComponent;->j:Lcom/dynatrace/agent/lifecycle/OneAgentLifecycleManagerBridgeImpl;

    sput-object v3, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    iget-object v3, v3, Lcom/dynatrace/agent/di/CoreComponent;->i:Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManagerBridgeImpl;

    sput-object v3, Lcom/dynatrace/android/agent/Core;->s:Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    iget-object v0, v0, Lcom/dynatrace/agent/di/CoreComponent;->f:Lcom/dynatrace/agent/OneAgentFacade;

    sput-object v0, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;

    iget-boolean v0, p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    if-nez v0, :cond_4

    const-string v0, "RUM powered by Grail initially inactive"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_4
    new-instance v0, Lcom/dynatrace/agent/events/EventThrottler;

    new-instance v3, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;

    invoke-direct {v3}, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;-><init>()V

    invoke-static {}, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;->a()Lcom/dynatrace/agent/common/time/TimeProvider;

    move-result-object v3

    iget v4, p1, Lcom/dynatrace/android/agent/conf/Configuration;->w:I

    new-instance v6, Lcom/dynatrace/android/agent/Core$1;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v3, v4, v6}, Lcom/dynatrace/agent/events/EventThrottler;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;ILcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V

    sput-object v0, Lcom/dynatrace/android/agent/Core;->v:Lcom/dynatrace/agent/events/EventThrottler;

    invoke-static {p2}, Lcom/dynatrace/android/agent/Core;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/Configuration;->s:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v3, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v3, v3, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    const-string v4, "DTXCrashReplayOptedIn"

    iget-object v6, v3, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/dynatrace/android/agent/conf/PrivacyRules;->c:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    :try_start_2
    const-string v8, "DTXOptInCrashes"

    iget-boolean v9, v7, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v9, "DTXDataCollectionLevel"

    iget-object v10, v7, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->valueOf(Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    move-result-object v9

    iget-boolean v10, v7, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    invoke-interface {v6, v4, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v8, :cond_5

    if-eqz v10, :cond_5

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    move v10, v2

    :cond_5
    new-instance v4, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;

    invoke-direct {v4}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;-><init>()V

    invoke-virtual {v4, v9}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a(Lcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    iput-boolean v8, v4, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->b:Z

    const-string v8, "DTXCScreenRecordOptedIn"

    const/4 v9, -0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v9, :cond_7

    if-ne v6, v1, :cond_6

    move v6, v1

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v4, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    iput-boolean v6, v4, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    goto :goto_6

    :cond_7
    iput-object v5, v4, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    iput-boolean v10, v4, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    :goto_6
    new-instance v6, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    invoke-direct {v6, v4}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v7, v6

    goto :goto_7

    :catch_2
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a()V

    :goto_7
    invoke-direct {v0, v7}, Lcom/dynatrace/android/agent/conf/PrivacyRules;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;)V

    goto :goto_8

    :cond_8
    sget-object v0, Lcom/dynatrace/android/agent/Core;->n:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a()V

    sget-object v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->b:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    :goto_8
    iget-object v3, p1, Lcom/dynatrace/android/agent/conf/Configuration;->b:Ljava/lang/String;

    sput-object v3, Lcom/dynatrace/android/agent/AdkSettings;->h:Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    sget-object v3, Lcom/dynatrace/android/agent/Core;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v0}, Lcom/dynatrace/android/agent/data/Session;->i(Lcom/dynatrace/android/agent/conf/PrivacyRules;)Lcom/dynatrace/android/agent/data/Session;

    goto :goto_9

    :cond_9
    sget-object v3, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-object v3, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/dynatrace/android/agent/data/Session;->h(Lcom/dynatrace/android/agent/conf/PrivacyRules;J)Lcom/dynatrace/android/agent/data/Session;

    :goto_9
    new-instance v3, Lcom/dynatrace/android/agent/db/DataAccessObject;

    invoke-direct {v3, p0}, Lcom/dynatrace/android/agent/db/DataAccessObject;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/dynatrace/android/agent/Core;->g:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iget-object v4, p1, Lcom/dynatrace/android/agent/conf/Configuration;->b:Ljava/lang/String;

    monitor-enter v3

    :try_start_3
    iget-object v6, v3, Lcom/dynatrace/android/agent/db/DataAccessObject;->a:Lcom/dynatrace/android/agent/db/EventsDbHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "Events"

    const-string v8, "app_id!= ?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_c

    :catch_3
    :try_start_4
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_a
    monitor-exit v3

    sget-object v3, Lcom/dynatrace/android/agent/Core;->f:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    new-instance v4, Lwp;

    const/16 v6, 0x8

    invoke-direct {v4, v6}, Lwp;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;->a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;)V

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    new-instance v4, Lcom/dynatrace/android/agent/BasicSegment;

    iget-object v6, p1, Lcom/dynatrace/android/agent/conf/Configuration;->u:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    invoke-direct {v4, v6}, Lcom/dynatrace/android/agent/BasicSegment;-><init>(Lcom/dynatrace/agent/common/InstrumentationFlavor;)V

    sput-object v4, Lcom/dynatrace/android/agent/Core;->h:Lcom/dynatrace/android/agent/BasicSegment;

    invoke-static {}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->getInstance()Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dynatrace/android/agent/db/DatabaseWriteQueue;->start()V

    sget-object v4, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    sget-wide v6, Lcom/dynatrace/android/agent/Core;->i:J

    invoke-virtual {v4, v6, v7}, Lcom/dynatrace/android/agent/CalloutTable;->c(J)V

    sget-object v4, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    sget-object v6, Lcom/dynatrace/android/agent/Core;->g:Lcom/dynatrace/android/agent/db/DataAccessObject;

    sget-object v7, Lcom/dynatrace/android/agent/Core;->q:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    iput-object v7, v4, Lcom/dynatrace/android/agent/CommunicationManager;->t:Lcom/dynatrace/android/agent/communication/CommunicationManagerBridge;

    iput-object v6, v4, Lcom/dynatrace/android/agent/CommunicationManager;->a:Lcom/dynatrace/android/agent/db/DataAccessObject;

    iput-object v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->s:Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;

    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, v4, Lcom/dynatrace/android/agent/CommunicationManager;->q:J

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v3, v3, Lcom/dynatrace/android/agent/AdkSettings;->g:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    iget-boolean v3, v3, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->i:Z

    iput-boolean v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->u:Z

    iget-boolean v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->u:Z

    iput-boolean v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->v:Z

    new-instance v3, Lcom/dynatrace/android/agent/comm/RequestExecutor;

    new-instance v6, Lcom/dynatrace/android/agent/comm/CommHandler;

    invoke-direct {v6, p1}, Lcom/dynatrace/android/agent/comm/CommHandler;-><init>(Lcom/dynatrace/android/agent/conf/Configuration;)V

    new-instance v7, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;

    iget-object v8, p1, Lcom/dynatrace/android/agent/conf/Configuration;->b:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6, p1, v7}, Lcom/dynatrace/android/agent/comm/RequestExecutor;-><init>(Lcom/dynatrace/android/agent/comm/CommHandler;Lcom/dynatrace/android/agent/conf/Configuration;Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;)V

    iput-object v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->b:Lcom/dynatrace/android/agent/comm/RequestExecutor;

    iget-object v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_5
    iget-object v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_a
    :goto_b
    new-instance v3, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;

    invoke-direct {v3, v4, v5}, Lcom/dynatrace/android/agent/CommunicationManager$EventSenderThread;-><init>(Lcom/dynatrace/android/agent/CommunicationManager;Lcom/dynatrace/android/agent/CommunicationManager$1;)V

    iput-object v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->l:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, v4, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v3, p1, Lcom/dynatrace/android/agent/conf/Configuration;->k:Z

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/dynatrace/android/agent/crash/CrashCatcher;->a()V

    sget-object v3, Lcom/dynatrace/android/agent/Core;->o:Lcom/dynatrace/android/agent/CrashReporter;

    if-eqz v3, :cond_b

    sget-object v4, Lcom/dynatrace/android/agent/crash/CrashCatcher;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/dynatrace/android/agent/Core;->s:Lcom/dynatrace/android/agent/useraction/OneAgentUserInteractionManagerBridge;

    if-eqz v4, :cond_c

    new-instance v4, Lcom/dynatrace/android/agent/Core$2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-boolean v4, p1, Lcom/dynatrace/android/agent/conf/Configuration;->v:Z

    if-eqz v4, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;

    invoke-direct {v5}, Lcom/dynatrace/android/agent/events/ragetap/RageTapObserver;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    new-instance v6, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    sget-object v7, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-direct {v6, v4, v5, v7}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;-><init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/dynatrace/android/agent/TimeLineProvider;)V

    sput-object v6, Lcom/dynatrace/android/agent/Core;->p:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    new-instance v4, Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;

    sget-object v5, Lcom/dynatrace/android/agent/Core;->p:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    invoke-direct {v4, v5, v7}, Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;-><init>(Lcom/dynatrace/android/ragetap/detection/RageTapDetector;Lcom/dynatrace/android/agent/TimeLineProvider;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v4, Lcom/dynatrace/android/agent/Core;->e:Lcom/dynatrace/android/window/WindowCallbackMonitor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    new-instance v5, Lcom/dynatrace/android/window/WindowCallbackInstrumentation;

    invoke-direct {v5, v3}, Lcom/dynatrace/android/window/WindowCallbackInstrumentation;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/dynatrace/android/window/ActivityWindowTracker;

    invoke-direct {v3, v5}, Lcom/dynatrace/android/window/ActivityWindowTracker;-><init>(Lcom/dynatrace/android/window/WindowCallbackInstrumentation;)V

    iput-object v3, v4, Lcom/dynatrace/android/window/WindowCallbackMonitor;->a:Lcom/dynatrace/android/window/ActivityWindowTracker;

    invoke-virtual {p0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_e
    sget-object v3, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Lcom/dynatrace/android/agent/Core;->i(ZLcom/dynatrace/android/agent/conf/PrivacyRules;J)V

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/conf/Configuration;->j:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/dynatrace/android/useraction/ActionAggregatorImpl;

    new-instance v4, Lcom/dynatrace/android/useraction/LoadingActionNameGenerator;

    invoke-direct {v4}, Lcom/dynatrace/android/useraction/LoadingActionNameGenerator;-><init>()V

    invoke-direct {v9, v4}, Lcom/dynatrace/android/useraction/ActionAggregatorImpl;-><init>(Lcom/dynatrace/android/useraction/ActionNameCustomizer;)V

    new-instance v8, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;

    invoke-direct {v8, v3}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;-><init>(Lcom/dynatrace/android/agent/TimeLineProvider;)V

    new-instance v4, Lcom/dynatrace/android/lifecycle/LifecycleController;

    new-instance v5, Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactoryImpl;

    invoke-direct {v5}, Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactoryImpl;-><init>()V

    new-instance v6, Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;

    invoke-direct {v6}, Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;-><init>()V

    new-instance v7, Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

    invoke-direct {v7}, Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;-><init>()V

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/android/lifecycle/LifecycleController;-><init>(Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/lifecycle/ActionAggregator;)V

    new-instance v5, Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;

    invoke-direct {v5}, Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;-><init>()V

    new-instance v6, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;

    invoke-direct {v6, v4, v5}, Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;-><init>(Lcom/dynatrace/android/lifecycle/LifecycleController;Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;)V

    iput-object v6, v0, Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;->a:Lcom/dynatrace/android/lifecycle/callback/ActivityLifecycleListener;

    invoke-virtual {p0, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_f
    sget-object v0, Lcom/dynatrace/android/agent/Core;->d:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;

    new-instance v5, Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;

    invoke-direct {v5}, Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;-><init>()V

    new-instance v6, Lcom/dynatrace/android/lifecycle/activitytracking/ActivityScreenMetricsCollector;

    invoke-direct {v6}, Lcom/dynatrace/android/lifecycle/activitytracking/ActivityScreenMetricsCollector;-><init>()V

    invoke-direct {v4, v5, v0, v6, v0}, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;-><init>(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsCollector;Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;)V

    iput-object v4, v0, Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;->a:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;

    invoke-virtual {p0, v4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-boolean p1, p1, Lcom/dynatrace/android/agent/conf/Configuration;->i:Z

    if-eqz p1, :cond_10

    sget-object p1, Lcom/dynatrace/android/agent/Core;->b:Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;

    invoke-direct {v0, v3}, Lcom/dynatrace/android/agent/measurement/MeasurementProviderImpl;-><init>(Lcom/dynatrace/android/agent/TimeLineProvider;)V

    new-instance v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    new-instance v4, Lcom/dynatrace/android/useraction/AppStartAggregatorImpl;

    new-instance v5, Lcom/dynatrace/android/useraction/LoadingActionNameGenerator;

    invoke-direct {v5}, Lcom/dynatrace/android/useraction/LoadingActionNameGenerator;-><init>()V

    invoke-direct {v4, v5}, Lcom/dynatrace/android/useraction/AppStartAggregatorImpl;-><init>(Lcom/dynatrace/android/useraction/ActionNameCustomizer;)V

    new-instance v5, Lcom/dynatrace/android/agent/events/lifecycle/AppStartActionObserverImpl;

    invoke-direct {v5}, Lcom/dynatrace/android/agent/events/lifecycle/AppStartActionObserverImpl;-><init>()V

    invoke-direct {v3, v0, v4, v5, p0}, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;-><init>(Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/lifecycle/appstart/AppStartAggregator;Lcom/dynatrace/android/lifecycle/appstart/AppStartActionObserver;Landroid/app/Application;)V

    iput-object v3, p1, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->b:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    iget-object v0, v3, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->e:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    iput-object v0, p1, Lcom/dynatrace/android/lifecycle/appstart/ApplicationStartMonitor;->a:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    :cond_10
    sget-object p1, Lcom/dynatrace/android/agent/Core;->c:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;

    new-instance v3, Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;

    invoke-direct {v3}, Lcom/dynatrace/android/lifecycle/callback/ActivityComponentIdentifier;-><init>()V

    invoke-direct {v0, v3}, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;-><init>(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentifier;)V

    iput-object v0, p1, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;->a:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;

    new-instance v3, Lcom/dynatrace/android/agent/AppFgBgStateListener;

    invoke-direct {v3}, Lcom/dynatrace/android/agent/AppFgBgStateListener;-><init>()V

    iget-object v0, v0, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateMonitor;->a:Lcom/dynatrace/android/lifecycle/appstate/ApplicationStateTracker;

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->r:Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;

    if-eqz p0, :cond_11

    invoke-interface {p0}, Lcom/dynatrace/android/agent/lifecycle/OneAgentLifecycleManagerBridge;->a()V

    :cond_11
    sget-object p0, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    invoke-interface {p0, p2}, Lcom/dynatrace/agent/OneAgentStartup;->c(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object p0

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz p0, :cond_12

    sget-object p0, Lcom/dynatrace/android/agent/Core;->t:Lcom/dynatrace/agent/OneAgentStartup;

    invoke-interface {p0, p2}, Lcom/dynatrace/agent/OneAgentStartup;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V

    :cond_12
    sget-object p0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/CommunicationManager;->h(Z)V

    sget-object p0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_c
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

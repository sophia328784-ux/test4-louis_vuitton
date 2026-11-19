.class public Lcom/dynatrace/android/agent/DTXActionImpl;
.super Lcom/dynatrace/android/agent/CustomSegment;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/DTXAction;


# static fields
.field public static final y:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public u:I

.field public final v:Ljava/util/Vector;

.field public final w:Z

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dynatrace/android/agent/DTXActionImpl;->y:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZLcom/dynatrace/android/agent/DTXActionImpl;)V
    .locals 10

    move-object/from16 v0, p8

    const/4 v3, 0x5

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->u:I

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    iput-object p2, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    const/4 p2, 0x0

    iput p2, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->x:I

    iput-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->k:Lcom/dynatrace/android/agent/DTXActionImpl;

    if-nez v0, :cond_0

    iput-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    :goto_0
    move/from16 v9, p7

    goto :goto_1

    :cond_0
    iget-object p3, v0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    iput-object p3, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    goto :goto_0

    :goto_1
    iput-boolean v9, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->w:Z

    sget-boolean p3, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "New action "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "The action name is null or empty hence this action will be deactivated"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_4
    iput-boolean p2, p0, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    return-void
.end method

.method public static q(Ljava/lang/String;Lcom/dynatrace/android/agent/DTXAction;)Lcom/dynatrace/android/agent/DTXActionImpl;
    .locals 20

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/dynatrace/android/agent/DTXActionImpl;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/dynatrace/android/agent/DTXActionImpl;

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_1

    iget-wide v1, v9, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget-object v3, v9, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v4, v9, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    move-wide v14, v1

    :goto_2
    move-object/from16 v17, v3

    move/from16 v18, v4

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/dynatrace/android/agent/data/Session;->m:Lcom/dynatrace/android/agent/data/RandomFactory;

    sget-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v3

    sget-object v1, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v4, v1, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    move-wide v14, v10

    goto :goto_2

    :goto_3
    new-instance v16, Lcom/dynatrace/android/agent/DTXActionImpl;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->ACTION_MANUAL:Lcom/dynatrace/android/agent/EventType;

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-wide v4, v14

    move-object/from16 v1, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    invoke-direct/range {v1 .. v9}, Lcom/dynatrace/android/agent/DTXActionImpl;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZLcom/dynatrace/android/agent/DTXActionImpl;)V

    const/4 v2, 0x1

    if-eqz v9, :cond_2

    iget-boolean v3, v9, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-eqz v3, :cond_2

    iput-boolean v0, v1, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    iput-boolean v2, v1, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    :cond_2
    cmp-long v3, v14, v10

    if-eqz v3, :cond_7

    iget v3, v9, Lcom/dynatrace/android/agent/DTXActionImpl;->x:I

    add-int/2addr v3, v2

    iput v3, v1, Lcom/dynatrace/android/agent/DTXActionImpl;->x:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {v1}, Lcom/dynatrace/android/agent/CustomSegment;->l()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    iget-object v3, v3, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Limit of actions is reached for user actions, dropped events: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_5
    iput-boolean v0, v1, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    iput-boolean v2, v1, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    return-object v1

    :cond_6
    invoke-virtual {v9, v1}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    :cond_7
    invoke-static {}, Lcom/dynatrace/android/agent/ActionThreadLocal;->a()V

    iget-boolean v2, v1, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-nez v2, :cond_8

    sget-object v2, Lcom/dynatrace/android/agent/ActionThreadLocal;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_8
    const/4 v13, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v12, p0

    move-object/from16 v19, v0

    move-object/from16 v16, v1

    invoke-static/range {v12 .. v19}, Lcom/dynatrace/android/agent/Core;->a(Ljava/lang/String;IJLcom/dynatrace/android/agent/DTXActionImpl;Lcom/dynatrace/android/agent/data/Session;I[Ljava/lang/String;)Lcom/dynatrace/android/agent/CustomSegment;

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/DTXActionImpl;->v(Z)V

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->k:Lcom/dynatrace/android/agent/DTXActionImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The root action with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " has exceeded child limitation of "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/dynatrace/android/agent/CustomSegment;->t:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", discarded "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " child events"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EventThrottlingActionTreeSizeLimit"

    invoke-static {v0, p0}, Lcom/dynatrace/android/internal/api/SelfMonitoring;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;D)V
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x7

    invoke-virtual {p0, p1, p2, p3}, Lcom/dynatrace/android/agent/DTXActionImpl;->p(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportError within action context, errorName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->t()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget-boolean v3, v1, Lcom/dynatrace/android/agent/data/Session;->k:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v4, Lcom/dynatrace/android/agent/EventType;->EVENT_API:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v3, v4}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "error event: "

    :try_start_0
    invoke-static {p2, v0}, Lcom/dynatrace/agent/events/error/ErrorEvent;->a(Ljava/lang/Throwable;Z)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "error.name"

    invoke-virtual {v4, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "error.has_custom_name"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "characteristics.has_exception"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "dt.support.is_legacy_api_reported"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v4

    goto :goto_1

    :catch_0
    const-string v0, "error event can\'t be generated"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    move-object v7, v2

    :goto_1
    if-eqz v7, :cond_5

    sget-object v3, Lcom/dynatrace/android/agent/Core;->l:Lcom/dynatrace/agent/OneAgentFacade;

    sget-object v0, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v4

    const/4 v8, 0x1

    invoke-static {v1}, Lcom/dynatrace/android/agent/mixed/SessionInformationGenerator;->a(Lcom/dynatrace/android/agent/data/Session;)Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Lcom/dynatrace/agent/OneAgentFacade;->a(JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lorg/json/JSONObject;Z)V

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action reportError eventType shouldn\'t be collected, because of data collection level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reportError can\'t be executed: Grail events should be captured: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v1, Lcom/dynatrace/android/agent/data/Session;->k:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " or throwable is null: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_5
    :goto_3
    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    sget-object v1, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    const/16 v3, 0xa

    if-ne v0, v1, :cond_6

    move v0, v3

    goto :goto_4

    :cond_6
    const v0, 0x7fffffff

    :goto_4
    if-nez p2, :cond_7

    new-instance p2, Lcom/dynatrace/android/agent/crash/StacktraceData;

    sget-object v0, Lcom/dynatrace/android/agent/crash/PlatformType;->JAVA:Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-direct {p2, v2, v2, v2, v0}, Lcom/dynatrace/android/agent/crash/StacktraceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/crash/PlatformType;)V

    goto :goto_5

    :cond_7
    new-instance v1, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;

    invoke-direct {v1, p2, v0}, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;->a()Lcom/dynatrace/android/agent/crash/StacktraceData;

    move-result-object p2

    :goto_5
    iget-object v0, p2, Lcom/dynatrace/android/agent/crash/StacktraceData;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/dynatrace/android/agent/crash/StacktraceData;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/dynatrace/android/agent/crash/StacktraceData;->c:Ljava/lang/String;

    iget-object p2, p2, Lcom/dynatrace/android/agent/crash/StacktraceData;->d:Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-virtual {p2}, Lcom/dynatrace/android/agent/crash/PlatformType;->a()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v0, v1, v2, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v3}, Lcom/dynatrace/android/agent/DTXActionImpl;->p(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/dynatrace/android/agent/DTXActionImpl;->p(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p0, p2, p1, v0}, Lcom/dynatrace/android/agent/DTXActionImpl;->p(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public final f(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-virtual {p0, p3, p1, p2}, Lcom/dynatrace/android/agent/DTXActionImpl;->p(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public h()Ljava/lang/StringBuilder;
    .locals 5

    const-string v0, "et="

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->j:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/EventType;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&na="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&it="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&ca="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&pa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&t0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&s1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&t1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    iget-wide v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "&fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->w:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final o(Lcom/dynatrace/android/agent/CustomSegment;)V
    .locals 1

    iget-boolean v0, p1, Lcom/dynatrace/android/agent/CustomSegment;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CustomSegment;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->x(Lcom/dynatrace/android/agent/CustomSegment;)V

    return-void
.end method

.method public final varargs p(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->t()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/CustomSegment;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Limit of actions is reached for reporting values, dropped events: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v6, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    const/4 v4, 0x0

    move-object v0, p1

    move-object v7, p2

    move v1, p3

    invoke-static/range {v0 .. v7}, Lcom/dynatrace/android/agent/Core;->a(Ljava/lang/String;IJLcom/dynatrace/android/agent/DTXActionImpl;Lcom/dynatrace/android/agent/data/Session;I[Ljava/lang/String;)Lcom/dynatrace/android/agent/CustomSegment;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r()Ljava/util/Vector;
    .locals 2

    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    iget-object p0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    invoke-direct {v1, p0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public s()Lcom/dynatrace/android/agent/WebReqTag;
    .locals 4

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget-object v2, v0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v3, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v2, v3}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/CustomSegment;->l()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->l:Lcom/dynatrace/android/agent/DTXActionImpl;

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Limit of actions is reached for web requests, dropped events: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v1, Lcom/dynatrace/android/agent/WebReqTag;

    iget-wide v2, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/dynatrace/android/agent/WebReqTag;-><init>(JILcom/dynatrace/android/agent/data/Session;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public t()Z
    .locals 3

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->x:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Maximum depth of actions reached (10). Discarding creation of \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result p0

    return p0
.end method

.method public final u()Lcom/dynatrace/android/agent/WebReqTag;
    .locals 10

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->s()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/dynatrace/android/agent/CustomSegment;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/dynatrace/android/agent/EventType;->PLACEHOLDER:Lcom/dynatrace/android/agent/EventType;

    iget v8, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    iget-boolean v9, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->w:Z

    const/16 v3, 0x6e

    iget-wide v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget-object v7, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-direct/range {v1 .. v9}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    invoke-virtual {p0, v1}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    return-object v0
.end method

.method public v(Z)V
    .locals 13

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    const-string v1, "Action "

    if-eqz v0, :cond_0

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is already closed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " closing ... saving="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/dynatrace/android/agent/ActionThreadLocal;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dynatrace/android/agent/ActionThreadLocal;->a()V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->t()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    invoke-virtual {v3}, Lcom/dynatrace/android/agent/data/Session;->c()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    sget-object v3, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v3, v3, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    sget-object v4, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/dynatrace/android/agent/DTXActionImpl;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    :goto_0
    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/android/agent/CustomSegment;

    iget-wide v5, v4, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    iget-wide v7, v4, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget-wide v9, p0, Lcom/dynatrace/android/agent/CustomSegment;->b:J

    cmp-long v9, v5, v9

    const-string v10, " tagId="

    if-lez v9, :cond_6

    iget-wide v11, p0, Lcom/dynatrace/android/agent/CustomSegment;->c:J

    cmp-long v5, v5, v11

    if-gez v5, :cond_6

    sget-boolean v5, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-object v6, v4, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " adopting "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_5
    iget-wide v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iput-wide v5, v4, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-virtual {p0, v4}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    goto :goto_1

    :cond_6
    sget-boolean v5, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-object v4, v4, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not adopting "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->w(Z)V

    sget-object v3, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iput v3, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->u:I

    if-eqz p1, :cond_8

    iget-object v4, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-wide v6, p0, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    iget-object v9, p0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v10, p0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    new-array v11, v2, [Ljava/lang/String;

    const/4 v5, 0x2

    move-object v8, p0

    invoke-static/range {v4 .. v11}, Lcom/dynatrace/android/agent/Core;->a(Ljava/lang/String;IJLcom/dynatrace/android/agent/DTXActionImpl;Lcom/dynatrace/android/agent/data/Session;I[Ljava/lang/String;)Lcom/dynatrace/android/agent/CustomSegment;

    goto :goto_3

    :cond_8
    move-object v8, p0

    invoke-virtual {v8}, Lcom/dynatrace/android/agent/CustomSegment;->m()V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p0, v8}, Lcom/dynatrace/android/agent/CalloutTable;->e(Lcom/dynatrace/android/agent/CustomSegment;)V

    goto :goto_3

    :cond_9
    move-object v8, p0

    invoke-virtual {v8, v2}, Lcom/dynatrace/android/agent/DTXActionImpl;->w(Z)V

    invoke-virtual {v8}, Lcom/dynatrace/android/agent/CustomSegment;->m()V

    sget-object p0, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p0, v8}, Lcom/dynatrace/android/agent/CalloutTable;->e(Lcom/dynatrace/android/agent/CustomSegment;)V

    :goto_3
    iget-object p0, v8, Lcom/dynatrace/android/agent/CustomSegment;->k:Lcom/dynatrace/android/agent/DTXActionImpl;

    if-eqz p0, :cond_b

    instance-of v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;

    if-eqz v2, :cond_b

    check-cast p0, Lcom/dynatrace/android/agent/DTXAutoAction;

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->r()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_a

    sget-object v2, Lcom/dynatrace/android/agent/DTXAutoAction;->J:Ljava/lang/String;

    iget-object v2, v8, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onUA: child "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " done"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXAutoAction;->D()V

    iget v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/dynatrace/android/agent/DTXAutoAction;->B:I

    :cond_b
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_c

    iget-object p0, v8, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    const-string v2, " closed: shouldSave="

    const-string v3, " rc="

    invoke-static {v1, p0, v2, v3, p1}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    if-nez v0, :cond_c

    iget-object p0, v8, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-wide v1, v8, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Discard %s tagId=%d capture state=%b"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_c
    return-void
.end method

.method public final w(Z)V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/dynatrace/android/agent/DTXActionImpl;->v:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/agent/CustomSegment;

    invoke-virtual {v2}, Lcom/dynatrace/android/agent/CustomSegment;->k()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/dynatrace/android/agent/DTXActionImpl;

    invoke-virtual {v2, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->v(Z)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public x(Lcom/dynatrace/android/agent/CustomSegment;)V
    .locals 0

    return-void
.end method

.class public abstract Lcom/dynatrace/android/agent/AgentUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/dynatrace/android/agent/WebReqTag;
    .locals 19

    sget-object v0, Lcom/dynatrace/android/agent/Core;->k:Lcom/dynatrace/android/agent/CommunicationManager;

    iget-object v0, v0, Lcom/dynatrace/android/agent/CommunicationManager;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/ActionThreadLocal;->a()V

    :try_start_0
    sget-object v0, Lcom/dynatrace/android/agent/ActionThreadLocal;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/agent/DTXActionImpl;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/dynatrace/android/agent/DTXAutoAction;->N:Lcom/dynatrace/android/agent/DTXAutoAction;

    :cond_1
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    iget-wide v5, v0, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget-object v7, v0, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v8, v0, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/DTXActionImpl;->s()Lcom/dynatrace/android/agent/WebReqTag;

    move-result-object v9

    goto :goto_1

    :cond_2
    move-object v7, v1

    move-object v9, v7

    move v8, v2

    move-wide v5, v3

    :goto_1
    if-nez v9, :cond_3

    sget-object v5, Lcom/dynatrace/android/agent/data/Session;->m:Lcom/dynatrace/android/agent/data/RandomFactory;

    sget-object v5, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v5}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v5

    invoke-static {v5, v6, v2}, Lcom/dynatrace/android/agent/data/Session;->b(JZ)Lcom/dynatrace/android/agent/data/Session;

    move-result-object v7

    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget v8, v2, Lcom/dynatrace/android/agent/AdkSettings;->c:I

    new-instance v9, Lcom/dynatrace/android/agent/WebReqTag;

    invoke-direct {v9, v3, v4, v8, v7}, Lcom/dynatrace/android/agent/WebReqTag;-><init>(JILcom/dynatrace/android/agent/data/Session;)V

    move-wide v14, v3

    :goto_2
    move/from16 v17, v8

    goto :goto_3

    :cond_3
    move-wide v14, v5

    goto :goto_2

    :goto_3
    iget-object v2, v7, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    sget-object v5, Lcom/dynatrace/android/agent/EventType;->WEB_REQUEST:Lcom/dynatrace/android/agent/EventType;

    invoke-virtual {v2, v5}, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a(Lcom/dynatrace/android/agent/EventType;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    new-instance v10, Lcom/dynatrace/android/agent/CustomSegment;

    invoke-virtual {v9}, Lcom/dynatrace/android/agent/WebReqTag;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/dynatrace/android/agent/EventType;->PLACEHOLDER:Lcom/dynatrace/android/agent/EventType;

    const/16 v18, 0x1

    const/16 v12, 0x64

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v18}, Lcom/dynatrace/android/agent/CustomSegment;-><init>(Ljava/lang/String;ILcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZ)V

    cmp-long v1, v14, v3

    if-nez v1, :cond_7

    sget-object v0, Lcom/dynatrace/android/agent/DTXActionImpl;->y:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v0, v0, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/Configuration;->d:Lcom/dynatrace/android/agent/conf/AgentMode;

    sget-object v1, Lcom/dynatrace/android/agent/conf/AgentMode;->SAAS:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/dynatrace/android/agent/DTXActionImpl;->y:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v1, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v10}, Lcom/dynatrace/android/agent/DTXActionImpl;->o(Lcom/dynatrace/android/agent/CustomSegment;)V

    :goto_4
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_8

    sget-object v0, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    iget-object v0, v10, Lcom/dynatrace/android/agent/CustomSegment;->o:Ljava/lang/String;

    iget-wide v1, v10, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v10, Lcom/dynatrace/android/agent/CustomSegment;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Added an event %s id=%d pid=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_8
    move-object v1, v9

    :goto_5
    return-object v1
.end method

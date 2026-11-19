.class public final Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl;
.super Lcom/dynatrace/agent/lifecycle/AppStartupManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl;",
        "Lcom/dynatrace/agent/lifecycle/AppStartupManager;",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;",
        "appStartupLogger",
        "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;",
        "rumEventDispatcher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/view/NavigationTracker;",
        "navigationTracker",
        "Lkotlin/Function0;",
        "Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;",
        "visibilityStatusProvider",
        "Lcom/dynatrace/agent/lifecycle/NewUserChecker;",
        "newUserChecker",
        "Lcom/dynatrace/agent/useraction/UserActionController;",
        "userActionController",
        "<init>",
        "(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/agent/common/time/TimeProvider;",
            "Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;",
            "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;",
            "Lcom/dynatrace/agent/di/SessionInformationProvider;",
            "Lcom/dynatrace/agent/view/NavigationTracker;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;",
            ">;",
            "Lcom/dynatrace/agent/lifecycle/NewUserChecker;",
            "Lcom/dynatrace/agent/useraction/UserActionController;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p8}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;-><init>(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->BACKGROUND:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iput-boolean v3, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->j:Z

    :cond_0
    iget-boolean v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->j:Z

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v1

    sget-object v4, Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const-string v5, "App startup type "

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v4, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    new-instance v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v8, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_RESUME_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v4, v8, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v4}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    invoke-virtual {v0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->c()V

    iput-boolean v6, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->j:Z

    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->d:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v14

    iget-boolean v1, v14, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    if-nez v1, :cond_2

    const-string v1, "startup event cannot be tracked, isGrailEventsCanBeCaptured == false"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iput-object v7, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->k:Lcom/dynatrace/agent/view/NavigationEvent;

    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, v14, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    if-nez v1, :cond_3

    const-string v1, "startup event cannot be tracked, session is disabled"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iput-object v7, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->k:Lcom/dynatrace/agent/view/NavigationEvent;

    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b()Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-wide v10, v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    iget-object v2, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-wide v8, v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    iget-object v2, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b:Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v12, v8, v10

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "characteristics.has_app_start"

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "app_start.type"

    invoke-virtual {v1}, Lcom/dynatrace/agent/lifecycle/model/AppStartupType;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v15, "app_start."

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-virtual {v15}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-wide v3, v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    sub-long/2addr v3, v10

    invoke-virtual {v9, v8, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const-string v2, "app_start.start_time"

    invoke-virtual {v9, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "app_start.end_time"

    invoke-virtual {v9, v2, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "characteristics.has_visibility_change"

    const/4 v15, 0x1

    invoke-virtual {v9, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v2, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->FOREGROUND:Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    invoke-virtual {v2}, Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "visibility.state"

    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/dynatrace/agent/lifecycle/model/AppStartupType;->COLD:Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->g:Lcom/dynatrace/agent/lifecycle/NewUserChecker;

    invoke-interface {v1}, Lcom/dynatrace/agent/lifecycle/NewUserChecker;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "characteristics.is_new_user"

    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_5
    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->k:Lcom/dynatrace/agent/view/NavigationEvent;

    if-nez v1, :cond_6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->h:Lcom/dynatrace/agent/useraction/UserActionController;

    sget-object v3, Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;->a:Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;

    invoke-virtual {v2, v3}, Lcom/dynatrace/agent/useraction/UserActionController;->c(Lcom/dynatrace/agent/useraction/SignificantEvent;)V

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/dynatrace/agent/view/NavigationEvent;->g:Z

    invoke-virtual {v1}, Lcom/dynatrace/agent/view/NavigationEvent;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_7

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    iput-object v7, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->k:Lcom/dynatrace/agent/view/NavigationEvent;

    :goto_1
    const-string v2, "start_time"

    const-string v3, "duration"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/dynatrace/agent/events/enrichment/JsonObjectExtensionsKt;->f(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/List;)V

    iget-object v8, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->c:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    invoke-virtual/range {v8 .. v14}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->a(Lorg/json/JSONObject;JJLcom/dynatrace/agent/metrics/SessionInformationMetrics;)V

    :cond_8
    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :pswitch_1
    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_RESUME_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    goto :goto_2

    :pswitch_2
    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_START_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    invoke-virtual {v0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->c()V

    goto :goto_2

    :pswitch_3
    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_START_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    goto :goto_2

    :pswitch_4
    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    invoke-virtual {v0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->c()V

    goto :goto_2

    :pswitch_5
    iget-object v3, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-object v3, v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->a:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->APPLICATION_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    if-ne v3, v4, :cond_9

    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->APPLICATION_CREATE_END:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    invoke-virtual {v0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->c()V

    :cond_9
    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->ACTIVITY_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    goto :goto_2

    :pswitch_6
    new-instance v3, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    sget-object v4, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;->APPLICATION_CREATE_START:Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;

    invoke-direct {v3, v4, v1, v2}, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;-><init>(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;J)V

    invoke-virtual {v0, v3}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->a(Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;)V

    :goto_2
    :pswitch_7
    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    if-ne v1, v15, :cond_a

    iget-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->e:Lcom/dynatrace/agent/view/NavigationTracker;

    invoke-virtual {v1, v7, v7, v7, v6}, Lcom/dynatrace/agent/view/NavigationTracker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/dynatrace/agent/view/NavigationEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->k:Lcom/dynatrace/agent/view/NavigationEvent;

    invoke-virtual {v0}, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b()Lcom/dynatrace/agent/lifecycle/model/AppStartupType;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->b:Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;

    iget-object v0, v0, Lcom/dynatrace/agent/lifecycle/AppStartupManager;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;

    iget-wide v3, v0, Lcom/dynatrace/agent/lifecycle/model/AppStartupInstant;->b:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " begin at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

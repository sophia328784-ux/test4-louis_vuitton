.class public final Lcom/dynatrace/agent/useraction/UserActionLifecycle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/useraction/UserActionLifecycle$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dynatrace/agent/useraction/UserActionLifecycle;",
        "",
        "Lcom/dynatrace/agent/useraction/UserActionTimer;",
        "timerScheduler",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
        "serverConfigDataSource",
        "Lkotlin/collections/ArrayDeque;",
        "Lcom/dynatrace/agent/useraction/RetiredUserAction;",
        "retiredUas",
        "Lcom/dynatrace/agent/useraction/UserActionGraveyard;",
        "graveyard",
        "Lkotlin/Function1;",
        "Lcom/dynatrace/agent/events/EventContent;",
        "",
        "onDispatch",
        "<init>",
        "(Lcom/dynatrace/agent/useraction/UserActionTimer;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lkotlin/collections/ArrayDeque;Lcom/dynatrace/agent/useraction/UserActionGraveyard;Lkotlin/jvm/functions/Function1;)V",
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


# instance fields
.field public final a:Lcom/dynatrace/agent/useraction/UserActionTimer;

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

.field public final d:Lkotlin/collections/ArrayDeque;

.field public final e:Lcom/dynatrace/agent/useraction/UserActionGraveyard;

.field public final f:Lkotlin/jvm/functions/Function1;

.field public g:Lcom/dynatrace/agent/useraction/PendingUserAction;

.field public h:Lcom/dynatrace/agent/useraction/ActiveUserAction;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/useraction/UserActionTimer;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lkotlin/collections/ArrayDeque;Lcom/dynatrace/agent/useraction/UserActionGraveyard;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dynatrace/agent/useraction/UserActionTimer;",
            "Lcom/dynatrace/agent/common/time/TimeProvider;",
            "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;",
            "Lkotlin/collections/ArrayDeque<",
            "Lcom/dynatrace/agent/useraction/RetiredUserAction;",
            ">;",
            "Lcom/dynatrace/agent/useraction/UserActionGraveyard;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/dynatrace/agent/events/EventContent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    iput-object p2, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    iput-object p4, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->d:Lkotlin/collections/ArrayDeque;

    iput-object p5, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->e:Lcom/dynatrace/agent/useraction/UserActionGraveyard;

    iput-object p6, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/useraction/UserActionTimer;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lkotlin/collections/ArrayDeque;Lcom/dynatrace/agent/useraction/UserActionGraveyard;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_0

    .line 34
    new-instance p4, Lkotlin/collections/ArrayDeque;

    invoke-direct {p4}, Lkotlin/collections/ArrayDeque;-><init>()V

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    .line 35
    new-instance p5, Lcom/dynatrace/agent/useraction/UserActionGraveyard;

    const/4 p4, 0x1

    const/4 p7, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p5, v0, v1, p4, p7}, Lcom/dynatrace/agent/useraction/UserActionGraveyard;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;-><init>(Lcom/dynatrace/agent/useraction/UserActionTimer;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lkotlin/collections/ArrayDeque;Lcom/dynatrace/agent/useraction/UserActionGraveyard;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static a(Lcom/dynatrace/agent/useraction/ActiveUserAction;Lorg/json/JSONObject;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->j:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-virtual {v0, p1}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->a(Lorg/json/JSONObject;)V

    const-string v0, "characteristics.has_request"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "duration"

    const-string v2, "start_time"

    if-eqz v0, :cond_2

    const-string v0, "characteristics.is_api_reported"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    :goto_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v5, v3

    iget-wide v3, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->l:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->l:J

    :cond_2
    const-string v0, "characteristics.has_navigation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->l:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->l:J

    :cond_3
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "background: active="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", hasPending="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;->BACKGROUND:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    iget-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h(Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;JLjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v1, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->d:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatching pending UIA standalone (startTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/dynatrace/agent/events/EventContent;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->b:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0}, Lcom/dynatrace/agent/events/EventContent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v3, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    :goto_2
    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    invoke-virtual {p0}, Lcom/dynatrace/agent/useraction/UserActionTimer;->a()V

    return-void
.end method

.method public final c(Lcom/dynatrace/agent/useraction/SignificantEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    const/16 v4, 0x29

    iget-object v9, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    const-string v6, "significant "

    if-eqz v2, :cond_9

    instance-of v7, v1, Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->NAVIGATION:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    :goto_0
    move-object v14, v7

    goto :goto_1

    :cond_0
    sget-object v7, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->SAME_VIEW:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    goto :goto_0

    :goto_1
    iget-object v7, v2, Lcom/dynatrace/agent/useraction/PendingUserAction;->b:Lorg/json/JSONObject;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/dynatrace/agent/useraction/ActiveUserAction;->m:Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;

    iget-wide v12, v2, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    iget-object v15, v2, Lcom/dynatrace/agent/useraction/PendingUserAction;->c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

    sget-object v10, Lcom/dynatrace/agent/useraction/UserInteractionMemory;->d:Lcom/dynatrace/agent/useraction/UserInteractionMemory$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/dynatrace/agent/useraction/UserInteractionMemory;

    const-string v11, "interaction.type"

    invoke-static {v11, v7}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x1

    const-string v3, "ui_element.responder.detected_name"

    invoke-static {v3, v7}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ui_element.responder.name_origin"

    invoke-static {v5, v7}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v11, v3, v5}, Lcom/dynatrace/agent/useraction/UserInteractionMemory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v10

    new-instance v10, Lcom/dynatrace/agent/useraction/ActiveUserAction;

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/dynatrace/agent/util/HexGenerator;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v10 .. v16}, Lcom/dynatrace/agent/useraction/ActiveUserAction;-><init>(Ljava/lang/String;JLcom/dynatrace/agent/useraction/ActiveUserAction$Type;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Lcom/dynatrace/agent/useraction/UserInteractionMemory;)V

    move-object v3, v10

    iget-object v5, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    const-string v8, ") to active, minting new instanceId="

    const-string v10, " event is promoting pending UA (uaStartTime="

    if-eqz v5, :cond_1

    iget-object v5, v5, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", interrupting already active UA (instanceId="

    invoke-static {v14, v8, v11, v6, v5}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->f:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/dynatrace/agent/useraction/UserActionTimer;->a()V

    sget-object v4, Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;->INTERRUPTED_BY_AUTOMATIC:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    invoke-virtual {v0, v4, v12, v13, v11}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h(Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;JLjava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "cancelling validation delay"

    invoke-static {v4}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v4, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iput-object v5, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    :goto_2
    const-string v4, "user_action.instance_id"

    invoke-virtual {v7, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-boolean v2, v2, Lcom/dynatrace/agent/useraction/PendingUserAction;->d:Z

    if-nez v2, :cond_3

    new-instance v2, Lcom/dynatrace/agent/events/EventContent;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v2, v4, v7}, Lcom/dynatrace/agent/events/EventContent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v4, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    instance-of v2, v1, Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;

    if-eqz v2, :cond_4

    iget v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    iget v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;->a:Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->i:I

    iget-object v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    sget-object v2, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->SAME_VIEW:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->NAVIGATION:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    iput-object v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    :cond_5
    :goto_3
    iput-object v3, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    iget-wide v7, v15, Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;->a:J

    new-instance v1, Li51;

    move/from16 v2, v17

    invoke-direct {v1, v0, v2}, Li51;-><init>(Lcom/dynatrace/agent/useraction/UserActionLifecycle;I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "scheduling max duration: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v2, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->e:Lkotlinx/coroutines/Job;

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v2, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_6
    new-instance v10, Lp01;

    const/16 v2, 0x14

    invoke-direct {v10, v9, v1, v2}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v1, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/dynatrace/agent/useraction/UserActionTimer$launchTimer$1;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/dynatrace/agent/useraction/UserActionTimer$launchTimer$1;-><init>(JLcom/dynatrace/agent/useraction/UserActionTimer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v1, v5, v5, v6, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->e:Lkotlinx/coroutines/Job;

    iget v1, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    if-nez v1, :cond_7

    invoke-virtual {v0, v5}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->i(Ljava/lang/Long;)V

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_9
    iget-object v2, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ignoring significant "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " event: no pending UA and no active UA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_a
    instance-of v3, v1, Lcom/dynatrace/agent/useraction/SignificantEvent$WebRequest;

    if-eqz v3, :cond_c

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "cancelling end delay"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_b
    iput-object v5, v9, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    iget v0, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    iget v0, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    goto :goto_4

    :cond_c
    const/16 v17, 0x1

    sget-object v3, Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;->a:Lcom/dynatrace/agent/useraction/SignificantEvent$Navigation;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget v3, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->i:I

    iget-object v3, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    sget-object v5, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->SAME_VIEW:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    if-ne v3, v5, :cond_d

    sget-object v3, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->NAVIGATION:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    iput-object v3, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    :cond_d
    iget v3, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    if-nez v3, :cond_e

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->i(Ljava/lang/Long;)V

    :cond_e
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " event applied to active UA (instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    invoke-virtual {v0}, Lcom/dynatrace/agent/useraction/UserActionTimer;->a()V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->d:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatching pending UIA standalone (startTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/dynatrace/agent/events/EventContent;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->b:Lorg/json/JSONObject;

    invoke-direct {v2, v3, v0}, Lcom/dynatrace/agent/events/EventContent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    const-string v0, "uaEnable=false: discarded pending UA, dispatched UIA standalone"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "uaEnable=false: active UA (instanceId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") discarded"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final e(Lorg/json/JSONObject;JZ)V
    .locals 11

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->j(Lorg/json/JSONObject;)V

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UIA arrived: replacing pending UA (startTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), previous UIA is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string v3, "dropped"

    goto :goto_0

    :cond_0
    const-string v3, "dispatched standalone"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    if-nez v1, :cond_2

    new-instance v1, Lcom/dynatrace/agent/events/EventContent;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->b:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0}, Lcom/dynatrace/agent/events/EventContent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UIA arrived: creating new pending UA (startTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;

    invoke-interface {v0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v1

    iget v1, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    int-to-long v3, v1

    new-instance v5, Lcom/dynatrace/agent/useraction/PendingUserAction;

    sget-object v1, Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;->c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot$Companion;

    invoke-interface {v0}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;->b()Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

    iget v1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    int-to-long v1, v1

    iget v0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    int-to-long v6, v0

    invoke-direct {v9, v1, v2, v6, v7}, Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;-><init>(JJ)V

    move-object v8, p1

    move-wide v6, p2

    move v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/dynatrace/agent/useraction/PendingUserAction;-><init>(JLorg/json/JSONObject;Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;Z)V

    iput-object v5, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    new-instance p1, Li51;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Li51;-><init>(Lcom/dynatrace/agent/useraction/UserActionLifecycle;I)V

    iget-object v5, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v5, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    const-string p2, "scheduling validation delay: "

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms (resetting, new UIA arrived during validation period)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_2
    iget-object p0, v5, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    const/4 p2, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0, p2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_4
    new-instance v6, Lp01;

    const/16 p0, 0x15

    invoke-direct {v6, v5, p1, p0}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, v5, Lcom/dynatrace/agent/useraction/UserActionTimer;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionTimer$launchTimer$1;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/dynatrace/agent/useraction/UserActionTimer$launchTimer$1;-><init>(JLcom/dynatrace/agent/useraction/UserActionTimer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, p2, p2, v2, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v5, Lcom/dynatrace/agent/useraction/UserActionTimer;->c:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f(Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "characteristics.has_user_action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "characteristics.has_request"

    const-string v4, "start_time"

    const-string v5, "user_action.instance_id"

    iget-object v6, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->d:Lkotlin/collections/ArrayDeque;

    if-eqz v2, :cond_8

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v10

    const-string v11, "match ua to event: UA event (instanceId="

    if-nez v10, :cond_4

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v10, v10, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v10, v10, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v10, v10, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v10, v10, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "match ua to event: head-mismatch - UA event (instanceId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "), retired head (instanceId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "); draining"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v12, v12, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v12, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v12, v12, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-wide v12, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    cmp-long v12, v12, v8

    if-gez v12, :cond_2

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    invoke-virtual {v0, v12}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v8, v8, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v8, v8, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") not found in retired queue after draining "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " UAs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ") arrived but retired queue is empty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    if-eqz v6, :cond_7

    iget-object v8, v6, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v8, v8, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_7

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;-><init>(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    goto/16 :goto_b

    :cond_7
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v8, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->e:Lcom/dynatrace/agent/useraction/UserActionGraveyard;

    if-eqz v2, :cond_f

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v2, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v2, :cond_9

    iget-wide v11, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    cmp-long v11, v9, v11

    if-lez v11, :cond_9

    new-instance v6, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;

    invoke-direct {v6, v2}, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;-><init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;)V

    :goto_5
    move-object v2, v6

    goto/16 :goto_b

    :cond_9
    invoke-virtual {v6}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v12, v11, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-wide v12, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    iget-wide v14, v11, Lcom/dynatrace/agent/useraction/RetiredUserAction;->b:J

    cmp-long v11, v12, v9

    if-gtz v11, :cond_a

    cmp-long v11, v9, v14

    if-gtz v11, :cond_a

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    check-cast v6, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    if-eqz v6, :cond_c

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;-><init>(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    goto/16 :goto_b

    :cond_c
    iget-object v2, v8, Lcom/dynatrace/agent/useraction/UserActionGraveyard;->b:Lkotlin/collections/ArrayDeque;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/dynatrace/agent/useraction/GraveyardEntry;

    iget-wide v11, v8, Lcom/dynatrace/agent/useraction/GraveyardEntry;->b:J

    iget-wide v13, v8, Lcom/dynatrace/agent/useraction/GraveyardEntry;->c:J

    cmp-long v8, v11, v9

    if-gtz v8, :cond_d

    cmp-long v8, v9, v13

    if-gtz v8, :cond_d

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    check-cast v6, Lcom/dynatrace/agent/useraction/GraveyardEntry;

    if-eqz v6, :cond_7

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;

    invoke-direct {v2, v6}, Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;-><init>(Lcom/dynatrace/agent/useraction/GraveyardEntry;)V

    goto/16 :goto_b

    :cond_f
    const-string v2, "characteristics.has_user_interaction"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "ui_element.responder.detected_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_10

    goto :goto_8

    :cond_10
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_11

    goto/16 :goto_4

    :cond_11
    iget-object v9, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v9, :cond_12

    iget-object v10, v9, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;

    invoke-direct {v2, v9}, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;-><init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;)V

    goto/16 :goto_b

    :cond_12
    invoke-virtual {v6}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v10, v10, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v10, v10, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_9
    check-cast v9, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    if-eqz v9, :cond_15

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;

    invoke-direct {v2, v9}, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;-><init>(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    goto :goto_b

    :cond_15
    iget-object v6, v8, Lcom/dynatrace/agent/useraction/UserActionGraveyard;->b:Lkotlin/collections/ArrayDeque;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/dynatrace/agent/useraction/GraveyardEntry;

    iget-object v9, v9, Lcom/dynatrace/agent/useraction/GraveyardEntry;->a:Ljava/lang/String;

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_a

    :cond_17
    const/4 v8, 0x0

    :goto_a
    check-cast v8, Lcom/dynatrace/agent/useraction/GraveyardEntry;

    if-eqz v8, :cond_7

    new-instance v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;

    invoke-direct {v2, v8}, Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;-><init>(Lcom/dynatrace/agent/useraction/GraveyardEntry;)V

    goto :goto_b

    :cond_18
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    if-eqz v2, :cond_19

    new-instance v6, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;

    invoke-direct {v6, v2}, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;-><init>(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    goto/16 :goto_5

    :cond_19
    iget-object v2, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v2, :cond_7

    new-instance v6, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;

    invoke-direct {v6, v2}, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;-><init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;)V

    goto/16 :goto_5

    :goto_b
    const-string v6, "incorporateEvent: event start_time="

    if-nez v2, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " matched no UA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object v8, v2, Lcom/dynatrace/agent/useraction/UserActionMatch;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " attributed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v9, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v9, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " UA with instanceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    instance-of v5, v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;

    const-string v6, "duration"

    if-eqz v5, :cond_1b

    move-object v7, v2

    check-cast v7, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;

    iget-object v7, v7, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;->b:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    invoke-static {v7, v1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a(Lcom/dynatrace/agent/useraction/ActiveUserAction;Lorg/json/JSONObject;)V

    goto/16 :goto_f

    :cond_1b
    instance-of v8, v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;

    if-eqz v8, :cond_1c

    move-object v7, v2

    check-cast v7, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;

    iget-object v7, v7, Lcom/dynatrace/agent/useraction/UserActionMatch$Retired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v7, v7, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    invoke-static {v7, v1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a(Lcom/dynatrace/agent/useraction/ActiveUserAction;Lorg/json/JSONObject;)V

    goto/16 :goto_f

    :cond_1c
    instance-of v8, v2, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;

    if-eqz v8, :cond_1f

    move-object v8, v2

    check-cast v8, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;

    iget-object v8, v8, Lcom/dynatrace/agent/useraction/UserActionMatch$SelfRetired;->b:Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v9, v8, Lcom/dynatrace/agent/useraction/RetiredUserAction;->c:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    iget-wide v10, v8, Lcom/dynatrace/agent/useraction/RetiredUserAction;->b:J

    iget-object v12, v8, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    sget-object v13, Lcom/dynatrace/agent/useraction/UserActionLifecycle$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v13, v9

    packed-switch v9, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    iget-wide v13, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    sub-long/2addr v10, v13

    :goto_c
    move-object v9, v8

    goto :goto_e

    :pswitch_1
    iget-object v7, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

    iget-wide v10, v7, Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;->a:J

    goto :goto_c

    :pswitch_2
    iget-wide v13, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->l:J

    move-object v9, v8

    iget-wide v7, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    cmp-long v13, v13, v7

    if-eqz v13, :cond_1d

    move-object/from16 v15, v16

    goto :goto_d

    :cond_1d
    const/4 v15, 0x0

    :goto_d
    if-eqz v15, :cond_1e

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :cond_1e
    sub-long/2addr v10, v7

    :goto_e
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "UA (instanceId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") finalized: reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/dynatrace/agent/useraction/RetiredUserAction;->c:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms, requests="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", pendingWRs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "user_action.requests.count"

    iget v8, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "user_action.requests.pending_request_count"

    iget v8, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "user_action.navigation_count"

    iget v8, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->i:I

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v7, v12, Lcom/dynatrace/agent/useraction/ActiveUserAction;->j:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-virtual {v7, v1}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->b(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v9}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    goto :goto_f

    :cond_1f
    instance-of v7, v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Graveyard;

    if-eqz v7, :cond_22

    :goto_f
    if-nez v5, :cond_20

    goto :goto_10

    :cond_20
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v3, :cond_21

    iget v3, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    if-nez v3, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "restartEndDelayTimerIfNeeded: active UA (instanceId="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;

    iget-object v2, v2, Lcom/dynatrace/agent/useraction/UserActionMatch$Active;->b:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-object v2, v2, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") has no more pending WRs, scheduling end delay"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->i(Ljava/lang/Long;)V

    :cond_21
    :goto_10
    return-void

    :cond_22
    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V
    .locals 9

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->d:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget v1, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    const-string v2, "retired UA (instanceId="

    if-lez v1, :cond_2

    new-instance v3, Lcom/dynatrace/agent/useraction/GraveyardEntry;

    iget-object v4, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    iget-wide v5, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    iget-wide v7, p1, Lcom/dynatrace/agent/useraction/RetiredUserAction;->b:J

    invoke-direct/range {v3 .. v8}, Lcom/dynatrace/agent/useraction/GraveyardEntry;-><init>(Ljava/lang/String;JJ)V

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->e:Lcom/dynatrace/agent/useraction/UserActionGraveyard;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionGraveyard;->b:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1, v3}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-wide v4, v3, Lcom/dynatrace/agent/useraction/GraveyardEntry;->c:J

    iget-wide v6, p0, Lcom/dynatrace/agent/useraction/UserActionGraveyard;->a:J

    sub-long/2addr v4, v6

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/agent/useraction/GraveyardEntry;

    iget-wide v6, v1, Lcom/dynatrace/agent/useraction/GraveyardEntry;->b:J

    cmp-long v1, v6, v4

    if-gez v1, :cond_0

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "graveyard: buried "

    iget-object v1, v3, Lcom/dynatrace/agent/useraction/GraveyardEntry;->a:Ljava/lang/String;

    if-lez p0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", evicted "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " stale entry(s)"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") released to graveyard (pendingWRs > 0)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") released to oblivion (UA is done)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;JLjava/lang/String;)V
    .locals 8

    iget-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v6, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "retiring active UA (instanceId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-wide v2, Lcom/dynatrace/agent/common/specification/OneAgentSpecification$RetentionSpecifications;->a:J

    invoke-static {v2, v3}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v2

    sub-long v2, p2, v2

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->d:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    iget-object v4, v4, Lcom/dynatrace/agent/useraction/RetiredUserAction;->a:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    iget-wide v4, v4, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    invoke-virtual {v7}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    invoke-virtual {p0, v4}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g(Lcom/dynatrace/agent/useraction/RetiredUserAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pruned "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " stale retired UA(s)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Lcom/dynatrace/agent/useraction/RetiredUserAction;

    move-object v4, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/useraction/RetiredUserAction;-><init>(Lcom/dynatrace/agent/useraction/ActiveUserAction;JLcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-wide p1, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->b:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->k:Lcom/dynatrace/agent/events/EventBuildingContext;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "start_time"

    invoke-virtual {p4, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "duration"

    sub-long p1, v2, p1

    invoke-virtual {p4, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "characteristics.has_user_action"

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "user_action.instance_id"

    invoke-virtual {p1, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->e:Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;

    invoke-virtual {p2}, Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;->a()Ljava/lang/String;

    move-result-object p2

    const-string p4, "user_action.type"

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "user_action.complete_reason"

    invoke-virtual {v4}, Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "user_action.requests.count"

    iget p4, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->g:I

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "user_action.requests.pending_request_count"

    iget p4, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->h:I

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "user_action.navigation_count"

    iget p4, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->i:I

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz v5, :cond_3

    const-string p2, "user_action.interrupted_by_instance_id"

    invoke-virtual {p1, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object p2, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->f:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p4, "user_action.interrupted_instance_id"

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object p2, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->j:Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lcom/dynatrace/agent/view/ErrorSummaryAccumulator;->b(Lorg/json/JSONObject;)V

    iget-object p2, v1, Lcom/dynatrace/agent/useraction/ActiveUserAction;->d:Lcom/dynatrace/agent/useraction/UserInteractionMemory;

    iget-object p4, p2, Lcom/dynatrace/agent/useraction/UserInteractionMemory;->a:Ljava/lang/String;

    if-eqz p4, :cond_5

    const-string v0, "interaction.type"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    iget-object p4, p2, Lcom/dynatrace/agent/useraction/UserInteractionMemory;->b:Ljava/lang/String;

    if-eqz p4, :cond_6

    const-string v0, "ui_element.detected_name"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object p2, p2, Lcom/dynatrace/agent/useraction/UserInteractionMemory;->c:Ljava/lang/String;

    if-eqz p2, :cond_7

    const-string p4, "ui_element.name_origin"

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    new-instance p2, Lcom/dynatrace/agent/events/EventContent;

    iget-object p3, p3, Lcom/dynatrace/agent/events/EventBuildingContext;->a:Lorg/json/JSONObject;

    invoke-direct {p2, p3, p1}, Lcom/dynatrace/agent/events/EventContent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final i(Ljava/lang/Long;)V
    .locals 14

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->c:Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;

    if-eqz v0, :cond_4

    iget-wide v0, v0, Lcom/dynatrace/agent/useraction/UserActionConfigSnapshot;->b:J

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v4}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    :cond_0
    move-wide v4, v2

    :cond_1
    sub-long v6, v0, v4

    cmp-long p1, v6, v2

    if-gez p1, :cond_2

    move-wide v9, v2

    goto :goto_0

    :cond_2
    move-wide v9, v6

    :goto_0
    const-string p1, "ms (configured="

    const-string v2, "scheduling end delay: "

    invoke-static {v9, v10, v2, p1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms, pipelineLatency="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    new-instance v0, Lp01;

    const/16 v1, 0x13

    invoke-direct {v0, p0, p1, v1}, Lp01;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v11, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->a:Lcom/dynatrace/agent/useraction/UserActionTimer;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object p0, v11, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_3
    new-instance v12, Lhv0;

    const/16 p0, 0x18

    invoke-direct {v12, v0, p0}, Lhv0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v11, Lcom/dynatrace/agent/useraction/UserActionTimer;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lcom/dynatrace/agent/useraction/UserActionTimer$launchTimer$1;

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/dynatrace/agent/useraction/UserActionTimer$launchTimer$1;-><init>(JLcom/dynatrace/agent/useraction/UserActionTimer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, p1, p1, v8, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v11, Lcom/dynatrace/agent/useraction/UserActionTimer;->d:Lkotlinx/coroutines/Job;

    :cond_4
    return-void
.end method

.method public final j(Lorg/json/JSONObject;)V
    .locals 2

    iget-object p0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stampWithActiveUa: stamping UIA with active UA (instanceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const-string v0, "user_action.instance_id"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

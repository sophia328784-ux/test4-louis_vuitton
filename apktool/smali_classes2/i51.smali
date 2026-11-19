.class public final synthetic Li51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/dynatrace/agent/useraction/UserActionLifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/dynatrace/agent/useraction/UserActionLifecycle;I)V
    .locals 0

    iput p2, p0, Li51;->b:I

    iput-object p1, p0, Li51;->c:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Li51;->b:I

    const/16 v1, 0x29

    iget-object p0, p0, Li51;->c:Lcom/dynatrace/agent/useraction/UserActionLifecycle;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "max duration fired: retiring UA (instanceId="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h:Lcom/dynatrace/agent/useraction/ActiveUserAction;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/dynatrace/agent/useraction/ActiveUserAction;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;->TIMEOUT:Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;

    iget-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->h(Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;JLjava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "validation delay fired for pending UA (startTime="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    if-eqz v3, :cond_2

    iget-wide v3, v3, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): no significant event"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-boolean v3, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->d:Z

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dispatching pending UIA standalone (startTime="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->f:Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/dynatrace/agent/events/EventContent;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v0, Lcom/dynatrace/agent/useraction/PendingUserAction;->b:Lorg/json/JSONObject;

    invoke-direct {v3, v4, v0}, Lcom/dynatrace/agent/events/EventContent;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v2, p0, Lcom/dynatrace/agent/useraction/UserActionLifecycle;->g:Lcom/dynatrace/agent/useraction/PendingUserAction;

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

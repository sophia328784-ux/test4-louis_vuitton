.class public Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;
.super Lcom/sightcall/universal/scenario/steps/AcdCallStep;
.source "SourceFile"


# instance fields
.field private flagRetryAfterConnection:Z

.field private final mask:J

.field private final value:J


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Session;JJ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-wide p2, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->mask:J

    iput-wide p4, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->value:J

    return-void
.end method

.method private retryAfterConnection()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->flagRetryAfterConnection:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->status()Lnet/rtccloud/sdk/User$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->execute()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->flagRetryAfterConnection:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAcd()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->interrupt()V

    return-void
.end method

.method public execute()V
    .locals 5

    invoke-super {p0}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->execute()V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->acd()Lnet/rtccloud/sdk/AcdModule;

    move-result-object v0

    iget-wide v1, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->mask:J

    iget-wide v3, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->value:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/rtccloud/sdk/AcdModule;->request(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " request error: mask:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->mask:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->value:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->interrupt()V

    :cond_0
    return-void
.end method

.method public interrupt()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->acd()Lnet/rtccloud/sdk/AcdModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AcdModule;->cancel()Z

    invoke-super {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public final onAcdQueueEvent(Lnet/rtccloud/sdk/event/acd/AcdQueueEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAcdQueueEvent() called with: event = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->updateServiceNotification()V

    return-void
.end method

.method public final onAcdReadyEvent(Lnet/rtccloud/sdk/event/acd/AcdReadyEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAcdReadyEvent() called with: event = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->updateServiceNotification()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onBind(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method public onRegistrationEvent(Lnet/rtccloud/sdk/event/presence/RegistrationEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onRegistrationEvent(Lnet/rtccloud/sdk/event/presence/RegistrationEvent;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;->$SwitchMap$net$rtccloud$sdk$User$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/presence/RegistrationEvent;->status()Lnet/rtccloud/sdk/User$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->flagRetryAfterConnection:Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->retryAfterConnection()V

    return-void
.end method

.method public onRtccStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onRtccStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep$1;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->flagRetryAfterConnection:Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;->retryAfterConnection()V

    return-void
.end method

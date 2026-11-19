.class public Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;
.super Lcom/sightcall/universal/scenario/steps/CallStep;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final code:Lcom/sightcall/universal/agent/Code;

.field private final guestUid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/agent/Code;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->code:Lcom/sightcall/universal/agent/Code;

    iput-object p3, p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->guestUid:Ljava/lang/String;

    return-void
.end method

.method public static with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Config;->guestReady()Lcom/sightcall/universal/fcm/messages/GuestReady;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->requiresMvs()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->mpi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "[mpid] must not be null to call on MVS"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-object v1

    :cond_2
    invoke-virtual {v2}, Lcom/sightcall/universal/fcm/messages/GuestReady;->guestUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_3
    new-instance v1, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;

    invoke-direct {v1, p0, v0, v2}, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;-><init>(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/agent/Code;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public createCallParameters()Lnet/rtccloud/sdk/Call$Parameters;
    .locals 1

    invoke-super {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->createCallParameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/Call$Parameters;->uidType(I)Lnet/rtccloud/sdk/Call$Parameters;

    return-object p0
.end method

.method public execute()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "execute() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Session;->requiresMvs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->code:Lcom/sightcall/universal/agent/Code;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->mpi()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->meetingPoint()Lnet/rtccloud/sdk/MeetingPointModule;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/MeetingPointModule;->asHost(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->host()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->guestUid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/steps/CallStep;->call(Ljava/lang/String;)V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V

    sget-object v0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->pincodeAutoDelete()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;->code:Lcom/sightcall/universal/agent/Code;

    new-instance v1, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$1;-><init>(Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep;)V

    invoke-virtual {p1, v0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->deleteCode(Lcom/sightcall/universal/agent/Code;Lcom/sightcall/universal/agent/DeleteCodeCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMeetingPointErrorEvent(Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/MeetingPoint;->isHost()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public onMeetingPointRequestEvent(Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/MeetingPoint;->isHost()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->uid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type()Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/MeetingPoint;->accept(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->call(Lnet/rtccloud/sdk/MeetingPoint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMeetingPointStatusEvent(Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->isHost()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/scenario/steps/HostPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$MeetingPoint$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->list()V

    return-void
.end method

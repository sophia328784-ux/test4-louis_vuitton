.class public Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;
.super Lcom/sightcall/universal/scenario/steps/CallStep;
.source "SourceFile"


# instance fields
.field private final pincode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;->pincode:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;->pincode:Ljava/lang/String;

    return-object p0
.end method

.method public static with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->pin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;-><init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public execute()V
    .locals 5

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "execute() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->calleeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "recipient"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SIPOK@@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;-><init>(Landroid/content/Context;Lcom/sightcall/universal/model/Session;)V

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sightcall/universal/scenario/steps/CallStep;->sendDataChannel(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->guest()Lcom/sightcall/universal/guest/UniversalGuest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$1;-><init>(Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep;)V

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/universal/guest/UniversalGuest;->notifyAgent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/guest/UniversalGuest$NotifyAgentCallback;)V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V

    sget-object v0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->accept(Lnet/rtccloud/sdk/Call;)V

    return-void
.end method

.method public onMeetingPointErrorEvent(Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/MeetingPoint;->isAttendee()Z

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
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/MeetingPoint;->isAttendee()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sightcall/universal/scenario/steps/GuestPincodeCallStep$2;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type()Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->call(Lnet/rtccloud/sdk/MeetingPoint;)V

    return-void
.end method

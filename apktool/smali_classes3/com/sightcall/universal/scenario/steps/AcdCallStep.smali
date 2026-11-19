.class public abstract Lcom/sightcall/universal/scenario/steps/AcdCallStep;
.super Lcom/sightcall/universal/scenario/steps/CallStep;
.source "SourceFile"


# static fields
.field private static final PREFIX_ACD_INFO:Ljava/lang/String; = "@ACD@INFO"

.field private static final PREFIX_CALL_REQUEST:Ljava/lang/String; = "@CALL_REQUEST@"

.field private static final TAG:Ljava/lang/String; = "AcdCallStep"


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method private handleAcdInfo(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V
    .locals 4

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->id()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->ack(I)Z

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->uid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@ACD@INFO"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;-><init>(Landroid/content/Context;Lcom/sightcall/universal/model/Session;)V

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/model/DataChannelParser$UserInfo;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lnet/rtccloud/sdk/DataChannelModule;->send(Ljava/lang/Object;JLjava/lang/String;)Z

    return-void
.end method

.method private handleCallRequest(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "mpi"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->meetingPoint()Lnet/rtccloud/sdk/MeetingPointModule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/MeetingPointModule;->asAttendee(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public static with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/AcdCallStep;
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->partner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/scenario/steps/AcdHttpCallStep;-><init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->acdMask()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->acdValue()J

    move-result-wide v5

    new-instance v1, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/universal/scenario/steps/AcdRtccCallStep;-><init>(Lcom/sightcall/universal/model/Session;JJ)V

    return-object v1
.end method


# virtual methods
.method public cancelAcd()V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public execute()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->presence()Lnet/rtccloud/sdk/PresenceModule;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/api/Presence;->ONLINE:Lcom/sightcall/universal/internal/api/Presence;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/PresenceModule;->set(I)Z

    return-void
.end method

.method public final onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V

    sget-object v0, Lcom/sightcall/universal/scenario/steps/AcdCallStep$1;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

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

.method public final onDataChannelAction(Lcom/sightcall/common/DataChannelAction;)V
    .locals 0

    return-void
.end method

.method public onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V
    .locals 2

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "@ACD@INFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->handleAcdInfo(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V

    return-void

    :cond_1
    const-string p1, "@CALL_REQUEST@"

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, v1}, Lcom/sightcall/universal/scenario/steps/AcdCallStep;->handleCallRequest(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMeetingPointErrorEvent(Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

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

    sget-object v0, Lcom/sightcall/universal/scenario/steps/AcdCallStep$1;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type()Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->uid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/MeetingPoint;->accept(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->call(Lnet/rtccloud/sdk/MeetingPoint;)V

    return-void
.end method

.class public Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;
.super Lcom/sightcall/universal/scenario/steps/CallStep;
.source "SourceFile"


# instance fields
.field private final mpid:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;->mpid:Ljava/lang/String;

    return-void
.end method

.method public static with(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->mpi()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;

    invoke-direct {v1, p0, v0}, Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;-><init>(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public execute()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "execute() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->meetingPoint()Lnet/rtccloud/sdk/MeetingPointModule;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/AttendeeCallStep;->mpid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/MeetingPointModule;->asAttendee(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->join()V

    return-void
.end method

.method public onMeetingPointErrorEvent(Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string v0, "onMeetingPointErrorEvent"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void
.end method

.method public onMeetingPointRequestEvent(Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/scenario/steps/AttendeeCallStep$1;->$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type()Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->call(Lnet/rtccloud/sdk/MeetingPoint;)V

    return-void
.end method

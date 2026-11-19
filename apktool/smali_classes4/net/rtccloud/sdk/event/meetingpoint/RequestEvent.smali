.class public final Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;
.super Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;
    }
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final type:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->uid:Ljava/lang/String;

    iput-object p1, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->displayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;)V

    .line 12
    iput-object p2, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    .line 13
    iput-object p3, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->uid:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestEvent{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->displayName:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->type:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;->uid:Ljava/lang/String;

    return-object p0
.end method

.class public final Lnet/rtccloud/sdk/event/meetingpoint/UpdateEvent;
.super Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/MeetingPoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UpdateEvent{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

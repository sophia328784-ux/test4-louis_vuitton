.class public final Lnet/rtccloud/sdk/event/meetingpoint/LockEvent;
.super Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;
.source "SourceFile"


# instance fields
.field private final lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Lock;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/event/meetingpoint/LockEvent;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-void
.end method


# virtual methods
.method public lock()Lnet/rtccloud/sdk/MeetingPoint$Lock;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/LockEvent;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockEvent{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/LockEvent;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

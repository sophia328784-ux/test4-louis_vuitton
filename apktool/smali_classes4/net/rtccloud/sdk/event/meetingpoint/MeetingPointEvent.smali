.class public abstract Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final meetingPoint:Lnet/rtccloud/sdk/MeetingPoint;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/MeetingPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    return-void
.end method


# virtual methods
.method public meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MeetingPointEvent{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

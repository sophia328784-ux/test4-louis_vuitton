.class public final Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;
.super Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
    }
.end annotation


# instance fields
.field private final action:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;)V

    iput-object p2, p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->action:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    iput-object p3, p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public action()Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->action:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0
.end method

.method public message()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->message:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ErrorEvent{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/rtccloud/sdk/event/meetingpoint/MeetingPointEvent;->meetingPoint()Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->action:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;->message:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

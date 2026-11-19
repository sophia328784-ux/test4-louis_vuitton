.class public final Lnet/rtccloud/sdk/event/call/RecordingEvent;
.super Lnet/rtccloud/sdk/event/call/CallEvent;
.source "SourceFile"


# instance fields
.field private final isRecording:Z


# direct methods
.method public constructor <init>(Lnet/rtccloud/sdk/Call;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/event/call/CallEvent;-><init>(Lnet/rtccloud/sdk/Call;)V

    iput-boolean p2, p0, Lnet/rtccloud/sdk/event/call/RecordingEvent;->isRecording:Z

    return-void
.end method


# virtual methods
.method public isRecording()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/event/call/RecordingEvent;->isRecording:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingEvent{call="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/call/CallEvent;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRecording="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lnet/rtccloud/sdk/event/call/RecordingEvent;->isRecording:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

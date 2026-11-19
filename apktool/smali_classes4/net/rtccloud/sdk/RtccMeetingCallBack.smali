.class public interface abstract Lnet/rtccloud/sdk/RtccMeetingCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H&J\u001b\u0010\u0011\u001a\u00020\u00032\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H&\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH&J\"\u0010\u001b\u001a\u00020\u00032\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000eH&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!H&\u00a8\u0006\"\u00c0\u0006\u0003"
    }
    d2 = {
        "Lnet/rtccloud/sdk/RtccMeetingCallBack;",
        "",
        "muclState",
        "",
        "state",
        "",
        "handleCommand",
        "callEvent",
        "Lnet/rtccloud/sdk/event/call/CallEvent;",
        "handleDataInBandChannel",
        "payload",
        "",
        "handleBlob",
        "param",
        "",
        "Ljava/nio/ByteBuffer;",
        "type",
        "handleParticipant",
        "participant",
        "",
        "Lnet/rtccloud/sdk/Participant;",
        "([Lnet/rtccloud/sdk/Participant;)V",
        "handleProgressiveXEvent",
        "progressivexEvent",
        "Lnet/rtccloud/sdk/event/call/ProgressivexEvent;",
        "handleShareStartStop",
        "cmd",
        "newTranslationSentence",
        "text",
        "messageStatus",
        "pid",
        "handleRecordingStatus",
        "status",
        "Lnet/rtccloud/sdk/RecordingModule$Status;",
        "rtcc_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract handleBlob(ILjava/nio/ByteBuffer;Ljava/lang/String;)V
.end method

.method public abstract handleCommand(Lnet/rtccloud/sdk/event/call/CallEvent;)V
.end method

.method public abstract handleDataInBandChannel([B)V
.end method

.method public abstract handleParticipant([Lnet/rtccloud/sdk/Participant;)V
.end method

.method public abstract handleProgressiveXEvent(Lnet/rtccloud/sdk/event/call/ProgressivexEvent;)V
.end method

.method public abstract handleRecordingStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)V
.end method

.method public abstract handleShareStartStop(II)V
.end method

.method public abstract muclState(Ljava/lang/String;)V
.end method

.method public abstract newTranslationSentence(Ljava/lang/String;II)V
.end method

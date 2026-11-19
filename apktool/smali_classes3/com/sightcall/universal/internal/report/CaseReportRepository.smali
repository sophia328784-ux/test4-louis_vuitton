.class public interface abstract Lcom/sightcall/universal/internal/report/CaseReportRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J2\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H&J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$H&J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010&\u001a\u00020\'H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\u0008H&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010/\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00100\u001a\u00020\u0008H&J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u00103\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00104\u001a\u00020\u0008H&J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00107\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00108\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00109\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010:\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010#\u001a\u00020;H&JO\u0010<\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010?\u001a\u0004\u0018\u00010>2\u0008\u0010@\u001a\u0004\u0018\u00010>2\u0008\u0010A\u001a\u0004\u0018\u00010>2\u0008\u0010B\u001a\u0004\u0018\u00010\u00052\u0006\u0010C\u001a\u00020\u0005H&\u00a2\u0006\u0002\u0010DJ\u0010\u0010E\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&\u00a8\u0006F\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/CaseReportRepository;",
        "",
        "onRecordingStart",
        "",
        "caseReportId",
        "",
        "onRecordingPauseResume",
        "isRecording",
        "",
        "onRecordingEnd",
        "onGuestReadyAccepted",
        "guest",
        "Lcom/sightcall/universal/fcm/messages/GuestReady;",
        "onGuestReadyDenied",
        "onConnected",
        "session",
        "Lcom/sightcall/universal/model/Session;",
        "user",
        "Lnet/rtccloud/sdk/User;",
        "onCallStatusEvent",
        "event",
        "Lnet/rtccloud/sdk/event/call/StatusEvent;",
        "onDisplayNameSet",
        "onDisplayNameSkipped",
        "onLiveTranslationStart",
        "onLiveTranslationStopped",
        "onUserAction",
        "button",
        "Lcom/sightcall/universal/internal/view/CallButton;",
        "remote",
        "call",
        "Lnet/rtccloud/sdk/Call;",
        "remoteState",
        "Lcom/sightcall/universal/internal/model/RemoteState;",
        "onMessageSent",
        "message",
        "Lcom/sightcall/universal/internal/messaging/Message$Outgoing;",
        "onConsentAction",
        "consent",
        "Lcom/sightcall/session/Reference$UseCase$Consent;",
        "onAnnotationsModeChanged",
        "config",
        "Lcom/sightcall/universal/model/Config;",
        "onMicro",
        "isMuted",
        "onCameraStarted",
        "onCameraStopped",
        "onCameraSwitch",
        "isFront",
        "onCameraPaused",
        "onCameraResumed",
        "onTorch",
        "enableFlash",
        "onScreencastStarted",
        "onScreencastStopped",
        "onShareStarted",
        "onGpsAccepted",
        "onGpsDeclined",
        "onMessageReceived",
        "Lcom/sightcall/universal/internal/messaging/Message$Incoming;",
        "onGeoLocationReceived",
        "gpsLatitude",
        "",
        "gpsLongitude",
        "gpsAccuracy",
        "gpsAltitude",
        "gpsAltitudeAccuracy",
        "gpsPerformedAt",
        "(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V",
        "onRemotePickerRequested",
        "sdk_installedRelease"
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
.method public abstract onAnnotationsModeChanged(Lcom/sightcall/universal/model/Config;)V
.end method

.method public abstract onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onCameraPaused(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onCameraResumed(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onCameraStarted(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onCameraStopped(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onCameraSwitch(Lcom/sightcall/universal/model/Session;Z)V
.end method

.method public abstract onConnected(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/User;)V
.end method

.method public abstract onConsentAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/session/Reference$UseCase$Consent;)V
.end method

.method public abstract onDisplayNameSet(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onDisplayNameSkipped(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onGeoLocationReceived(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGpsAccepted(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onGpsDeclined(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onGuestReadyAccepted(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
.end method

.method public abstract onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
.end method

.method public abstract onLiveTranslationStart(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onLiveTranslationStopped(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onMessageReceived(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
.end method

.method public abstract onMessageSent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/messaging/Message$Outgoing;)V
.end method

.method public abstract onMicro(Lcom/sightcall/universal/model/Session;Z)V
.end method

.method public abstract onRecordingEnd(Ljava/lang/String;)V
.end method

.method public abstract onRecordingPauseResume(ZLjava/lang/String;)V
.end method

.method public abstract onRecordingStart(Ljava/lang/String;)V
.end method

.method public abstract onRemotePickerRequested(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onScreencastStarted(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onScreencastStopped(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onShareStarted(Lcom/sightcall/universal/model/Session;)V
.end method

.method public abstract onTorch(Lcom/sightcall/universal/model/Session;Z)V
.end method

.method public abstract onUserAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/view/CallButton;ZLnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/model/RemoteState;)V
.end method

package com.sightcall.universal.internal.report;

import com.sightcall.session.Reference;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.internal.messaging.Message;
import com.sightcall.universal.internal.model.RemoteState;
import com.sightcall.universal.internal.view.CallButton;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.User;
import net.rtccloud.sdk.event.call.StatusEvent;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J2\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H&J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$H&J\u0018\u0010%\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010&\u001a\u00020'H&J\u0010\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020*H&J\u0018\u0010+\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010,\u001a\u00020\bH&J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010/\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00100\u001a\u00020\bH&J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u00103\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u00104\u001a\u00020\bH&J\u0010\u00105\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00106\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00107\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00108\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u00109\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010:\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010#\u001a\u00020;H&JO\u0010<\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010=\u001a\u0004\u0018\u00010>2\b\u0010?\u001a\u0004\u0018\u00010>2\b\u0010@\u001a\u0004\u0018\u00010>2\b\u0010A\u001a\u0004\u0018\u00010>2\b\u0010B\u001a\u0004\u0018\u00010\u00052\u0006\u0010C\u001a\u00020\u0005H&¢\u0006\u0002\u0010DJ\u0010\u0010E\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H&¨\u0006FÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/internal/report/CaseReportRepository;", "", "onRecordingStart", "", "caseReportId", "", "onRecordingPauseResume", "isRecording", "", "onRecordingEnd", "onGuestReadyAccepted", "guest", "Lcom/sightcall/universal/fcm/messages/GuestReady;", "onGuestReadyDenied", "onConnected", "session", "Lcom/sightcall/universal/model/Session;", "user", "Lnet/rtccloud/sdk/User;", "onCallStatusEvent", MvelScriptManager.VAR_EVENT, "Lnet/rtccloud/sdk/event/call/StatusEvent;", "onDisplayNameSet", "onDisplayNameSkipped", "onLiveTranslationStart", "onLiveTranslationStopped", "onUserAction", "button", "Lcom/sightcall/universal/internal/view/CallButton;", "remote", "call", "Lnet/rtccloud/sdk/Call;", "remoteState", "Lcom/sightcall/universal/internal/model/RemoteState;", "onMessageSent", "message", "Lcom/sightcall/universal/internal/messaging/Message$Outgoing;", "onConsentAction", "consent", "Lcom/sightcall/session/Reference$UseCase$Consent;", "onAnnotationsModeChanged", "config", "Lcom/sightcall/universal/model/Config;", "onMicro", "isMuted", "onCameraStarted", "onCameraStopped", "onCameraSwitch", "isFront", "onCameraPaused", "onCameraResumed", "onTorch", "enableFlash", "onScreencastStarted", "onScreencastStopped", "onShareStarted", "onGpsAccepted", "onGpsDeclined", "onMessageReceived", "Lcom/sightcall/universal/internal/messaging/Message$Incoming;", "onGeoLocationReceived", "gpsLatitude", "", "gpsLongitude", "gpsAccuracy", "gpsAltitude", "gpsAltitudeAccuracy", "gpsPerformedAt", "(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "onRemotePickerRequested", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface CaseReportRepository {
    void onAnnotationsModeChanged(Config config);

    void onCallStatusEvent(StatusEvent event, Session session);

    void onCameraPaused(Session session);

    void onCameraResumed(Session session);

    void onCameraStarted(Session session);

    void onCameraStopped(Session session);

    void onCameraSwitch(Session session, boolean isFront);

    void onConnected(Session session, User user);

    void onConsentAction(Session session, Reference.UseCase.Consent consent);

    void onDisplayNameSet(Session session);

    void onDisplayNameSkipped(Session session);

    void onGeoLocationReceived(Session session, Double gpsLatitude, Double gpsLongitude, Double gpsAccuracy, Double gpsAltitude, String gpsAltitudeAccuracy, String gpsPerformedAt);

    void onGpsAccepted(Session session);

    void onGpsDeclined(Session session);

    void onGuestReadyAccepted(GuestReady guest);

    void onGuestReadyDenied(GuestReady guest);

    void onLiveTranslationStart(Session session);

    void onLiveTranslationStopped(Session session);

    void onMessageReceived(Session session, Message.Incoming message);

    void onMessageSent(Session session, Message.Outgoing message);

    void onMicro(Session session, boolean isMuted);

    void onRecordingEnd(String caseReportId);

    void onRecordingPauseResume(boolean isRecording, String caseReportId);

    void onRecordingStart(String caseReportId);

    void onRemotePickerRequested(Session session);

    void onScreencastStarted(Session session);

    void onScreencastStopped(Session session);

    void onShareStarted(Session session);

    void onTorch(Session session, boolean enableFlash);

    void onUserAction(Session session, CallButton button, boolean remote, Call call, RemoteState remoteState);
}

package com.sightcall.universal.internal.report;

import com.sightcall.common.MyVideoProducer;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.session.Reference;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.internal.messaging.Message;
import com.sightcall.universal.internal.model.RemoteState;
import com.sightcall.universal.internal.report.data.CaseReportDataSource;
import com.sightcall.universal.internal.report.data.entities.CaseReportV3Request;
import com.sightcall.universal.internal.report.data.mappers.CaseReportMapperAgentKt;
import com.sightcall.universal.internal.report.data.mappers.CaseReportMapperGuestKt;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.ui.videoplayer.VideoProducerExtensionsKt;
import com.sightcall.universal.internal.view.CallButton;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.User;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.event.call.StatusEvent;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010 \u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010!\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J \u0010\"\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010#\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010'\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J2\u0010)\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u00101\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\tH\u0002J0\u00102\u001a\u0002002\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00103\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00104\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00105\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00106\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J \u00107\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J:\u00108\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\u0006\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J:\u0010=\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J:\u0010>\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\u0006\u00109\u001a\u00020:2\b\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J4\u0010?\u001a\u0004\u0018\u0001002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\b\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J2\u0010@\u001a\u0004\u0018\u0001002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\u0006\u00109\u001a\u00020:2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J2\u0010A\u001a\u0004\u0018\u0001002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010B\u001a\u000200H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u000200H\u0002J\u0018\u0010D\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010B\u001a\u000200H\u0002J\u0018\u0010E\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010F\u001a\u00020GH\u0016J\u0018\u0010H\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020MH\u0016J\u0018\u0010N\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010O\u001a\u00020\fH\u0016J\u0010\u0010P\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010Q\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010R\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010S\u001a\u00020\fH\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010U\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010V\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\fH\u0016J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010Y\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010Z\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010[\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\\\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010]\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010F\u001a\u00020^H\u0016JO\u0010_\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010`\u001a\u0004\u0018\u00010a2\b\u0010b\u001a\u0004\u0018\u00010a2\b\u0010c\u001a\u0004\u0018\u00010a2\b\u0010d\u001a\u0004\u0018\u00010a2\b\u0010e\u001a\u0004\u0018\u00010\t2\u0006\u0010f\u001a\u00020\tH\u0016¢\u0006\u0002\u0010gJ\u0010\u0010h\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006i"}, d2 = {"Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;", "Lcom/sightcall/universal/internal/report/CaseReportRepository;", "caseReportDataSource", "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;", "<init>", "(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)V", "onRecordingStart", "", "caseReportId", "", "onRecordingPauseResume", "isRecording", "", "onRecordingEnd", "onGuestReadyAccepted", "guest", "Lcom/sightcall/universal/fcm/messages/GuestReady;", "onGuestReadyDenied", "onConnected", "session", "Lcom/sightcall/universal/model/Session;", "user", "Lnet/rtccloud/sdk/User;", "onConnectedAsHost", "caseId", "onConnectedAsGuest", "onCallStatusEvent", MvelScriptManager.VAR_EVENT, "Lnet/rtccloud/sdk/event/call/StatusEvent;", "onCallStatusActive", "call", "Lnet/rtccloud/sdk/Call;", "onCallStatusActiveAsHost", "onCallStatusActiveAsGuest", "onCallStatusEnded", "onCallStatusEndedAsHost", "onCallStatusEndedAsGuest", "onDisplayNameSet", "onDisplayNameSkipped", "onLiveTranslationStart", "onLiveTranslationStopped", "onUserAction", "button", "Lcom/sightcall/universal/internal/view/CallButton;", "remote", "remoteState", "Lcom/sightcall/universal/internal/model/RemoteState;", "onHangup", "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;", "onAnnotationErased", "onScreencast", "onSnapshot", "onSaveMedia", "onStartGeolocation", "onShareStart", "onStopShare", "onFlash", "video", "Lnet/rtccloud/sdk/VideoModule;", "videoProducer", "Lnet/rtccloud/sdk/VideoProducer;", "onShareMedia", "onVideoPauseResume", "onVideoSource", "onVideoCaseReport", "onMicroCaseReport", "caseReportV3Request", "onUserActionAsHost", "onUserActionAsGuest", "onMessageSent", "message", "Lcom/sightcall/universal/internal/messaging/Message$Outgoing;", "onConsentAction", "consent", "Lcom/sightcall/session/Reference$UseCase$Consent;", "onAnnotationsModeChanged", "config", "Lcom/sightcall/universal/model/Config;", "onMicro", "isMuted", "onCameraStarted", "onCameraStopped", "onCameraSwitch", "isFront", "onCameraPaused", "onCameraResumed", "onTorch", "enableFlash", "onScreencastStarted", "onScreencastStopped", "onShareStarted", "onGpsAccepted", "onGpsDeclined", "onMessageReceived", "Lcom/sightcall/universal/internal/messaging/Message$Incoming;", "onGeoLocationReceived", "gpsLatitude", "", "gpsLongitude", "gpsAccuracy", "gpsAltitude", "gpsAltitudeAccuracy", "gpsPerformedAt", "(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "onRemotePickerRequested", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CaseReportRepositoryImpl implements CaseReportRepository {
    private final CaseReportDataSource caseReportDataSource;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;

        static {
            int[] iArr = new int[Session.Role.values().length];
            try {
                iArr[Session.Role.HOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Session.Role.GUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Session.Role.ATTENDEE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Call.Status.values().length];
            try {
                iArr2[Call.Status.CREATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[Call.Status.RINGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Call.Status.PROCEEDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Call.Status.ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Call.Status.ENDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Call.EndReason.values().length];
            try {
                iArr3[Call.EndReason.LOCAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[Call.EndReason.DEAD_PARTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[Call.EndReason.REMOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[Call.EndReason.UNEXPECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[CallButton.values().length];
            try {
                iArr4[CallButton.MICRO.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr4[CallButton.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr4[CallButton.VIDEO_SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr4[CallButton.AUDIO_SOURCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr4[CallButton.VIDEO_PAUSE_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr4[CallButton.SHARE_MEDIA.ordinal()] = 6;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr4[CallButton.FLASH.ordinal()] = 7;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr4[CallButton.ERASE.ordinal()] = 8;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr4[CallButton.SHARE_STOP.ordinal()] = 9;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr4[CallButton.SHARE_PHOTO.ordinal()] = 10;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr4[CallButton.SHARE_PICTURE.ordinal()] = 11;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr4[CallButton.GEOLOCATION.ordinal()] = 12;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr4[CallButton.SAVE_MEDIA.ordinal()] = 13;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr4[CallButton.SNAPSHOT.ordinal()] = 14;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr4[CallButton.SCREENCAST.ordinal()] = 15;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr4[CallButton.HANGUP.ordinal()] = 16;
            } catch (NoSuchFieldError unused28) {
            }
            $EnumSwitchMapping$3 = iArr4;
        }
    }

    @Inject
    public CaseReportRepositoryImpl(CaseReportDataSource caseReportDataSource) {
        caseReportDataSource.getClass();
        this.caseReportDataSource = caseReportDataSource;
    }

    private final CaseReportV3Request onAnnotationErased(Session session, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            return CaseReportMapperAgentKt.createAnnotationsErasedAsHost(caseId);
        }
        if (i2 == 2 || i2 == 3) {
            return CaseReportMapperGuestKt.createAnnotationsErased(session.config.role().name());
        }
        v40.g();
        return null;
    }

    private final void onCallStatusActive(Session session, Call call, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            onCallStatusActiveAsHost(call, caseId);
        } else if (i2 == 2 || i2 == 3) {
            onCallStatusActiveAsGuest(session, call);
        } else {
            v40.g();
        }
    }

    private final void onCallStatusActiveAsGuest(Session session, Call call) {
        this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createUserJoined(session.config.role().name(), call.id()));
    }

    private final void onCallStatusActiveAsHost(Call call, String caseId) {
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createUserJoinedAsHost(caseId, call.id()));
    }

    private final void onCallStatusEnded(Session session, Call call, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            onCallStatusEndedAsHost(call, caseId);
        } else if (i2 == 2 || i2 == 3) {
            onCallStatusEndedAsGuest(session, call);
        } else {
            v40.g();
        }
    }

    private final void onCallStatusEndedAsGuest(Session session, Call call) {
        CaseReportV3Request caseReportV3RequestCreateCallFailed;
        String strName = session.config.role().name();
        Call.EndReason endReason = call.endReason();
        int i2 = endReason == null ? -1 : WhenMappings.$EnumSwitchMapping$2[endReason.ordinal()];
        if (i2 == -1) {
            caseReportV3RequestCreateCallFailed = CaseReportMapperGuestKt.createCallFailed(strName, CaseReportV3Request.Data.Attributes.CallFailed.CallFailedReason.Unexpected.INSTANCE.getValue());
        } else if (i2 == 1) {
            caseReportV3RequestCreateCallFailed = CaseReportMapperGuestKt.createUserLeft(strName, CaseReportV3Request.Data.Attributes.UserLeft.UserLeftReason.LocalHangup.INSTANCE);
        } else if (i2 == 2) {
            caseReportV3RequestCreateCallFailed = CaseReportMapperGuestKt.createCallFailed(strName, CaseReportV3Request.Data.Attributes.CallFailed.CallFailedReason.DeadParty.INSTANCE.getValue());
        } else if (i2 != 3) {
            if (i2 != 4) {
                v40.g();
                return;
            }
            caseReportV3RequestCreateCallFailed = CaseReportMapperGuestKt.createCallFailed(strName, CaseReportV3Request.Data.Attributes.CallFailed.CallFailedReason.Unexpected.INSTANCE.getValue());
        } else {
            caseReportV3RequestCreateCallFailed = CaseReportMapperGuestKt.createUserLeft(strName, CaseReportV3Request.Data.Attributes.UserLeft.UserLeftReason.RemoteHangup.INSTANCE);
        }
        this.caseReportDataSource.sendCaseReportAsGuest(session, caseReportV3RequestCreateCallFailed);
    }

    private final void onCallStatusEndedAsHost(Call call, String caseId) {
        CaseReportV3Request caseReportV3RequestCreateCallEndedAsHost;
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        Call.EndReason endReason = call.endReason();
        if (endReason == null) {
            endReason = Call.EndReason.UNEXPECTED;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$2[endReason.ordinal()];
        if (i2 == 1) {
            caseReportV3RequestCreateCallEndedAsHost = CaseReportMapperAgentKt.createCallEndedAsHost(caseId, CaseReportV3Request.Data.Attributes.CallEnded.CallEndReason.LocalHangup.INSTANCE);
        } else if (i2 == 2) {
            caseReportV3RequestCreateCallEndedAsHost = CaseReportMapperAgentKt.createCallEndedAsHost(caseId, CaseReportV3Request.Data.Attributes.CallEnded.CallEndReason.NetworkError.INSTANCE);
        } else {
            if (i2 != 3 && i2 != 4) {
                v40.g();
                return;
            }
            caseReportV3RequestCreateCallEndedAsHost = CaseReportMapperAgentKt.createCallEndedAsHost(caseId, CaseReportV3Request.Data.Attributes.CallEnded.CallEndReason.RemoteHangup.INSTANCE);
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, caseReportV3RequestCreateCallEndedAsHost);
    }

    private final void onConnectedAsGuest(Session session, User user) {
        CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
        String strName = session.config.role().name();
        String strSid = user.sid();
        strSid.getClass();
        String strUidLocal = user.uidLocal();
        strUidLocal.getClass();
        caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createItemUserConnected(strName, strSid, strUidLocal, true));
    }

    private final void onConnectedAsHost(String caseId, User user) {
        String strSid;
        Agent agent = Universal.agent().get();
        if (agent == null || (strSid = user.sid()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createItemUserConnectedAsHost(caseId, strSid));
    }

    private final CaseReportV3Request onFlash(Session session, boolean remote, VideoModule video, VideoProducer videoProducer, RemoteState remoteState, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return (video.isSending() && (videoProducer instanceof MyVideoProducerCameraView) && ((MyVideoProducerCameraView) videoProducer).isFlashEnabled()) ? CaseReportMapperGuestKt.createTorchStoppedRequest(session.config.role().name()) : CaseReportMapperGuestKt.createTorchStartedRequest(session.config.role().name());
            }
            v40.g();
            return null;
        }
        if (remote) {
            return remoteState.isFlashEnabled() ? CaseReportMapperAgentKt.createRemoteTorchStopRequestedAsHost(caseId) : CaseReportMapperAgentKt.createRemoteTorchStartRequestedAsHost(caseId);
        }
        if (!remote) {
            return (video.isSending() && (videoProducer instanceof MyVideoProducerCameraView) && ((MyVideoProducerCameraView) videoProducer).isFlashEnabled()) ? CaseReportMapperAgentKt.createTorchStoppedRequestAsHost(caseId) : CaseReportMapperAgentKt.createTorchStartRequestAsHost(caseId);
        }
        v40.g();
        return null;
    }

    private final CaseReportV3Request onHangup(Session session, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            return CaseReportMapperAgentKt.createCallHangupAsHost(caseId);
        }
        if (i2 == 2 || i2 == 3) {
            return CaseReportMapperGuestKt.createCallHangup(session.config.role().name());
        }
        v40.g();
        return null;
    }

    private final CaseReportV3Request onMicroCaseReport(Session session, boolean remote, Call call, RemoteState remoteState, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            if (remote) {
                return remoteState.isMuted() ? CaseReportMapperAgentKt.createRemoteMicroStopRequestedAsHost(caseId) : CaseReportMapperAgentKt.createRemoteMicroStartRequestedAsHost(caseId);
            }
            if (!remote) {
                return call.audio().isRecorderMuted() ? CaseReportMapperAgentKt.createMicroStoppedRequestedAsHost(caseId) : CaseReportMapperAgentKt.createMicroStartedRequestedAsHost(caseId);
            }
            v40.g();
            return null;
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
            return null;
        }
        boolean zIsRecorderMuted = call.audio().isRecorderMuted();
        Config config = session.config;
        return zIsRecorderMuted ? CaseReportMapperGuestKt.createMicroStoppedRequested(config.role().name()) : CaseReportMapperGuestKt.createMicroStartedRequested(config.role().name());
    }

    private final CaseReportV3Request onSaveMedia(boolean remote, String caseId) {
        if (remote) {
            return CaseReportMapperAgentKt.createVideoSaveRequestedAsHost(caseId);
        }
        return null;
    }

    private final CaseReportV3Request onScreencast(boolean remote, RemoteState remoteState, Session session, Call call, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            if (remote) {
                return (call.screenshare().isReceiving() && remoteState.isSharingScreen()) ? CaseReportMapperAgentKt.createRemoteScreencastStopRequestedAsHost(caseId) : CaseReportMapperAgentKt.createRemoteScreencastStartRequestedAsHost(caseId);
            }
            if (!remote) {
                return call.screenshare().producer() instanceof ScreenCastOverlay ? CaseReportMapperAgentKt.createScreencastStopRequestedAsHost(caseId) : CaseReportMapperAgentKt.createScreencastStartRequestedAsHost(caseId);
            }
            v40.g();
            return null;
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
            return null;
        }
        boolean z = call.screenshare().producer() instanceof ScreenCastOverlay;
        Config config = session.config;
        return z ? CaseReportMapperGuestKt.createScreencastStopRequested(config.role().name()) : CaseReportMapperGuestKt.createScreencastStartRequested(config.role().name());
    }

    private final CaseReportV3Request onShareMedia(Session session, boolean remote, Call call, VideoProducer videoProducer, RemoteState remoteState, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return (call.screenshare().isSending() || VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoProducer)) ? CaseReportMapperGuestKt.createShareStopped(session.config.role().name()) : CaseReportMapperGuestKt.createShareStartRequested(session.config.role().name());
            }
            v40.g();
            return null;
        }
        if (remote) {
            return (call.screenshare().isReceiving() || remoteState.isPlayerEnabled()) ? CaseReportMapperAgentKt.createShareStopRequestedAsHost(caseId) : CaseReportMapperAgentKt.createShareStartRequestedAsHost(caseId);
        }
        if (!remote) {
            return (call.screenshare().isSending() || VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoProducer)) ? CaseReportMapperAgentKt.createShareStoppedAsHost(caseId) : CaseReportMapperAgentKt.createShareStartRequestedAsHost(caseId);
        }
        v40.g();
        return null;
    }

    private final CaseReportV3Request onShareStart(boolean remote, String caseId) {
        if (remote) {
            return CaseReportMapperAgentKt.createRemoteGalleryStartRequestedAsHost(caseId);
        }
        return null;
    }

    private final CaseReportV3Request onSnapshot(boolean remote, String caseId) {
        if (remote) {
            return CaseReportMapperAgentKt.createRemoteSnapshotRequestedAsHost(caseId);
        }
        return null;
    }

    private final CaseReportV3Request onStartGeolocation(boolean remote, String caseId) {
        if (remote) {
            return CaseReportMapperAgentKt.createGpsRequestedAsHost(caseId);
        }
        return null;
    }

    private final CaseReportV3Request onStopShare(Session session, boolean remote, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            return remote ? CaseReportMapperAgentKt.createShareStartRequestedAsHost(caseId) : CaseReportMapperAgentKt.createShareStoppedAsHost(caseId);
        }
        if (i2 == 2 || i2 == 3) {
            return CaseReportMapperGuestKt.createShareStopped(session.config.role().name());
        }
        v40.g();
        return null;
    }

    private final void onUserActionAsGuest(Session session, CaseReportV3Request caseReportV3Request) {
        this.caseReportDataSource.sendCaseReportAsGuest(session, caseReportV3Request);
    }

    private final void onUserActionAsHost(CaseReportV3Request caseReportV3Request) {
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, caseReportV3Request);
    }

    private final CaseReportV3Request onVideoCaseReport(Session session, boolean remote, VideoModule video, RemoteState remoteState, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            if (remote) {
                return remoteState.isCameraEnabled() ? CaseReportMapperAgentKt.createRemoteCameraStartRequestedAsHost(caseId) : CaseReportMapperAgentKt.createRemoteCameraStopRequestedAsHost(caseId);
            }
            if (!remote) {
                return video.isSending() ? CaseReportMapperAgentKt.createCameraStopRequestedAsHost(caseId) : CaseReportMapperAgentKt.createCameraStartRequestedAsHost(caseId);
            }
            v40.g();
            return null;
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
            return null;
        }
        boolean zIsSending = video.isSending();
        Config config = session.config;
        return zIsSending ? CaseReportMapperGuestKt.createCameraStopRequested(config.role().name()) : CaseReportMapperGuestKt.createCameraStartRequested(config.role().name());
    }

    private final CaseReportV3Request onVideoPauseResume(Session session, boolean remote, VideoModule video, VideoProducer videoProducer, RemoteState remoteState, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                v40.g();
                return null;
            }
            if (videoProducer instanceof MyVideoProducer) {
                return (video.isSending() && ((MyVideoProducer) videoProducer).isPaused()) ? CaseReportMapperGuestKt.createCameraResumeRequested(session.config.role().name()) : CaseReportMapperGuestKt.createCameraPauseRequested(session.config.role().name());
            }
            return CaseReportMapperGuestKt.createCameraPauseRequested(session.config.role().name());
        }
        if (remote) {
            return remoteState.isCameraPaused() ? CaseReportMapperAgentKt.createRemoteCameraResumeRequestedAsHost(caseId) : CaseReportMapperAgentKt.createRemoteCameraPauseRequestedAsHost(session.config.role().name());
        }
        if (remote) {
            v40.g();
            return null;
        }
        if (videoProducer instanceof MyVideoProducer) {
            return (video.isSending() && ((MyVideoProducer) videoProducer).isPaused()) ? CaseReportMapperAgentKt.createCameraResumeRequestedAsHost(caseId) : CaseReportMapperAgentKt.createCameraPauseRequestedAsHost(caseId);
        }
        return CaseReportMapperAgentKt.createCameraPauseRequestedAsHost(caseId);
    }

    private final CaseReportV3Request onVideoSource(Session session, boolean remote, VideoProducer videoProducer, RemoteState remoteState, String caseId) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                v40.g();
                return null;
            }
            if (!(videoProducer instanceof MyVideoProducerCameraView)) {
                return null;
            }
            VideoModule.CameraSource source = ((MyVideoProducerCameraView) videoProducer).getSource();
            VideoModule.CameraSource cameraSource = VideoModule.CameraSource.FRONT;
            Config config = session.config;
            return source == cameraSource ? CaseReportMapperGuestKt.createCameraRearRequested(config.role().name()) : CaseReportMapperGuestKt.createCameraFrontRequested(config.role().name());
        }
        if (remote) {
            VideoModule.CameraSource cameraSource2 = remoteState.cameraSource();
            VideoModule.CameraSource cameraSource3 = VideoModule.CameraSource.FRONT;
            Config config2 = session.config;
            return cameraSource2 == cameraSource3 ? CaseReportMapperAgentKt.createRemoteCameraRearRequestedAsHost(caseId, config2.role().name()) : CaseReportMapperAgentKt.createRemoteCameraFrontRequestedAsHost(caseId, config2.role().name());
        }
        if (remote) {
            v40.g();
            return null;
        }
        if (videoProducer instanceof MyVideoProducerCameraView) {
            return ((MyVideoProducerCameraView) videoProducer).getSource() == VideoModule.CameraSource.FRONT ? CaseReportMapperAgentKt.createCameraRearRequestedAsHost(caseId) : CaseReportMapperAgentKt.createCameraFrontRequestedAsHost(caseId);
        }
        return null;
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onAnnotationsModeChanged(Config config) {
        String strCaseReportId;
        config.getClass();
        if (config.role() != Session.Role.HOST) {
            CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
            Environment environment = config.environment();
            environment.getClass();
            caseReportDataSource.sendCaseReportAsGuest(environment, config.authorizationToken.getValue(), CaseReportMapperGuestKt.createAnnotationsChanged(config.role().name()));
            return;
        }
        Agent agent = Universal.agent().get();
        if (agent == null || (strCaseReportId = config.caseReportId()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createAnnotationsChangedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onCallStatusEvent(StatusEvent event, Session session) {
        event.getClass();
        session.getClass();
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || strCaseReportId.length() == 0) {
            return;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$1[event.status().ordinal()];
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            return;
        }
        if (i2 == 4) {
            Call call = event.call();
            call.getClass();
            onCallStatusActive(session, call, strCaseReportId);
        } else {
            if (i2 != 5) {
                v40.g();
                return;
            }
            Call call2 = event.call();
            call2.getClass();
            onCallStatusEnded(session, call2, strCaseReportId);
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onCameraPaused(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createCameraPaused(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createCameraPausedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onCameraResumed(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createCameraResumed(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createCameraResumedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onCameraStarted(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createCameraStarted(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createCameraStartedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onCameraStopped(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createCameraStopped(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createCameraStoppedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onCameraSwitch(Session session, boolean isFront) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            String strCaseReportId = session.caseReportId();
            if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
                return;
            }
            this.caseReportDataSource.sendCaseReportAsHost(agent, isFront ? CaseReportMapperAgentKt.createCameraSetToFrontAsHost(strCaseReportId) : CaseReportMapperAgentKt.createCameraSetToRearAsHost(strCaseReportId));
            return;
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
        } else {
            Config config = session.config;
            this.caseReportDataSource.sendCaseReportAsGuest(session, isFront ? CaseReportMapperGuestKt.createCameraSetToFront(config.role().name()) : CaseReportMapperGuestKt.createCameraSetToRear(config.role().name()));
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onConnected(Session session, User user) {
        session.getClass();
        user.getClass();
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || strCaseReportId.length() == 0) {
            return;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            onConnectedAsHost(strCaseReportId, user);
        } else if (i2 == 2 || i2 == 3) {
            onConnectedAsGuest(session, user);
        } else {
            v40.g();
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onConsentAction(Session session, Reference.UseCase.Consent consent) {
        session.getClass();
        consent.getClass();
        if (consent.isPending()) {
            return;
        }
        Integer num = consent.consentId;
        if (num == null) {
            Logger.INSTANCE.getTag();
        } else {
            this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createConsent(consent.isAccepted(), session.config.role().name(), num.intValue()));
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onDisplayNameSet(Session session) {
        session.getClass();
        CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
        String strName = session.config.role().name();
        String strDisplayName = session.config.displayName();
        strDisplayName.getClass();
        caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createDisplayNameSet(strName, strDisplayName));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onDisplayNameSkipped(Session session) {
        session.getClass();
        this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createDisplayNameSkipped(session.config.role().name()));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onGeoLocationReceived(Session session, Double gpsLatitude, Double gpsLongitude, Double gpsAccuracy, Double gpsAltitude, String gpsAltitudeAccuracy, String gpsPerformedAt) {
        Agent agent;
        session.getClass();
        gpsPerformedAt.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return;
            }
            v40.g();
            return;
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null || gpsLatitude == null || gpsLongitude == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createGeoLocationReceivedAsHost(strCaseReportId, gpsLatitude, gpsLongitude, gpsAccuracy, gpsAltitude, gpsAltitudeAccuracy, gpsPerformedAt));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onGpsAccepted(Session session) {
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createGpsAccepted(session.config.role().name()));
            } else {
                v40.g();
            }
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onGpsDeclined(Session session) {
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createGpsDeclined(session.config.role().name()));
            } else {
                v40.g();
            }
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onGuestReadyAccepted(GuestReady guest) {
        guest.getClass();
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
        String strCaseReportId = guest.caseReportId();
        strCaseReportId.getClass();
        caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createCallRequestAcceptedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onGuestReadyDenied(GuestReady guest) {
        guest.getClass();
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
        String strCaseReportId = guest.caseReportId();
        strCaseReportId.getClass();
        caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createCallRequestDeclinedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onLiveTranslationStart(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createLiveTranslationStartedAsGuest(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createLiveTranslationStartedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onLiveTranslationStopped(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createLiveTranslationStoppedAsGuest(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createLiveTranslationStoppedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onMessageReceived(Session session, Message.Incoming message) {
        Agent agent;
        session.getClass();
        message.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                v40.g();
                return;
            }
            CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
            String strUid = message.uid();
            strUid.getClass();
            String strContent = message.content();
            strContent.getClass();
            caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createChatMessageReceived(strUid, strContent, session.config.role().name()));
            return;
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        CaseReportDataSource caseReportDataSource2 = this.caseReportDataSource;
        String strUid2 = message.uid();
        strUid2.getClass();
        String strContent2 = message.content();
        strContent2.getClass();
        caseReportDataSource2.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createChatMessageReceivedAsHost(strCaseReportId, strUid2, strContent2));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onMessageSent(Session session, Message.Outgoing message) {
        session.getClass();
        message.getClass();
        if (session.config.role() != Session.Role.HOST) {
            CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
            String strUid = message.uid();
            String strContent = message.content();
            strContent.getClass();
            caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createChatMessageSent(strUid, strContent, session.config.role().name()));
            return;
        }
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        CaseReportDataSource caseReportDataSource2 = this.caseReportDataSource;
        String strUid2 = message.uid();
        String strContent2 = message.content();
        strContent2.getClass();
        caseReportDataSource2.sendCaseReportAsHost(agent, CaseReportMapperGuestKt.createChatMessageSent(strUid2, strContent2, session.config.role().name()));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onMicro(Session session, boolean isMuted) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                v40.g();
                return;
            }
            CaseReportDataSource caseReportDataSource = this.caseReportDataSource;
            if (isMuted) {
                caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createMicroStarted(session.config.role().name()));
                return;
            } else {
                caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createMicroStopped(session.config.role().name()));
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        CaseReportDataSource caseReportDataSource2 = this.caseReportDataSource;
        if (isMuted) {
            caseReportDataSource2.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createMicroStartedAsHost(strCaseReportId));
        } else {
            caseReportDataSource2.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createMicroStoppedAsHost(strCaseReportId));
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onRecordingEnd(String caseReportId) {
        caseReportId.getClass();
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createRecordingEndAsHost(caseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onRecordingPauseResume(boolean isRecording, String caseReportId) {
        caseReportId.getClass();
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, isRecording ? CaseReportMapperAgentKt.createRecordingPausedAsHost(caseReportId) : CaseReportMapperAgentKt.createRecordingResumedAsHost(caseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onRecordingStart(String caseReportId) {
        caseReportId.getClass();
        Agent agent = Universal.agent().get();
        if (agent == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createRecordingStartAsHost(caseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onRemotePickerRequested(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                return;
            }
            v40.g();
            return;
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createRemotePickerRequestedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onScreencastStarted(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createScreencastStarted(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createScreencastStartedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onScreencastStopped(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createScreencastStopped(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createScreencastStoppedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onShareStarted(Session session) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2 || i2 == 3) {
                this.caseReportDataSource.sendCaseReportAsGuest(session, CaseReportMapperGuestKt.createShareStarted(session.config.role().name()));
                return;
            } else {
                v40.g();
                return;
            }
        }
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
            return;
        }
        this.caseReportDataSource.sendCaseReportAsHost(agent, CaseReportMapperAgentKt.createShareStartedAsHost(strCaseReportId));
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onTorch(Session session, boolean enableFlash) {
        Agent agent;
        session.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            String strCaseReportId = session.caseReportId();
            if (strCaseReportId == null || (agent = Universal.agent().get()) == null) {
                return;
            }
            this.caseReportDataSource.sendCaseReportAsHost(agent, enableFlash ? CaseReportMapperAgentKt.createTorchStartedAsHost(strCaseReportId) : CaseReportMapperAgentKt.createTorchStoppedAsHost(strCaseReportId));
            return;
        }
        if (i2 != 2 && i2 != 3) {
            v40.g();
        } else {
            Config config = session.config;
            this.caseReportDataSource.sendCaseReportAsGuest(session, enableFlash ? CaseReportMapperGuestKt.createTorchStarted(config.role().name()) : CaseReportMapperGuestKt.createTorchStopped(config.role().name()));
        }
    }

    @Override // com.sightcall.universal.internal.report.CaseReportRepository
    public void onUserAction(Session session, CallButton button, boolean remote, Call call, RemoteState remoteState) {
        CaseReportV3Request caseReportV3RequestOnMicroCaseReport;
        session.getClass();
        call.getClass();
        remoteState.getClass();
        String strCaseReportId = session.caseReportId();
        if (strCaseReportId == null || strCaseReportId.length() == 0) {
            return;
        }
        VideoModule videoModuleVideo = call.video();
        videoModuleVideo.getClass();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        switch (button == null ? -1 : WhenMappings.$EnumSwitchMapping$3[button.ordinal()]) {
            case 1:
                caseReportV3RequestOnMicroCaseReport = onMicroCaseReport(session, remote, call, remoteState, strCaseReportId);
                break;
            case 2:
                caseReportV3RequestOnMicroCaseReport = onVideoCaseReport(session, remote, videoModuleVideo, remoteState, strCaseReportId);
                break;
            case 3:
                caseReportV3RequestOnMicroCaseReport = onVideoSource(session, remote, videoProducerProducer, remoteState, strCaseReportId);
                break;
            case 4:
                caseReportV3RequestOnMicroCaseReport = null;
                break;
            case 5:
                caseReportV3RequestOnMicroCaseReport = onVideoPauseResume(session, remote, videoModuleVideo, videoProducerProducer, remoteState, strCaseReportId);
                break;
            case 6:
                caseReportV3RequestOnMicroCaseReport = onShareMedia(session, remote, call, videoProducerProducer, remoteState, strCaseReportId);
                break;
            case 7:
                caseReportV3RequestOnMicroCaseReport = onFlash(session, remote, videoModuleVideo, videoProducerProducer, remoteState, strCaseReportId);
                break;
            case 8:
                caseReportV3RequestOnMicroCaseReport = onAnnotationErased(session, strCaseReportId);
                break;
            case 9:
                caseReportV3RequestOnMicroCaseReport = onStopShare(session, remote, strCaseReportId);
                break;
            case 10:
            case 11:
                caseReportV3RequestOnMicroCaseReport = onShareStart(remote, strCaseReportId);
                break;
            case 12:
                caseReportV3RequestOnMicroCaseReport = onStartGeolocation(remote, strCaseReportId);
                break;
            case 13:
                caseReportV3RequestOnMicroCaseReport = onSaveMedia(remote, strCaseReportId);
                break;
            case 14:
                caseReportV3RequestOnMicroCaseReport = onSnapshot(remote, strCaseReportId);
                break;
            case 15:
                caseReportV3RequestOnMicroCaseReport = onScreencast(remote, remoteState, session, call, strCaseReportId);
                session = session;
                break;
            case 16:
                caseReportV3RequestOnMicroCaseReport = onHangup(session, strCaseReportId);
                break;
            default:
                return;
        }
        if (caseReportV3RequestOnMicroCaseReport != null) {
            onUserAction(session, caseReportV3RequestOnMicroCaseReport);
        }
    }

    private final void onUserAction(Session session, CaseReportV3Request caseReportV3Request) {
        int i2 = WhenMappings.$EnumSwitchMapping$0[session.config.role().ordinal()];
        if (i2 == 1) {
            onUserActionAsHost(caseReportV3Request);
        } else if (i2 == 2 || i2 == 3) {
            onUserActionAsGuest(session, caseReportV3Request);
        } else {
            v40.g();
        }
    }
}

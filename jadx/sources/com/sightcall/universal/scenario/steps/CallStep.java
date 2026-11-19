package com.sightcall.universal.scenario.steps;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.common.DataChannelAction;
import com.sightcall.common.IgnoreAndFilterInBandDataChannel;
import com.sightcall.gpslocation.GpsRepository;
import com.sightcall.gpslocation.rtcc.model.GeoLocationRequest;
import com.sightcall.gpslocation.rtcc.model.GeolocationResponse;
import com.sightcall.gpslocation.rtcc.model.GeolocationStatus;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.pratik.extensions.JsonException;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.CreateRecordingCallback;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.ar.ArConfig;
import com.sightcall.universal.ar.ArCoreState;
import com.sightcall.universal.ar.ArIgnored;
import com.sightcall.universal.ar.ArStart;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.event.CallReportEvent;
import com.sightcall.universal.internal.messaging.Message;
import com.sightcall.universal.internal.messaging.Messaging;
import com.sightcall.universal.internal.model.DataChannelParser;
import com.sightcall.universal.internal.model.DeviceMonitoring;
import com.sightcall.universal.internal.model.State;
import com.sightcall.universal.internal.proposition.Proposition;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.ui.SurveyActivity;
import com.sightcall.universal.internal.util.Properties;
import com.sightcall.universal.internal.util.Snapshots;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView;
import com.sightcall.universal.internal.view.UvcProducer;
import com.sightcall.universal.internal.view.ViewUtils;
import com.sightcall.universal.model.Moshi;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.ScenarioService;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.util.DateTimeUtilKt;
import com.sightcall.universal.util.ScreenShareServiceKt;
import com.sightcall.uvc.Device;
import com.sightcall.uvc.DeviceListener;
import com.sightcall.uvc.DeviceManager;
import defpackage.d21;
import defpackage.pq0;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import net.rtccloud.sdk.AudioModule;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.MeetingPoint;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.RecordingModule;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.User;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.event.AnnotationTypeCommand;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.LiveTranslationNewSentence;
import net.rtccloud.sdk.event.call.AudioEvent;
import net.rtccloud.sdk.event.call.AudioRouteEvent;
import net.rtccloud.sdk.event.call.ParticipantsEvent;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.call.VideoProfileEvent;
import net.rtccloud.sdk.event.datachannel.DataChannelInBandEvent;
import net.rtccloud.sdk.event.datachannel.DataChannelOutOfBandEvent;
import net.rtccloud.sdk.event.presence.RegistrationEvent;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Pools;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CallStep extends Step implements Step.WithSession, DeviceListener {
    public static RecordingModule.Mode mode;
    public static CreateRecordingCallback.Success success;

    @Inject
    AdvancedAnnotationsAPI advancedAnnotationsAPI;

    @Inject
    CapabilitiesRepository capabilitiesRepository;
    protected final Context context = Universal.context();
    private String dataInBandRequestId;
    private Long dataInBandRequestTimeout;
    private final DataChannelModule dc;
    private final List<Delegate> delegates;
    private final DeviceMonitoring deviceMonitoring;

    @Inject
    GpsRepository gpsRepository;
    private final LiveTranslationAPI liveTranslationAPI;
    private final Pools.SynchronizedPool<DataChannelAction.Wrapper> poolOfInbandDataChannelWrapper;
    private Participant[] previousParticipants;
    private final CallRecordingPlugin recordingPlugin;
    protected final Rtcc rtcc;
    private final Session session;
    private UvcProducer uvcProducer;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.CallStep$6, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$common$DataChannelAction;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$VideoModule$Profile;

        static {
            int[] iArr = new int[Usecase.ActiveSpeaker.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker = iArr;
            try {
                iArr[Usecase.ActiveSpeaker.HOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker[Usecase.ActiveSpeaker.GUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[DataChannelAction.values().length];
            $SwitchMap$com$sightcall$common$DataChannelAction = iArr2;
            try {
                iArr2[DataChannelAction.PROPOSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SWITCH_REQUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SWITCH_CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SWITCH_ACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.CAPABILITIES_REQUEST.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.CAPABILITIES_CANCEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.MESSAGING.ordinal()] = 7;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.VIDEO_ANNOTATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_MUTE.ordinal()] = 9;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.ANNOTATION_REQUEST.ordinal()] = 10;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_HOLD.ordinal()] = 11;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_HOLD.ordinal()] = 12;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SNAPSHOT.ordinal()] = 13;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.ZOOM_CAMERA.ordinal()] = 14;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.GET_IP_ADDRESS.ordinal()] = 15;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.IP_ADDRESS.ordinal()] = 16;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.PROPERTIES.ordinal()] = 17;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.REQUEST_GEOLOCATION.ordinal()] = 18;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_LOCATION.ordinal()] = 19;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.GEOLOCATION_RESPONSE.ordinal()] = 20;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.GET_STATE.ordinal()] = 21;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.GET_DEVICE_STATUS.ordinal()] = 22;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_SCREENCAST.ordinal()] = 23;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_SCREENCAST.ordinal()] = 24;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_PICTURE.ordinal()] = 25;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_SHARE.ordinal()] = 26;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_COLLIMATOR.ordinal()] = 27;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_COLLIMATOR.ordinal()] = 28;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.USB_CAMERA_ENABLE.ordinal()] = 29;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.USB_CAMERA_DISABLE.ordinal()] = 30;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.AR_START.ordinal()] = 31;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.AR_STOP.ordinal()] = 32;
            } catch (NoSuchFieldError unused34) {
            }
            int[] iArr3 = new int[AudioModule.AudioRoute.values().length];
            $SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute = iArr3;
            try {
                iArr3[AudioModule.AudioRoute.SPEAKER.ordinal()] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute[AudioModule.AudioRoute.HEADSET.ordinal()] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            int[] iArr4 = new int[VideoModule.Profile.values().length];
            $SwitchMap$net$rtccloud$sdk$VideoModule$Profile = iArr4;
            try {
                iArr4[VideoModule.Profile.VGA.ordinal()] = 1;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$VideoModule$Profile[VideoModule.Profile.WVGA.ordinal()] = 2;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$VideoModule$Profile[VideoModule.Profile.HD_720.ordinal()] = 3;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$VideoModule$Profile[VideoModule.Profile.QCIF.ordinal()] = 4;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$VideoModule$Profile[VideoModule.Profile.QVGA.ordinal()] = 5;
            } catch (NoSuchFieldError unused41) {
            }
            int[] iArr5 = new int[Usecase.VideoCapture.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture = iArr5;
            try {
                iArr5[Usecase.VideoCapture.FRONT.ordinal()] = 1;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture[Usecase.VideoCapture.REAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused43) {
            }
            int[] iArr6 = new int[Usecase.VideoProfile.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile = iArr6;
            try {
                iArr6[Usecase.VideoProfile.SD.ordinal()] = 1;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile[Usecase.VideoProfile.MD.ordinal()] = 2;
            } catch (NoSuchFieldError unused45) {
            }
            int[] iArr7 = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr7;
            try {
                iArr7[Call.Status.CREATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.RINGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.PROCEEDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ENDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused50) {
            }
            int[] iArr8 = new int[Rtcc.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr8;
            try {
                iArr8[Rtcc.Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.NETWORK_LOST.ordinal()] = 4;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused55) {
            }
        }
    }

    public interface Delegate {
        void onForwardInbandDataChannel(DataChannelAction dataChannelAction, String str);

        void onRefreshCallButtons();
    }

    public CallStep(Session session) {
        Rtcc rtccInstance = Rtcc.instance();
        this.rtcc = rtccInstance;
        this.dc = rtccInstance.dataChannel();
        this.dataInBandRequestId = null;
        this.dataInBandRequestTimeout = null;
        this.poolOfInbandDataChannelWrapper = new Pools.SynchronizedPool<>(20);
        this.delegates = pq0.v();
        this.session = session;
        this.recordingPlugin = CallRecordingPlugin.create(this);
        IgnoreAndFilterInBandDataChannel.INSTANCE.setValue(session.config.role() == Session.Role.ATTENDEE);
        this.deviceMonitoring = DeviceMonitoring.create(Universal.context(), rtccInstance.user());
        this.liveTranslationAPI = SDKInjector.getSdkInjector().getReferenceComponent().getLiveTranslationAPI();
    }

    private void clearDelegates() {
        synchronized (this.delegates) {
            this.delegates.clear();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void forwardInbandDataChannel(DataChannelAction dataChannelAction, String str) {
        synchronized (this.delegates) {
            try {
                for (Delegate delegate : this.delegates) {
                    if (delegate instanceof Activity) {
                        Activity activity = (Activity) delegate;
                        if (!activity.isChangingConfigurations() && !activity.isFinishing()) {
                        }
                    }
                    delegate.onForwardInbandDataChannel(dataChannelAction, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean handleInbandDataChannel(Call call, DataChannelAction.Wrapper wrapper, DataChannelAction dataChannelAction) throws JsonException {
        if (IgnoreAndFilterInBandDataChannel.INSTANCE.getValue()) {
            switch (AnonymousClass6.$SwitchMap$com$sightcall$common$DataChannelAction[dataChannelAction.ordinal()]) {
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                    break;
                default:
                    return false;
            }
        }
        int[] iArr = AnonymousClass6.$SwitchMap$com$sightcall$common$DataChannelAction;
        switch (iArr[dataChannelAction.ordinal()]) {
            case 5:
                if (this.rtcc.user() != null) {
                    this.capabilitiesRepository.register(this.rtcc.user().uidLocal(), wrapper.extra);
                }
                return true;
            case 6:
                this.capabilitiesRepository.cancel();
                return true;
            case 7:
                Message.Incoming incomingFromJson = DataChannelParser.Messaging.fromJson(wrapper.extra);
                if (incomingFromJson == null) {
                    return true;
                }
                Messaging.from(this.rtcc, call).onMessageReceived(incomingFromJson, this.session);
                if (!isActivityListening(CallActivity.class)) {
                    Toast.makeText(this.context, incomingFromJson.content(), 1).show();
                }
                return true;
            case 8:
                this.advancedAnnotationsAPI.processAnnotation(new AdvancedAnnotationsAPI.InbandMessageAnnotation(wrapper.extra));
                return true;
            case 9:
            default:
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 10:
                this.advancedAnnotationsAPI.selectDrivenMode(new AdvancedAnnotationsAPI.AnnotationRequest(wrapper.extra));
                return true;
            case 11:
            case 12:
            case 13:
            case 14:
                VideoProducer videoProducerProducer = call.video().producer();
                if (videoProducerProducer instanceof UvcProducer) {
                    UvcProducer uvcProducer = (UvcProducer) videoProducerProducer;
                    switch (iArr[dataChannelAction.ordinal()]) {
                        case 11:
                            uvcProducer.pause();
                            return true;
                        case 12:
                            uvcProducer.resume();
                            return true;
                        case 13:
                            uvcProducer.snapshot();
                            return true;
                        case 14:
                            String str = wrapper.extra;
                            if (str != null && str.length() == 4 && uvcProducer.isZoomAvailable() && !uvcProducer.isPaused()) {
                                uvcProducer.setZoom(ViewUtils.intPercentToFloatPercent(Integer.valueOf(wrapper.extra, 16).intValue()));
                            }
                            return true;
                    }
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 15:
                User user = this.rtcc.user();
                DataChannelAction.IP_ADDRESS.send(this.dc, user != null ? user.ip() : "");
                return true;
            case 16:
                return true;
            case 17:
                DataChannelAction.PROPERTIES.send(this.dc, new Properties(this.context).toJson());
                return true;
            case 18:
                if (!isActivityListening(CallActivity.class)) {
                    this.session.parameters.isPendingLocationRequest = true;
                    GeoLocationRequest geoLocationRequestFromJson = GeoLocationRequest.INSTANCE.fromJson(wrapper.extra);
                    this.dataInBandRequestId = geoLocationRequestFromJson.getRequestId();
                    this.dataInBandRequestTimeout = geoLocationRequestFromJson.getExpirationTimeout();
                    return true;
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 19:
                this.session.parameters.isPendingLocationRequest = false;
                return true;
            case 20:
                GeolocationResponse geolocationResponseFromJson = GeolocationResponse.INSTANCE.fromJson(wrapper.extra);
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onGeoLocationReceived(this.session, geolocationResponseFromJson.getLatitude(), geolocationResponseFromJson.getLongitude(), geolocationResponseFromJson.getAccuracy(), geolocationResponseFromJson.getAltitude(), geolocationResponseFromJson.getAltitudeAccuracy(), DateTimeUtilKt.getDateTime(geolocationResponseFromJson.getTimestamp()));
                if (GeolocationStatus.FirstUsagePopupDeclined.INSTANCE.getValue().equals(geolocationResponseFromJson.getStatus()) || GeolocationStatus.Declined.INSTANCE.getValue().equals(geolocationResponseFromJson.getStatus())) {
                    Toast.makeText(this.context, R.string.universal_location_request_denied, 1).show();
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 21:
                DataChannelAction.STATE.send(State.create(this.session).toJson());
                return true;
            case 22:
                DeviceMonitoring.trigger(this.deviceMonitoring);
                return true;
            case 23:
                if (!isActivityListening(CallActivity.class)) {
                    this.session.parameters.isPendingScreencastRequest = true;
                    CallActivity.start(this.context);
                    return true;
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 24:
            case 25:
            case 26:
                if (call.screenshare().producer() instanceof ScreenCastOverlay) {
                    Session session = this.session;
                    session.parameters.isPendingScreencastRequest = false;
                    ScreenShareServiceKt.stopScreenCast(this.context, call, session, this.dc, null);
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 27:
                this.session.parameters.showCollimator = true;
                DataChannelAction.STARTED_COLLIMATOR.send(this.dc);
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 28:
                this.session.parameters.showCollimator = false;
                DataChannelAction.STOPPED_COLLIMATOR.send(this.dc);
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 29:
                DataChannelAction.USB_CAMERA_ENABLED.send(this.dc);
                this.session.parameters.allowUsbCamera = true;
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 30:
                DataChannelAction.USB_CAMERA_DISABLED.send(this.dc);
                this.session.parameters.allowUsbCamera = false;
                if (call.video().producer() instanceof UvcProducer) {
                    call.video().releaseProducer();
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 31:
                if (isActivityListening(Universal.ar().getActivityClass())) {
                    DataChannelAction.AR_STARTED.send(this.dc);
                    return true;
                }
                if (Universal.ar().getArCoreState() == ArCoreState.UNKNOWN) {
                    DataChannelAction.AR_START_IGNORED.send(this.dc, ArIgnored.UNKNOWN.toJson());
                    return true;
                }
                if (Universal.ar().isArCoreUnsupported()) {
                    DataChannelAction.AR_START_IGNORED.send(this.dc, ArIgnored.UNSUPPORTED.toJson());
                    return true;
                }
                if (!isActivityListening(CallActivity.class)) {
                    DataChannelAction.AR_START_IGNORED.send(this.dc, ArIgnored.BACKGROUND.toJson());
                    return true;
                }
                if (!call.video().isSending()) {
                    DataChannelAction.AR_START_IGNORED.send(this.dc, ArIgnored.CAMERA_OFF.toJson());
                    return true;
                }
                if (call.parameters().cameraSource() != VideoModule.CameraSource.BACK) {
                    DataChannelAction.AR_START_IGNORED.send(this.dc, ArIgnored.CAMERA_SOURCE.toJson());
                    return true;
                }
                this.session.parameters.ar = ArConfig.with((ArStart) Moshi.fromJson(ArStart.class, wrapper.extra));
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
            case 32:
                if (this.session.parameters.ar == null) {
                    DataChannelAction.AR_STOPPED.send(this.dc);
                    return true;
                }
                this.capabilitiesRepository.stopAr();
                this.session.parameters.ar = null;
                if (!isActivityListening(Universal.ar().getActivityClass())) {
                    DataChannelAction.AR_STOPPED.send(this.dc);
                    return true;
                }
                forwardInbandDataChannel(dataChannelAction, wrapper.extra);
                return false;
        }
    }

    private boolean isActivityListening(Class<? extends Activity> cls) {
        if (cls == null) {
            return false;
        }
        synchronized (this.delegates) {
            try {
                Iterator<Delegate> it = this.delegates.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    if (next instanceof WeakReference) {
                        next = ((WeakReference) next).get();
                    }
                    if (cls.isInstance(next)) {
                        Activity activity = (Activity) next;
                        if (!activity.isChangingConfigurations() && !activity.isFinishing()) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void sendDataChannel(String str, String str2) {
        if (Rtcc.instance().dataChannel().send(str2.getBytes(), 0L, str)) {
            return;
        }
        Universal.logger().e(d21.l("Error while sending DataChannel message to `", str, "` payload: `", str2, "`"));
    }

    private void updateActivityCallButtonBar() {
        synchronized (this.delegates) {
            try {
                Iterator<Delegate> it = this.delegates.iterator();
                while (it.hasNext()) {
                    it.next().onRefreshCallButtons();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void accept(Call call) {
        call.accept(createCallParameters());
    }

    public void call(String str) {
        this.rtcc.call().create(str, createCallParameters());
    }

    public Call.Parameters createCallParameters() {
        Call.Parameters parameters = new Call.Parameters();
        int i2 = AnonymousClass6.$SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile[this.session.videoProfile().ordinal()];
        if (i2 == 1) {
            parameters.videoProfile(VideoModule.Profile.QVGA);
        } else if (i2 == 2) {
            parameters.videoProfile(VideoModule.Profile.VGA);
        }
        Usecase.VideoCapture videoCapture = this.session.videoCapture();
        if (videoCapture == null) {
            parameters.video(false);
        } else {
            int i3 = AnonymousClass6.$SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture[videoCapture.ordinal()];
            if (i3 == 1) {
                parameters.cameraSource(VideoModule.CameraSource.FRONT);
            } else if (i3 == 2) {
                parameters.cameraSource(VideoModule.CameraSource.BACK);
            }
        }
        Boolean boolVideoOutStartup = this.session.videoOutStartup();
        parameters.video((boolVideoOutStartup == null || !boolVideoOutStartup.booleanValue() || videoCapture == null) ? false : true);
        Boolean boolMute = this.session.mute();
        parameters.audio((boolMute == null || boolMute.booleanValue()) ? false : true);
        return parameters;
    }

    public abstract void execute();

    public String getDataInBandRequestId() {
        return this.dataInBandRequestId;
    }

    public Long getDataInBandRequestTimeout() {
        return this.dataInBandRequestTimeout;
    }

    public UvcProducer getUvcProducer() {
        return this.uvcProducer;
    }

    @Override // com.sightcall.universal.scenario.Step
    public void interrupt() {
        Participant participantMyself;
        int i2 = AnonymousClass6.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[this.rtcc.status().ordinal()];
        if (i2 == 1) {
            unbindService();
            failure(new Step[0]);
            return;
        }
        if (i2 == 2) {
            this.rtcc.disconnect();
            return;
        }
        if (i2 != 3 && i2 != 4) {
            if (i2 != 5) {
                return;
            }
            this.rtcc.disconnect();
            return;
        }
        Call call = this.rtcc.call().get();
        if (call == null) {
            this.rtcc.disconnect();
            return;
        }
        this.session.parameters.hasRequestedHangup = true;
        int i3 = AnonymousClass6.$SwitchMap$net$rtccloud$sdk$Call$Status[call.status().ordinal()];
        if (i3 != 1) {
            if (i3 == 2) {
                call.deny();
                return;
            } else if (i3 != 3 && i3 != 4) {
                if (i3 != 5) {
                    return;
                }
                this.rtcc.disconnect();
                return;
            }
        }
        if (call.isConference() && (participantMyself = call.conference().myself()) != null && participantMyself.isAdmin()) {
            for (Participant participant : call.conference().participants()) {
                participant.kick();
            }
        }
        call.hangup();
    }

    @Event
    public void onAudioEvent(AudioEvent audioEvent) {
        if (audioEvent.call().status() == Call.Status.ACTIVE) {
            (audioEvent.isRecorderMuted() ? DataChannelAction.STARTED_MUTE : DataChannelAction.STOPPED_MUTE).send();
        }
        updateActivityCallButtonBar();
    }

    @Event
    public void onAudioRouteEvent(AudioRouteEvent audioRouteEvent) {
        int i2 = AnonymousClass6.$SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute[audioRouteEvent.route().ordinal()];
        if (i2 == 1) {
            DataChannelAction.CHANGED_SOUND_TO_SPEAKER.send(this.dc);
        } else if (i2 == 2) {
            DataChannelAction.CHANGED_SOUND_TO_HEADSET.send(this.dc);
        }
        updateActivityCallButtonBar();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
        this.recordingPlugin.onBind(scenario);
        DeviceMonitoring.start(this.deviceMonitoring);
        DeviceManager.instance(this.context.getApplicationContext()).addDeviceListener(this);
        DeviceManager.instance(this.context.getApplicationContext()).start();
    }

    @Event
    public void onCallStatusEvent(final StatusEvent statusEvent) {
        String strUrlAnnotation;
        int i2 = AnonymousClass6.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()];
        if (i2 == 1) {
            this.session.remoteState.start(this);
        } else if (i2 == 4) {
            String str = this.session.config.role() == Session.Role.HOST ? "F6891F" : "7AFF00";
            Session session = Session.get();
            if (Universal.agent().get() != null) {
                strUrlAnnotation = Universal.agent().get().annotationsUrl();
            } else {
                strUrlAnnotation = session != null ? session.config.urlAnnotation() : "";
            }
            SDKInjector.getSdkInjector().createCallComponent(new AdvancedAnnotationsAPI.SenderIdGetter() { // from class: com.sightcall.universal.scenario.steps.CallStep.1
                @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI.SenderIdGetter
                public int getUserId() {
                    if (statusEvent.call().isConference()) {
                        return statusEvent.call().conference().myself().id();
                    }
                    return 0;
                }
            }, new AdvancedAnnotationsAPI.InitialSenderColor(str), new AdvancedAnnotationsAPI.MessageSender() { // from class: com.sightcall.universal.scenario.steps.CallStep.2
                @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI.MessageSender
                public void processMessage(AdvancedAnnotationsAPI.InbandMessageAnnotation inbandMessageAnnotation) {
                    CallStep.this.dc.sendInBand(inbandMessageAnnotation.getMessage());
                }
            }, new AdvancedAnnotationsAPI.StateHandler() { // from class: com.sightcall.universal.scenario.steps.CallStep.3
                @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI.StateHandler
                public void onError(Throwable th) {
                    if (CallStep.this.session.config.role() == Session.Role.HOST || !CallStep.this.session.usecase.useAdvancedAnnotations) {
                        return;
                    }
                    CallStep.this.capabilitiesRepository.setAdvancedAnnotation(false);
                }

                @Override // com.sightcall.advancedannotations.AdvancedAnnotationsAPI.StateHandler
                public void onReady() {
                    if (CallStep.this.session.config.role() == Session.Role.HOST || !CallStep.this.session.usecase.useAdvancedAnnotations) {
                        return;
                    }
                    CallStep.this.capabilitiesRepository.setAdvancedAnnotation(true);
                }
            }, strUrlAnnotation, session().config).inject(this);
            statusEvent.call().setLiveTranslationNewSentenceCallback(new LiveTranslationNewSentence() { // from class: com.sightcall.universal.scenario.steps.CallStep.4
                @Override // net.rtccloud.sdk.event.LiveTranslationNewSentence
                public void newSentence(String str2, int i3) {
                    CallStep.this.liveTranslationAPI.onNewMessage(new LiveTranslationAPI.Message(str2), new LiveTranslationAPI.Pid(i3));
                }
            });
            boolean zUseNgaSVG = statusEvent.call().useNgaSVG();
            AdvancedAnnotationsAPI advancedAnnotationsAPI = this.advancedAnnotationsAPI;
            if (zUseNgaSVG) {
                advancedAnnotationsAPI.selectUpdateCapability(AdvancedAnnotationsAPI.UpdateCapability.Driven);
            } else {
                advancedAnnotationsAPI.selectUpdateCapability(AdvancedAnnotationsAPI.UpdateCapability.Standalone);
            }
            statusEvent.call().setAnnotationTypeCallback(new AnnotationTypeCommand() { // from class: com.sightcall.universal.scenario.steps.CallStep.5
                @Override // net.rtccloud.sdk.event.AnnotationTypeCommand
                public void driven() {
                    CallStep.this.advancedAnnotationsAPI.selectUpdateCapability(AdvancedAnnotationsAPI.UpdateCapability.Driven);
                }

                @Override // net.rtccloud.sdk.event.AnnotationTypeCommand
                public void standalone() {
                    CallStep.this.advancedAnnotationsAPI.selectUpdateCapability(AdvancedAnnotationsAPI.UpdateCapability.Standalone);
                }
            });
            if (statusEvent.call().audio().isRecorderMuted()) {
                DataChannelAction.STARTED_MUTE.send(this.dc);
            }
            DataChannelAction.GET_IP_ADDRESS.send(this.dc);
            DeviceMonitoring.trigger(this.deviceMonitoring);
            CallActivity.start(Universal.context());
            updateServiceNotification();
        } else if (i2 == 5) {
            SDKInjector.getSdkInjector().destroyCallComponent();
            SDKInjector.getSdkInjector().destroyReferenceComponent();
            MyVideoProducerCameraView.shutdownLiveQr();
            this.session.remoteState.stop(this);
            DeviceMonitoring.stop(this.deviceMonitoring);
            Utils.toastCallReport(statusEvent, this.context);
            this.rtcc.bus().post(new CallReportEvent(statusEvent.call()));
            SurveyActivity.start(this.context, this.session);
            Snapshots.cleanup(this.context);
            Universal.media().triggerUpload();
            this.rtcc.disconnect();
        }
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCallStatusEvent(statusEvent, this.session);
    }

    public void onDataChannelAction(DataChannelAction dataChannelAction) {
    }

    @Event
    public void onDataChannelInbandEvent(DataChannelInBandEvent dataChannelInBandEvent) throws JsonException {
        Call call = this.rtcc.call().get();
        if (call == null) {
            return;
        }
        DataChannelAction.Wrapper wrapperAcquire = this.poolOfInbandDataChannelWrapper.acquire();
        if (wrapperAcquire == null) {
            wrapperAcquire = new DataChannelAction.Wrapper();
        }
        DataChannelAction dataChannelActionValueOf = DataChannelAction.valueOf(dataChannelInBandEvent.payload(), wrapperAcquire);
        if (dataChannelActionValueOf != null) {
            OldLogger oldLoggerLogger = Universal.logger();
            if (oldLoggerLogger.d()) {
                oldLoggerLogger.d("onDataChannelInbandEvent " + dataChannelActionValueOf + " " + wrapperAcquire.extra);
            }
            handleInbandDataChannel(call, wrapperAcquire, dataChannelActionValueOf);
        }
        this.poolOfInbandDataChannelWrapper.release(wrapperAcquire);
    }

    public void onDataChannelMessage(DataChannelOutOfBandEvent dataChannelOutOfBandEvent) {
    }

    @Event
    public final void onDataChannelOutOfBandEvent(DataChannelOutOfBandEvent dataChannelOutOfBandEvent) {
        Proposition propositionFromJson;
        Proposition proposition;
        if (new String(dataChannelOutOfBandEvent.payload()).equals("@M2M_DECLINE@")) {
            Toast.makeText(this.context, "The agent declined the request. Please try again later.", 1).show();
            if (Session.get() != null && Session.get().config.callNotStartedUrl() != null) {
                String strCallNotStartedUrl = Session.get().config.callNotStartedUrl();
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(Uri.parse(strCallNotStartedUrl).getQueryParameterNames().isEmpty() ? d21.j(strCallNotStartedUrl, "?reason=declined") : d21.j(strCallNotStartedUrl, "&reason=declined")));
                    intent.setFlags(268435456);
                    this.context.startActivity(intent);
                } catch (ActivityNotFoundException e2) {
                    e2.printStackTrace();
                }
            }
            interrupt();
            return;
        }
        DataChannelAction.Wrapper wrapper = new DataChannelAction.Wrapper();
        DataChannelAction dataChannelActionOutOfBandValueOf = DataChannelAction.outOfBandValueOf(dataChannelOutOfBandEvent.payload(), wrapper);
        if (dataChannelActionOutOfBandValueOf == null) {
            onDataChannelMessage(dataChannelOutOfBandEvent);
            return;
        }
        if (AnonymousClass6.$SwitchMap$com$sightcall$common$DataChannelAction[dataChannelActionOutOfBandValueOf.ordinal()] != 1) {
            onDataChannelAction(dataChannelActionOutOfBandValueOf);
            return;
        }
        if (this.rtcc.call().get() == null || dataChannelOutOfBandEvent.id() != 1337 || (propositionFromJson = Proposition.fromJson(wrapper.extra, this.session.usecase)) == null) {
            return;
        }
        if (propositionFromJson.is(Proposition.State.CREATED)) {
            this.session.parameters.pendingProposition = propositionFromJson;
        } else if (propositionFromJson.is(Proposition.State.DELETED) && (proposition = this.session.parameters.pendingProposition) != null && proposition.id() != null && proposition.id().equals(propositionFromJson.id())) {
            this.session.parameters.pendingProposition = null;
        }
        this.rtcc.bus().post(propositionFromJson);
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceAttached(Device device) {
        Logger.INSTANCE.d("onDeviceAttached() called with: device = [" + device + "]", null);
        this.uvcProducer = new UvcProducer(this.context, device, this.session);
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceDetached(Device device) {
        Logger.INSTANCE.d("onDeviceDetached() called with: device = [" + device + "]", null);
        UvcProducer uvcProducer = this.uvcProducer;
        if (uvcProducer == null || uvcProducer.device() != device) {
            return;
        }
        this.uvcProducer = null;
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionDenied(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionGranted(Device device) {
        Logger.INSTANCE.d("onDevicePermissionGranted() called with: device = [" + device + "]", null);
    }

    @Event
    public void onParticipantsEvent(ParticipantsEvent participantsEvent) {
        Call call = participantsEvent.call();
        if (call.status() != Call.Status.ACTIVE) {
            return;
        }
        Participant participantMyself = call.conference().myself();
        Participant[] participantArrParticipants = participantsEvent.participants();
        Participant[] participantArr = this.previousParticipants;
        if (participantArr != null && participantArr.length > 0 && participantArrParticipants.length == 0) {
            interrupt();
        }
        this.previousParticipants = participantArrParticipants;
        Usecase.ActiveSpeaker activeSpeaker = this.session.usecase.activeSpeaker();
        if (!participantMyself.isAdmin() || activeSpeaker == null) {
            return;
        }
        int i2 = AnonymousClass6.$SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker[activeSpeaker.ordinal()];
        if (i2 == 1) {
            if (participantMyself.isLocked()) {
                return;
            }
            participantMyself.lock(true);
        } else if (i2 == 2 && participantArrParticipants.length > 0) {
            Participant participant = participantArrParticipants[0];
            if (participant.isLocked()) {
                return;
            }
            participant.lock(true);
        }
    }

    @Event
    public void onRegistrationEvent(RegistrationEvent registrationEvent) {
    }

    @Event
    public void onRtccStatus(Rtcc.Status status) {
        updateServiceNotification();
        int i2 = AnonymousClass6.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[status.ordinal()];
        if (i2 == 1) {
            unbindService();
            success(new Step[0]);
        } else {
            if (i2 != 3) {
                return;
            }
            DeviceMonitoring.trigger(this.deviceMonitoring);
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onServiceConnected(ScenarioService scenarioService) {
        super.onServiceConnected(scenarioService);
        if (is(Step.State.ACTIVE)) {
            if (this.rtcc.status() == Rtcc.Status.CONNECTED) {
                execute();
            } else {
                unbindService();
                failure("CallStep needs a Rtcc Status set to CONNECTED");
            }
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onServiceDisconnected() {
        super.onServiceDisconnected();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        clearDelegates();
        Universal.unregister(this);
        this.recordingPlugin.onUnbind();
        DeviceMonitoring.stop(this.deviceMonitoring);
        DeviceManager.instance(this.context).removeDeviceListener(this);
        DeviceManager.instance(this.context).stop();
    }

    @Event
    public void onVideoProfileEvent(VideoProfileEvent videoProfileEvent) {
        int i2 = AnonymousClass6.$SwitchMap$net$rtccloud$sdk$VideoModule$Profile[videoProfileEvent.profile().ordinal()];
        VideoModule.Profile profile = (i2 == 1 || i2 == 2 || i2 == 3) ? VideoModule.Profile.VGA : VideoModule.Profile.QVGA;
        videoProfileEvent.call().parameters().videoProfile(profile);
        VideoModule videoModuleVideo = videoProfileEvent.call().video();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        if (videoModuleVideo.isSending()) {
            if (videoProducerProducer instanceof MyVideoProducerCameraView) {
                ((MyVideoProducerCameraView) videoProducerProducer).setProfile(profile);
            } else if (videoProducerProducer instanceof UvcProducer) {
                ((UvcProducer) videoProducerProducer).setProfile(profile);
            }
        }
    }

    public void register(Delegate delegate) {
        synchronized (this.delegates) {
            try {
                if (!this.delegates.contains(delegate)) {
                    this.delegates.add(delegate);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void resume() {
        Call call = this.rtcc.call().get();
        Rtcc.Status status = this.rtcc.status();
        if (status == Rtcc.Status.CONNECTED || status == Rtcc.Status.NETWORK_LOST) {
            if (call == null || call.status() != Call.Status.ACTIVE) {
                super.resume();
            } else {
                CallActivity.start(this.context);
            }
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        Universal.ar().checkArCoreAvailability();
        bindService();
    }

    @Override // com.sightcall.universal.scenario.Step.WithSession
    public Session session() {
        return this.session;
    }

    public void unregister(Delegate delegate) {
        synchronized (this.delegates) {
            this.delegates.remove(delegate);
        }
    }

    public void call(MeetingPoint meetingPoint) {
        meetingPoint.call(createCallParameters());
    }
}

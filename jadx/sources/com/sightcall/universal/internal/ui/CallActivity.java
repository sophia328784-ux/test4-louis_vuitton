package com.sightcall.universal.internal.ui;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.location.Location;
import android.media.MediaActionSound;
import android.media.projection.MediaProjectionConfig;
import android.media.projection.MediaProjectionManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts$RequestMultiplePermissions;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.capabilities.SwitchRequest;
import com.sightcall.common.DataChannelAction;
import com.sightcall.common.MyVideoProducer;
import com.sightcall.core.experiences.SightCall;
import com.sightcall.core.experiences.SightCallUnknownUrlException;
import com.sightcall.gpslocation.rtcc.model.GeoLocationRequest;
import com.sightcall.gpslocation.rtcc.model.GeolocationStatus;
import com.sightcall.libraries.archi.coordinator.Coordinator;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.mediacapture.StartMediaCapture;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import com.sightcall.mediacapture.presenter.item.MediaCaptureError;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.camera.CameraUtilsKt;
import com.sightcall.pratik.extensions.AnyExtensionsKt;
import com.sightcall.pratik.extensions.JsonException;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.sharemedia.ShareMediaDialog;
import com.sightcall.universal.CallCoordinatorImpl;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.internal.location.LocationDialog;
import com.sightcall.universal.internal.messaging.CenterItemDecoration;
import com.sightcall.universal.internal.messaging.Message;
import com.sightcall.universal.internal.messaging.MessagesDialogFragment;
import com.sightcall.universal.internal.messaging.MessagesOverlayAdapter;
import com.sightcall.universal.internal.messaging.MessagesOverlayTouchHelper;
import com.sightcall.universal.internal.messaging.Messaging;
import com.sightcall.universal.internal.messaging.TouchThroughRecyclerView;
import com.sightcall.universal.internal.model.GpsRequest;
import com.sightcall.universal.internal.model.LiveTranslationRequest;
import com.sightcall.universal.internal.model.LiveTranslationResponse;
import com.sightcall.universal.internal.model.RemoteState;
import com.sightcall.universal.internal.proposition.Proposition;
import com.sightcall.universal.internal.proposition.PropositionDialogFragment;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.universal.internal.ui.videoplayer.VideoProducerExtensionsKt;
import com.sightcall.universal.internal.util.Utils;
import com.sightcall.universal.internal.view.CallButton;
import com.sightcall.universal.internal.view.CallButtonBar;
import com.sightcall.universal.internal.view.CallButtonImageView;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView;
import com.sightcall.universal.internal.view.MyVideoConsumerThumbnailContainer;
import com.sightcall.universal.internal.view.MyVideoConsumerView;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView;
import com.sightcall.universal.internal.view.MyVideoProducerWrapper;
import com.sightcall.universal.internal.view.ProgressivexImageView;
import com.sightcall.universal.internal.view.SystemBarConfig;
import com.sightcall.universal.internal.view.UvcPreview;
import com.sightcall.universal.internal.view.UvcProducer;
import com.sightcall.universal.internal.view.ViewUtils;
import com.sightcall.universal.media.Metadata;
import com.sightcall.universal.media.SaveMediaTask;
import com.sightcall.universal.media.SaveMetadataListTask;
import com.sightcall.universal.model.CallParameters;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.scenario.steps.CallStep;
import com.sightcall.universal.screencast.ScreenCastRepositoryImpl;
import com.sightcall.universal.util.OpenSdfMappersKt;
import com.sightcall.universal.util.RealWearUtilsKt;
import com.sightcall.universal.util.ScreenShareServiceKt;
import com.sightcall.universal.util.SystemUiHelper;
import com.sightcall.universal.util.UiUtils;
import com.sightcall.uvc.Device;
import com.sightcall.uvc.DeviceListener;
import com.sightcall.uvc.DeviceManager;
import defpackage.b5;
import defpackage.di;
import defpackage.ei;
import defpackage.fi;
import defpackage.gi;
import defpackage.hi;
import defpackage.r81;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import net.rtccloud.sdk.AudioModule;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.ConferenceModule;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.Participant;
import net.rtccloud.sdk.RecordingModule;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.ScreenshareModule;
import net.rtccloud.sdk.ScreenshareProducer;
import net.rtccloud.sdk.VideoModule;
import net.rtccloud.sdk.VideoProducer;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.FloorEvent;
import net.rtccloud.sdk.event.call.ParticipantEvent;
import net.rtccloud.sdk.event.call.ParticipantsEvent;
import net.rtccloud.sdk.event.call.ProgressivexEvent;
import net.rtccloud.sdk.event.call.ProgressivexStopEvent;
import net.rtccloud.sdk.event.call.RecordingEvent;
import net.rtccloud.sdk.event.call.ScreenshareEvent;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.call.VideoEvent;
import net.rtccloud.sdk.util.OldLogger;
import org.bouncycastle.asn1.eac.EACTags;
import org.json.JSONException;
import org.json.JSONObject;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes3.dex */
public class CallActivity extends AppCompatActivity implements CallButtonBar.Listener, SystemUiHelper.OnVisibilityChangeListener, MyVideoProducerCameraView.OnCameraCallback, ChangeCameraSourceDialog.OnRequestCameraSourceListener, LocationDialog.OnLocationDialogListener, DeviceListener, VideoPlayerWrapper.OnPlayerCallback, VideoPlayerWrapper.VisibilityCallback, PropositionDialogFragment.OnPropositionDialogListener, MessagesOverlayAdapter.OnQuickActionListener, MessagesOverlayAdapter.OnMessageClickListener, MessagesOverlayAdapter.OnMessageLongClickListener {
    private static WeakReference<CallActivity> callActivityInstance;
    private static final OldLogger logger = OldLogger.get("CallActivity");

    @Inject
    @Named
    ViewGroup advancedAnnotationsContainer;

    @Inject
    AdvancedAnnotationsWrapper advancedAnnotationsWrapper;
    private Call call;
    private CallButtonBar callButtonBar;
    private CallButtonBar callButtonBarRemote;
    private ImageView callStatusNoMedia;
    private ImageView callStatusScreencasting;
    private CallViewModel callViewModel;

    @Inject
    CallViewModel.Factory callViewModelFactory;

    @Inject
    CapabilitiesRepository capabilitiesRepository;

    @Inject
    CallCoordinatorImpl coordinator;
    private DataChannelModule dc;
    private float dispatchTouchEventInitialX;
    private float dispatchTouchEventInitialY;
    private int dispatchTouchEventSlop;
    private LiveTranslationAPI liveTranslationAPI;
    private ImageView liveTranslationPanelButton;
    ActivityResultLauncher<Intent> locationSettingsLauncher;
    private TouchThroughRecyclerView messagesOverlay;
    private MessagesOverlayAdapter messagesOverlayAdapter;
    private Messaging messaging;
    private MyScreenshareConsumerView myScreenshareConsumerView;
    private MyVideoProducerWrapper myVideoProducerWrapper;
    private CallParameters parameters;
    private ProgressivexImageView progressivexImageView;
    private RemoteState remoteState;
    ActivityResultLauncher<String[]> requestPermissionsLauncher;
    ActivityResultLauncher<IntentSenderRequest> resolutionForResultLauncher;
    private FrameLayout rootView;
    private ScreenCastCallback screenCastPermissionListener;
    private ScreenCastRepositoryImpl screenCastRepository;
    private MyScreenshareProducerWebView screenshareProducerWebView;
    private Session session;
    private ActivityResultLauncher<Intent> startMediaProjection;
    private SystemUiHelper systemUiHelper;
    private UvcPreview uvcPreview;
    private MyVideoConsumerThumbnailContainer videoConsumerThumbnailContainer;
    private MyVideoConsumerView videoConsumerView;
    private MyVideoProducerCameraView videoProducerCameraView;
    private final CallActivityWeakReference weakReference = new CallActivityWeakReference(this);
    private final boolean hasTouchScreen = Universal.context().getPackageManager().hasSystemFeature("android.hardware.touchscreen");
    private final Rect dispatchTouchEventRect = new Rect();
    private final int[] dispatchTouchEventLocation = new int[2];
    Coordinator<?> liveSentencesCoordinator = null;
    Coordinator<?> settingsPanelCoordinator = null;
    Coordinator<?> historyCoordinator = null;
    private final CompositeDisposable disposables = new CompositeDisposable();
    private Lifecycle lifecycle = Lifecycle.ASCENDING;
    private boolean dispatchTouchEventIgnore = false;
    private boolean isScreenOrientationLocked = false;
    private boolean isVideoStateOn = false;
    private BroadcastReceiver asrBroadcastReceiver = new BroadcastReceiver() { // from class: com.sightcall.universal.internal.ui.CallActivity.9
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent.getAction().equals(RealWearUtilsKt.ACTION_SPEECH_EVENT)) {
                intent.getStringExtra(RealWearUtilsKt.EXTRA_RESULT);
            }
        }
    };

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.CallActivity$10, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$common$DataChannelAction;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$internal$location$LocationDialog$LocationDialogResult;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$internal$view$CallButton;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;

        static {
            int[] iArr = new int[DataChannelAction.values().length];
            $SwitchMap$com$sightcall$common$DataChannelAction = iArr;
            try {
                iArr[DataChannelAction.STOPPED_PICTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_HOLD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STARTED_HOLD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_HOLD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOPPED_HOLD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_LIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_LIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_SHARE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_SHARE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_CAMERA.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_CAMERA.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_PICTURE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_PICTURE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SEEK_PLAYER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.RESUME_PLAYER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.RESUMED_PLAYER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.PAUSE_PLAYER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.PAUSED_PLAYER.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_PLAYER.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SELECT_PHOTO.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SELECT_PICTURE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SELECT_VIDEO.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_SCREENCAST.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_SCREENCAST.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.ZOOM_CAMERA.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.ZOOMED_CAMERA.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SET_CAMERA_FRONT.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SET_CAMERA_REAR.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.REQUEST_GEOLOCATION.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_SNAPSHOT.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SNAPSHOT.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_SNAPSHOT.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_COLLIMATOR.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.OCR.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_COLLIMATOR.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.FOCUS.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.USB_CAMERA_ENABLE.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.USB_CAMERA_DISABLE.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.AR_START.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.LIVE_QR_START.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.LIVE_QR_STOP.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.START_MUTE.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.STOP_MUTE.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SWITCH_REQUEST.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SWITCH_CANCEL.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SWITCH_ACK.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SDF_OPEN.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.SDF_CLOSE.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$com$sightcall$common$DataChannelAction[DataChannelAction.RTCC_REQUEST_TRANSLATE_REMOTE.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            int[] iArr2 = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr2;
            try {
                iArr2[Call.Status.CREATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.RINGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.PROCEEDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ENDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused54) {
            }
            int[] iArr3 = new int[Rtcc.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr3;
            try {
                iArr3[Rtcc.Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.DISCONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.NETWORK_LOST.ordinal()] = 5;
            } catch (NoSuchFieldError unused59) {
            }
            int[] iArr4 = new int[LocationDialog.LocationDialogResult.values().length];
            $SwitchMap$com$sightcall$universal$internal$location$LocationDialog$LocationDialogResult = iArr4;
            try {
                iArr4[LocationDialog.LocationDialogResult.ACCEPTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$location$LocationDialog$LocationDialogResult[LocationDialog.LocationDialogResult.DECLINED.ordinal()] = 2;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$location$LocationDialog$LocationDialogResult[LocationDialog.LocationDialogResult.TIMEOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused62) {
            }
            int[] iArr5 = new int[ScreenshareProducerMode.values().length];
            $SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode = iArr5;
            try {
                iArr5[ScreenshareProducerMode.IMAGE_CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode[ScreenshareProducerMode.IMAGE_SNAPSHOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode[ScreenshareProducerMode.IMAGE_GALLERY.ordinal()] = 3;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode[ScreenshareProducerMode.WEB.ordinal()] = 4;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode[ScreenshareProducerMode.SCREEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused67) {
            }
            int[] iArr6 = new int[CallButton.values().length];
            $SwitchMap$com$sightcall$universal$internal$view$CallButton = iArr6;
            try {
                iArr6[CallButton.MICRO.ordinal()] = 1;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.VIDEO_SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.AUDIO_SOURCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.VIDEO_PAUSE_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_MEDIA.ordinal()] = 6;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_PHOTO.ordinal()] = 7;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.FLASH.ordinal()] = 8;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.ERASE.ordinal()] = 9;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.HANGUP.ordinal()] = 10;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_STOP.ordinal()] = 11;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SNAPSHOT.ordinal()] = 12;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.RECORDING_PAUSE_RESUME.ordinal()] = 13;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SCREENCAST.ordinal()] = 14;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.MESSAGES.ordinal()] = 15;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SHARE_PICTURE.ordinal()] = 16;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.GEOLOCATION.ordinal()] = 17;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                $SwitchMap$com$sightcall$universal$internal$view$CallButton[CallButton.SAVE_MEDIA.ordinal()] = 18;
            } catch (NoSuchFieldError unused85) {
            }
        }
    }

    public static class CallActivityWeakReference extends WeakReference<CallActivity> implements CallStep.Delegate {
        public CallActivityWeakReference(CallActivity callActivity) {
            super(callActivity);
        }

        @Override // com.sightcall.universal.scenario.steps.CallStep.Delegate
        public void onForwardInbandDataChannel(DataChannelAction dataChannelAction, String str) {
            CallActivity callActivity = get();
            if (callActivity != null) {
                callActivity.onForwardInbandDataChannel(dataChannelAction, str);
            }
        }

        @Override // com.sightcall.universal.scenario.steps.CallStep.Delegate
        public void onRefreshCallButtons() {
            CallActivity callActivity = get();
            if (callActivity != null) {
                callActivity.updateCallButtonBar();
            }
        }
    }

    public enum Lifecycle {
        ASCENDING,
        DESCENDING
    }

    public static class OverwriteMetadataTask extends SaveMetadataListTask {
        private final Callback callback;

        public interface Callback {
            void postSave(List<Metadata> list);
        }

        public OverwriteMetadataTask(Context context, List<Metadata> list, Callback callback) {
            super(context, list);
            this.callback = callback;
        }

        @Override // com.sightcall.universal.media.SaveMetadataListTask, android.os.AsyncTask
        public void onPostExecute(List<Metadata> list) {
            super.onPostExecute(list);
            this.callback.postSave(list);
        }
    }

    public interface ScreenCastCallback {
        void onResult(int i2, Intent intent);
    }

    private void addFragment(Fragment fragment) {
        FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
        fragmentTransactionD.i(R.id.universal_fitSystemWindows, fragment, fragment.getTag(), 1);
        fragmentTransactionD.d(fragment.getTag());
        fragmentTransactionD.e();
    }

    private static void applyVisibilityWithDelayedFadeIn(ImageView imageView, int i2) {
        if (imageView.getVisibility() != i2) {
            Object drawable = imageView.getDrawable();
            Animatable animatable = drawable instanceof Animatable ? (Animatable) drawable : null;
            if (i2 != 0) {
                imageView.setVisibility(8);
                if (animatable == null || !animatable.isRunning()) {
                    return;
                }
                animatable.stop();
                return;
            }
            imageView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            imageView.setVisibility(0);
            imageView.animate().alpha(1.0f).setStartDelay(500L).start();
            if (animatable == null || animatable.isRunning()) {
                return;
            }
            animatable.start();
        }
    }

    private void createUi(Bundle bundle) {
        getWindow().addFlags(128);
        setContentView(R.layout.universal_activity_call);
        this.dispatchTouchEventSlop = ViewConfiguration.get(this).getScaledTouchSlop();
        this.rootView = (FrameLayout) findViewById(android.R.id.content);
        this.liveTranslationPanelButton = (ImageView) findViewById(R.id.universal_button_open_panel);
        boolean enabled = this.liveTranslationAPI.getEnabled();
        ImageView imageView = this.liveTranslationPanelButton;
        int i2 = 0;
        if (enabled) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        this.liveTranslationPanelButton.setOnClickListener(new hi(this, i2));
        this.callStatusScreencasting = (ImageView) findViewById(R.id.universal_call_status_screencasting);
        this.callStatusNoMedia = (ImageView) findViewById(R.id.universal_call_status_no_media);
        this.callViewModel.getVideoPlayerWrapper().init(this, (ViewStub) findViewById(R.id.universal_video_producer_player), (ViewStub) findViewById(R.id.universal_video_player_bar), this.advancedAnnotationsWrapper, this.capabilitiesRepository);
        this.systemUiHelper = new SystemUiHelper(this, this.hasTouchScreen ? 3 : 1, 0, this);
        SystemBarConfig systemBarConfig = new SystemBarConfig(this, true, true);
        MyVideoConsumerView myVideoConsumerView = (MyVideoConsumerView) findViewById(R.id.universal_consumer_view);
        this.videoConsumerView = myVideoConsumerView;
        myVideoConsumerView.configure(this.dc, this.systemUiHelper, systemBarConfig, this.session, this.callViewModel.getVideoPlayerWrapper(), this.remoteState);
        this.videoConsumerView.setFilterBitmap(true);
        this.videoConsumerThumbnailContainer = (MyVideoConsumerThumbnailContainer) findViewById(R.id.universal_video_consumer_thumbnail_container);
        if (this.call.isConference()) {
            this.videoConsumerThumbnailContainer.configure(this.systemUiHelper, systemBarConfig, this.callViewModel.getVideoPlayerWrapper(), this.session);
        }
        MyVideoProducerCameraView myVideoProducerCameraView = (MyVideoProducerCameraView) findViewById(R.id.universal_video_producer_camera);
        this.videoProducerCameraView = myVideoProducerCameraView;
        myVideoProducerCameraView.setOnCameraCallback(this);
        this.uvcPreview = (UvcPreview) findViewById(R.id.universal_video_producer_uvc);
        this.callViewModel.getVideoPlayerWrapper().setOnPlayerCallback(this);
        this.callViewModel.getVideoPlayerWrapper().restore();
        this.callViewModel.getVideoPlayerWrapper().setCallback(this);
        MyVideoProducerWrapper myVideoProducerWrapper = (MyVideoProducerWrapper) findViewById(R.id.universal_video_producer_wrapper);
        this.myVideoProducerWrapper = myVideoProducerWrapper;
        myVideoProducerWrapper.configure(this.call, this.systemUiHelper, systemBarConfig, this.session, this.callViewModel.getVideoPlayerWrapper());
        MyScreenshareConsumerView myScreenshareConsumerView = (MyScreenshareConsumerView) findViewById(R.id.universal_screenshare_consumer_view);
        this.myScreenshareConsumerView = myScreenshareConsumerView;
        myScreenshareConsumerView.setFilterBitmap(true);
        ProgressivexImageView progressivexImageView = (ProgressivexImageView) findViewById(R.id.universal_progressivex_imageview);
        this.progressivexImageView = progressivexImageView;
        progressivexImageView.configure(this.call.getProgressivexSink());
        this.progressivexImageView.restore(this.session);
        MyScreenshareProducerWebView myScreenshareProducerWebView = (MyScreenshareProducerWebView) findViewById(R.id.universal_screenshare_producer_webview);
        this.screenshareProducerWebView = myScreenshareProducerWebView;
        myScreenshareProducerWebView.configure(this.session);
        this.screenshareProducerWebView.setProgressBar(findViewById(R.id.universal_screenshare_producer_webview_progress));
        this.screenshareProducerWebView.restore(bundle);
        CallButtonBar callButtonBar = (CallButtonBar) findViewById(R.id.universal_call_local_bar);
        this.callButtonBar = callButtonBar;
        callButtonBar.build(this.session, false);
        this.callButtonBar.setOnCallButtonClickListener(this);
        CallButtonBar callButtonBar2 = (CallButtonBar) findViewById(R.id.universal_call_bar_remote);
        this.callButtonBarRemote = callButtonBar2;
        callButtonBar2.build(this.session, true);
        this.callButtonBarRemote.setOnCallButtonClickListener(this);
        if (this.session.config.role() == Session.Role.HOST) {
            this.callButtonBarRemote.setVisibility(0);
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.n1(true);
        MessagesOverlayAdapter messagesOverlayAdapter = new MessagesOverlayAdapter(this.session);
        this.messagesOverlayAdapter = messagesOverlayAdapter;
        messagesOverlayAdapter.setOnQuickActionListener(this);
        this.messagesOverlayAdapter.setOnMessageClickListener(this);
        this.messagesOverlayAdapter.setOnMessageLongClickListener(this);
        TouchThroughRecyclerView touchThroughRecyclerView = (TouchThroughRecyclerView) findViewById(R.id.universal_overlay_messages);
        this.messagesOverlay = touchThroughRecyclerView;
        touchThroughRecyclerView.setLayoutManager(linearLayoutManager);
        this.messagesOverlay.setAdapter(this.messagesOverlayAdapter);
        this.messagesOverlay.addItemDecoration(new CenterItemDecoration());
        MessagesOverlayTouchHelper.attachToRecyclerView(this.messagesOverlay, this.messagesOverlayAdapter);
        ViewUtils.addPaddingTakenByFitSystemWindows(findViewById(R.id.universal_fitSystemWindows), this.messagesOverlay);
        updateCallButtonBar();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.rootView.addView(this.advancedAnnotationsContainer, layoutParams);
        ViewOrder.reorderIfNeeded(this.session, this.call, this.rootView, this.videoConsumerView, this.videoConsumerThumbnailContainer, this.myVideoProducerWrapper, this.advancedAnnotationsContainer);
        if (Boolean.TRUE.equals(this.callViewModel.getShouldSendGuestGpsOnStartup())) {
            GpsRequest gpsRequest = this.session.remoteState.gpsRequest();
            if (gpsRequest.isRequesting()) {
                DataChannelAction.STOP_LOCATION.send();
            }
            DataChannelAction.REQUEST_GEOLOCATION.send(AnyExtensionsKt.toJson(new GeoLocationRequest(UUID.randomUUID().toString(), 60000L), false, false));
            gpsRequest.onStart();
            this.callViewModel.onGuestGpsOnStartupSent();
        }
    }

    private void deactivateLiveSentencesCoordinator() {
        this.liveSentencesCoordinator.detachFrom(this.coordinator);
        this.liveSentencesCoordinator = null;
    }

    private void eraseVideoDrawings() {
        this.advancedAnnotationsWrapper.processDeleteAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeMediaCaptureEventFromCamera(Result<Media, MediaCaptureError> result) {
        if (result != null) {
            if (result instanceof Result.Success) {
                onRequestPhotoSuccess(((Media) ((Result.Success) result).getSuccess()).getUri());
            } else {
                Logger.INSTANCE.e(((MediaCaptureError) ((Result.Error) result).getError()).toString(), null);
                onRequestPhotoError();
            }
            getSupportFragmentManager().V();
            this.callViewModel.mediaCaptureEventFromCamera(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeMediaCaptureEventFromGallery(Result<Media, MediaCaptureError> result) {
        if (result != null) {
            if (result instanceof Result.Success) {
                Media media = (Media) ((Result.Success) result).getSuccess();
                this.parameters.isSharePictureGalleryDisplayed = false;
                onActivityResultPicture(media.getUri());
            } else {
                Logger.INSTANCE.e(((MediaCaptureError) ((Result.Error) result).getError()).toString(), null);
                DataChannelAction.CANCELLED_PICTURE.send(this.dc);
            }
            getSupportFragmentManager().V();
            this.callViewModel.mediaCaptureEventFromGallery(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeMediaCaptureVideoFromGalleryObserver(Result<Media, MediaCaptureError> result) {
        if (result != null) {
            if (result instanceof Result.Success) {
                Media media = (Media) ((Result.Success) result).getSuccess();
                this.parameters.isSharePictureGalleryDisplayed = false;
                onRequestVideoSuccess(media.getUri());
            } else {
                MediaCaptureError mediaCaptureError = (MediaCaptureError) ((Result.Error) result).getError();
                DataChannelAction.CANCELLED_VIDEO.send(this.dc);
                Logger.INSTANCE.e(mediaCaptureError.toString(), null);
            }
            getSupportFragmentManager().V();
            this.callViewModel.mediaCaptureEventVideoFromGallery(null);
        }
    }

    private void finishAndRemoveTaskOrFinishAffinity() {
        finishAndRemoveTask();
    }

    private boolean finishOrRecreate() {
        if (shouldFinish(Rtcc.instance().call().get())) {
            logger.w("CallActivity started while no active call, finish()");
            finishAndRemoveTaskOrFinishAffinity();
            return true;
        }
        if (!shouldFinish(this.call)) {
            return false;
        }
        logger.w("CallActivity started with stalled call reference, recreate()");
        recreate();
        return true;
    }

    public static CallActivity getInstance() {
        WeakReference<CallActivity> weakReference = callActivityInstance;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private VideoProducer getVideoProducer() {
        return this.call.video().producer();
    }

    private MyVideoProducerCameraView getVideoProducerCameraView() {
        VideoProducer videoProducerProducer = this.call.video().producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            return (MyVideoProducerCameraView) videoProducerProducer;
        }
        return null;
    }

    private void handleProposition(Proposition proposition) {
        if (proposition == null || !proposition.is(Proposition.State.CREATED)) {
            return;
        }
        PropositionDialogFragment.show(getSupportFragmentManager(), proposition);
    }

    private void handleVideoStateAfterShare() {
        if (this.isVideoStateOn) {
            restartVideo();
        }
    }

    private void initializeLocationSettingsLauncher() {
        this.locationSettingsLauncher = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new gi(this, 5));
    }

    private void initializeMediaProjectionLauncher() {
        this.startMediaProjection = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new gi(this, 2));
    }

    private void initializeRequestPermissionsLauncher() {
        this.requestPermissionsLauncher = registerForActivityResult(new ActivityResultContracts$RequestMultiplePermissions(), new gi(this, 1));
    }

    private void initializeResolutionForResultLauncher() {
        this.resolutionForResultLauncher = registerForActivityResult(new ActivityResultContract<IntentSenderRequest, ActivityResult>() { // from class: androidx.activity.result.contract.ActivityResultContracts$StartIntentSenderForResult

            @kotlin.Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/activity/result/contract/ActivityResultContracts$StartIntentSenderForResult$Companion;", "", "", "ACTION_INTENT_SENDER_REQUEST", "Ljava/lang/String;", "EXTRA_INTENT_SENDER_REQUEST", "EXTRA_SEND_INTENT_EXCEPTION", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                }
            }

            static {
                new Companion(null);
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Intent a(Context context, Object obj) {
                IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
                intentSenderRequest.getClass();
                Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
                intentPutExtra.getClass();
                return intentPutExtra;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Object c(int i2, Intent intent) {
                return new ActivityResult(i2, intent);
            }
        }, new gi(this, 4));
    }

    private void initiateAndActivateLiveSentencesCoordinator() {
        Coordinator<?> coordinatorCreateLiveSentencesCoordinator = this.liveTranslationAPI.createLiveSentencesCoordinator((ViewGroup) findViewById(R.id.universal_live_sentences_container));
        if (coordinatorCreateLiveSentencesCoordinator != null) {
            this.liveSentencesCoordinator = coordinatorCreateLiveSentencesCoordinator;
            coordinatorCreateLiveSentencesCoordinator.attachTo(this.coordinator);
            coordinatorCreateLiveSentencesCoordinator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$createUi$-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m72instrumented$0$createUi$LandroidosBundleV(CallActivity callActivity, View view) {
        Callback.n(view);
        try {
            callActivity.lambda$createUi$8(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$createUi$5() {
        Coordinator<?> coordinator = this.settingsPanelCoordinator;
        if (coordinator != null) {
            coordinator.detachFrom(this.coordinator);
        }
        this.settingsPanelCoordinator = null;
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$createUi$6() {
        Coordinator<?> coordinator = this.historyCoordinator;
        if (coordinator != null) {
            coordinator.detachFrom(this.coordinator);
        }
        this.historyCoordinator = null;
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$createUi$7() {
        if (this.historyCoordinator == null) {
            Coordinator<?> coordinatorCreateHistoryCoordinator = this.liveTranslationAPI.createHistoryCoordinator((ViewGroup) findViewById(R.id.universal_history_container), new LiveTranslationAPI.CloseHistory(new di(this, 2)));
            this.historyCoordinator = coordinatorCreateHistoryCoordinator;
            coordinatorCreateHistoryCoordinator.attachTo(this.coordinator);
            this.historyCoordinator.start();
        }
        return Unit.f71739a;
    }

    private /* synthetic */ void lambda$createUi$8(View view) {
        if (this.settingsPanelCoordinator == null) {
            Coordinator<?> coordinatorCreateSettingsPanelCoordinator = this.liveTranslationAPI.createSettingsPanelCoordinator((ViewGroup) findViewById(R.id.universal_panel_setting_container), new LiveTranslationAPI.CloseSettings(new di(this, 8)), new LiveTranslationAPI.OpenHistory(new di(this, 1)));
            this.settingsPanelCoordinator = coordinatorCreateSettingsPanelCoordinator;
            coordinatorCreateSettingsPanelCoordinator.attachTo(this.coordinator);
            this.settingsPanelCoordinator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$initializeLocationSettingsLauncher$2(ActivityResult activityResult) {
        int i2 = activityResult.f731b;
        if (i2 == -1) {
            onActivityResultEnableGps(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$initializeMediaProjectionLauncher$1(ActivityResult activityResult) {
        ScreenCastCallback screenCastCallback = this.screenCastPermissionListener;
        if (screenCastCallback != null) {
            screenCastCallback.onResult(activityResult.f731b, activityResult.f732c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initializeRequestPermissionsLauncher$4(Map map) {
        if (this.callViewModel.checkLocationPermission()) {
            this.callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupAccepted.INSTANCE);
            startLocationService();
        } else {
            logger.e("android.permission.ACCESS_FINE_LOCATION denied!");
            this.callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupDeclined.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void lambda$initializeResolutionForResultLauncher$3(ActivityResult activityResult) {
        if (activityResult.f731b == -1) {
            if (this.callViewModel.checkLocationPermission()) {
                this.callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupAccepted.INSTANCE);
                startLocationService();
            } else {
                logger.e("android.permission.ACCESS_FINE_LOCATION denied!");
                this.callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupDeclined.INSTANCE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onCallButtonClickLocal$10() {
        updateAll();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreate$0(Boolean bool) throws Throwable {
        if (bool.booleanValue()) {
            initiateAndActivateLiveSentencesCoordinator();
            startLiveTranslation();
        } else if (this.liveSentencesCoordinator != null) {
            stopLiveTranslation();
            deactivateLiveSentencesCoordinator();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onForwardInbandDataChannel$16() {
        updateAll();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$onRequestPhotoError$13() {
        updateAll();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$showShareMediaDialog$11(ShareMediaDialog.Result result) {
        Session session = this.session;
        if (session != null) {
            session.parameters.isSharePromptDisplayed = false;
        }
        if (result instanceof ShareMediaDialog.Result.PhotoFromCamera) {
            onRequestPhotoFromCamera();
            return null;
        }
        if (result instanceof ShareMediaDialog.Result.PhotoFromGallery) {
            onRequestPhotoFromGallery();
            return null;
        }
        if (result instanceof ShareMediaDialog.Result.VideoFromGallery) {
            onRequestVideoFromGallery();
            return null;
        }
        if (!(result instanceof ShareMediaDialog.Result.Cancelled)) {
            return null;
        }
        onShareDialogCancelled();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$startPhotoFromCamera$12(Result result) {
        this.callViewModel.mediaCaptureEventFromCamera(result);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$startPhotoFromGallery$14(Result result) {
        this.callViewModel.mediaCaptureEventFromGallery(result);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startScreenCastWithMediaProjection$20(Service service, int i2, Intent intent) {
        DataChannelAction.SCREENCAST_ENTER.send(this.dc);
        if (i2 != -1) {
            if (i2 == 0) {
                this.screenCastRepository.unBindService();
                DataChannelAction.SCREENCAST_DENY.send(this.dc);
                return;
            }
            return;
        }
        DataChannelAction.SCREENCAST_ACCEPT.send(this.dc);
        if (this.call.screenshare().isReceiving()) {
            return;
        }
        this.screenCastRepository.startService(service);
        this.parameters.screenshareProducerMode = ScreenshareProducerMode.SCREEN;
        Utils.requestScreenshareWithOrWithoutVideo(this.session, this.call);
        ScreenCastOverlay.load(this, i2, intent, this.call.screenshare());
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onScreencastStarted(this.session);
        updateAll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$startScreenCastWithMediaProjection$21(final Service service) {
        requestScreenCast(new ScreenCastCallback() { // from class: com.sightcall.universal.internal.ui.a
            @Override // com.sightcall.universal.internal.ui.CallActivity.ScreenCastCallback
            public final void onResult(int i2, Intent intent) {
                this.f43325a.lambda$startScreenCastWithMediaProjection$20(service, i2, intent);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$startVideoFromGallery$15(Result result) {
        this.callViewModel.mediaCaptureEventVideoFromGallery(result);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$stopGlobalShare$18() {
        updateAll();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$stopShareWeb$19() {
        updateAll();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchUserUi$17(VideoModule videoModule, VideoModule.CameraSource cameraSource) {
        VideoProducer videoProducerProducer = videoModule.producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            ((MyVideoProducerCameraView) videoProducerProducer).setSource(cameraSource);
            updateAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateScreenshareConsumer$9(RectF rectF) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.advancedAnnotationsContainer.getLayoutParams();
        layoutParams.width = (int) rectF.width();
        layoutParams.height = (int) rectF.height();
        this.advancedAnnotationsContainer.setLayoutParams(layoutParams);
    }

    private void lockOrientationScreen() {
        if (this.isScreenOrientationLocked) {
            return;
        }
        int i2 = 1;
        this.isScreenOrientationLocked = true;
        int rotation = ((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation != 0) {
            if (rotation != 1) {
                i2 = rotation != 2 ? 8 : 9;
            } else {
                i2 = 0;
            }
        }
        setRequestedOrientation(i2);
    }

    private void manageActivityResult() {
        initializeMediaProjectionLauncher();
        initializeLocationSettingsLauncher();
        initializeResolutionForResultLauncher();
        initializeRequestPermissionsLauncher();
    }

    private void ocr(String str) {
        VideoModule videoModuleVideo = this.call.video();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        if (!videoModuleVideo.isSending() || !(videoProducerProducer instanceof MyVideoProducerCameraView) || ((MyVideoProducerCameraView) videoProducerProducer).isPaused()) {
            DataChannelAction.OCR_ERROR.send(this.dc);
            return;
        }
        try {
            ((MyVideoProducerCameraView) videoProducerProducer).requestOcr(Integer.parseInt(new JSONObject(str).getString("agent")));
        } catch (JSONException unused) {
            DataChannelAction.OCR_ERROR.send(this.dc);
        }
    }

    private void onActivityResultEnableGps(int i2) {
        if (i2 == -1) {
            this.callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupAccepted.INSTANCE);
            startLocationService();
        } else {
            if (i2 != 0) {
                return;
            }
            boolean zIsGPSEnabled = this.callViewModel.isGPSEnabled();
            CallViewModel callViewModel = this.callViewModel;
            if (!zIsGPSEnabled) {
                callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupDeclined.INSTANCE);
            } else {
                callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupAccepted.INSTANCE);
                startLocationService();
            }
        }
    }

    private void onActivityResultPicture(Uri uri) {
        if (uri == null) {
            return;
        }
        this.progressivexImageView.loadUri(uri, true);
        this.parameters.screenshareContentUri = uri;
        if (this.call.video().isSending()) {
            this.session.parameters.restartVideoAfterPicture = true;
            this.call.video().releaseProducer();
            this.session.parameters.videoStopPending = true;
            this.call.video().stop();
            updateAll();
        }
    }

    private void onBackground() {
        MessagesOverlayAdapter messagesOverlayAdapter = this.messagesOverlayAdapter;
        if (messagesOverlayAdapter != null) {
            messagesOverlayAdapter.clearUnreadTimeout();
        }
        releaseUi();
    }

    private void onCallButtonClickLocal(CallButton callButton) {
        switch (AnonymousClass10.$SwitchMap$com$sightcall$universal$internal$view$CallButton[callButton.ordinal()]) {
            case 1:
                AudioModule audioModuleAudio = this.call.audio();
                if (this.call.isConference()) {
                    Participant participantMyself = this.call.conference().myself();
                    participantMyself.mute(!participantMyself.isMuted());
                } else {
                    audioModuleAudio.muteRecorder(!audioModuleAudio.isRecorderMuted());
                }
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onMicro(this.session, !audioModuleAudio.isRecorderMuted());
                break;
            case 2:
                startStopCamera(!this.call.video().isSending(), true);
                break;
            case 3:
                switchCameraSource();
                break;
            case 4:
                AudioModule audioModuleAudio2 = this.call.audio();
                audioModuleAudio2.route(audioModuleAudio2.route().next());
                break;
            case 5:
                VideoModule videoModuleVideo = this.call.video();
                if (videoModuleVideo.isSending()) {
                    VideoProducer videoProducerProducer = videoModuleVideo.producer();
                    if (videoProducerProducer instanceof MyVideoProducer) {
                        startStopHold(!((MyVideoProducer) videoProducerProducer).isPaused());
                        break;
                    }
                }
                break;
            case 6:
                if (this.call.screenshare().isSending() || ProgressivexImageView.isRunning()) {
                    stopPicture();
                } else if (!VideoProducerExtensionsKt.isMyVideoProducerPlayerView(this.call.video().producer())) {
                    showShareMediaDialog();
                } else {
                    stopPlayer();
                }
                break;
            case 7:
                onRequestPhotoFromCamera();
                break;
            case 8:
                VideoModule videoModuleVideo2 = this.call.video();
                if (videoModuleVideo2.isSending()) {
                    VideoProducer videoProducerProducer2 = videoModuleVideo2.producer();
                    if (videoProducerProducer2 instanceof MyVideoProducerCameraView) {
                        MyVideoProducerCameraView myVideoProducerCameraView = (MyVideoProducerCameraView) videoProducerProducer2;
                        if (myVideoProducerCameraView.isFlashAvailable()) {
                            startStopLight(!myVideoProducerCameraView.isFlashEnabled());
                        }
                    }
                }
                break;
            case 9:
                this.advancedAnnotationsWrapper.processDeleteAll();
                break;
            case 10:
                com.sightcall.universal.util.Utils.promptHangup(this);
                break;
            case 11:
                if (!ProgressivexImageView.isRunning()) {
                    stopGlobalShare();
                } else {
                    this.progressivexImageView.stop();
                    this.parameters.screenshareContentUri = null;
                    restartVideo();
                }
                break;
            case 12:
                snapshot();
                break;
            case 13:
                RecordingModule recordingModuleRecording = this.call.conference().recording();
                if (!recordingModuleRecording.isStarted()) {
                    recordingModuleRecording.start(CallStep.success.recording().getUrl(), CallStep.mode);
                } else {
                    CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onRecordingPauseResume(recordingModuleRecording.isPaused(), this.session.caseReportId());
                    if (!recordingModuleRecording.isPaused()) {
                        recordingModuleRecording.pause();
                    } else {
                        recordingModuleRecording.resume();
                    }
                }
                break;
            case 14:
                if (this.call.screenshare().isSending() && (this.call.screenshare().producer() instanceof ScreenCastOverlay)) {
                    this.screenCastRepository.unBindService();
                    ScreenShareServiceKt.stopScreenCast(this, this.call, this.session, this.dc, new di(this, 5));
                } else {
                    startScreencast();
                }
                break;
            case 15:
                this.messagesOverlayAdapter.onMessagesRead();
                MessagesDialogFragment.show(getSupportFragmentManager());
                break;
        }
    }

    private void onCallButtonClickRemote(CallButtonImageView callButtonImageView, CallButton callButton) {
        if (this.remoteState == null) {
            return;
        }
        switch (AnonymousClass10.$SwitchMap$com$sightcall$universal$internal$view$CallButton[callButton.ordinal()]) {
            case 1:
                if (!this.remoteState.isMuted()) {
                    DataChannelAction.START_MUTE.send();
                } else {
                    DataChannelAction.STOP_MUTE.send();
                }
                break;
            case 2:
                if (!this.remoteState.isCameraEnabled()) {
                    DataChannelAction.START_CAMERA.send();
                } else {
                    DataChannelAction.STOP_CAMERA.send();
                }
                break;
            case 3:
                if (this.remoteState.isCameraEnabled()) {
                    if (this.remoteState.cameraSource() != VideoModule.CameraSource.FRONT) {
                        DataChannelAction.SET_CAMERA_FRONT.send();
                    } else {
                        DataChannelAction.SET_CAMERA_REAR.send();
                    }
                }
                break;
            case 5:
                if (!this.remoteState.isCameraPaused()) {
                    DataChannelAction.START_HOLD.send();
                    lockOrientationScreen();
                } else {
                    DataChannelAction.STOP_HOLD.send();
                    unlockOrientationScreen();
                }
                break;
            case 6:
                if (this.call.screenshare().isReceiving() || ProgressivexImageView.isReceiving()) {
                    if (ProgressivexImageView.isRunning() && this.progressivexImageView.getSource() == ProgressivexEvent.SOURCE_JPEG) {
                        DataChannelAction.START_CAMERA.send();
                    } else {
                        DataChannelAction.STOP_PICTURE.send();
                    }
                } else if (!this.remoteState.isPlayerEnabled()) {
                    CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onRemotePickerRequested(this.session);
                    DataChannelAction.START_PICTURE.send();
                } else {
                    DataChannelAction.STOP_PLAYER.send();
                }
                break;
            case 7:
                if (this.call.screenshare().isReceiving() || ProgressivexImageView.isReceiving()) {
                    DataChannelAction.STOP_PICTURE.send();
                } else {
                    DataChannelAction.SELECT_PHOTO.send();
                }
                break;
            case 8:
                if (!this.remoteState.isFlashEnabled()) {
                    DataChannelAction.START_LIGHT.send();
                } else {
                    DataChannelAction.STOP_LIGHT.send();
                }
                break;
            case 9:
                this.advancedAnnotationsWrapper.processDeleteAll();
                break;
            case 11:
                stopShare();
                break;
            case 12:
                if (this.call.screenshare().isReceiving() || ProgressivexImageView.isReceiving()) {
                    DataChannelAction.STOP_PICTURE.send();
                } else {
                    DataChannelAction.SNAPSHOT.send();
                    this.remoteState.prepareForSnapshot();
                }
                break;
            case 14:
                if (this.call.screenshare().isReceiving() && this.remoteState.isSharingScreen()) {
                    this.screenCastRepository.unBindService();
                    DataChannelAction.STOP_SCREENCAST.send();
                } else {
                    DataChannelAction.START_SCREENCAST.send();
                }
                break;
            case 16:
                if (this.call.screenshare().isReceiving() || ProgressivexImageView.isReceiving()) {
                    DataChannelAction.STOP_PICTURE.send();
                } else {
                    DataChannelAction.SELECT_PICTURE.send();
                }
                break;
            case 17:
                GpsPopupWindow.show(this, this.session, callButtonImageView);
                break;
            case 18:
                saveMedia();
                stopShare();
                break;
        }
    }

    private void onForeground() {
        showAndHideSystemUi();
        updateAll();
    }

    private void onRequestAutoFocus() {
        VideoProducer videoProducerProducer = this.call.video().producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            MyVideoProducerCameraView myVideoProducerCameraView = (MyVideoProducerCameraView) videoProducerProducer;
            if (!myVideoProducerCameraView.isStarted() || myVideoProducerCameraView.isPaused()) {
                return;
            }
            myVideoProducerCameraView.onRequestFocus();
        }
    }

    private void onRequestPhotoError() {
        DataChannelAction.CANCELLED_PHOTO.send(this.dc);
        this.parameters.isShareViewFinderDisplayed = false;
        if (ProgressivexImageView.isRunning()) {
            this.progressivexImageView.stop();
            this.parameters.screenshareContentUri = null;
        } else {
            this.parameters.screenshareContentUri = null;
            ScreenShareServiceKt.resumePendingScreenShareOrStop(this.call, this.session, new di(this, 0));
        }
    }

    private void onRequestPhotoSuccess(Uri uri) {
        DataChannelAction.SELECTED_PHOTO.send(this.dc);
        CallParameters callParameters = this.parameters;
        callParameters.isSharePictureGalleryDisplayed = false;
        callParameters.screenshareContentUri = uri;
        callParameters.isShareViewFinderDisplayed = false;
        onActivityResultPicture(uri);
    }

    private void onRequestVideoSuccess(Uri uri) {
        DataChannelAction.SELECTED_VIDEO.send(this.dc);
        this.parameters.isShareVideoGalleryDisplayed = false;
        this.callViewModel.getVideoPlayerWrapper().newState(uri);
        this.callViewModel.getVideoPlayerWrapper().resetState();
        this.callViewModel.getVideoPlayerWrapper().loadUri(uri);
        VideoModule videoModuleVideo = this.call.video();
        if (videoModuleVideo.isSending()) {
            updateAll();
        } else {
            videoModuleVideo.releaseProducer();
            videoModuleVideo.start();
        }
    }

    private void pausePlayer() {
        if (this.call.video().isSending() && VideoProducerExtensionsKt.isMyVideoProducerPlayerView(getVideoProducer())) {
            this.callViewModel.getVideoPlayerWrapper().pause();
        }
    }

    private static void playShutterSound() {
        new MediaActionSound().play(0);
    }

    private void releaseParticipantUi(Participant participant) {
        if (participant == null) {
            return;
        }
        Object objVideoConsumer = participant.videoConsumer();
        VideoProducer videoProducerProducer = this.call.video().producer();
        if (!((videoProducerProducer instanceof MyVideoProducer) && ((MyVideoProducer) videoProducerProducer).isPaused()) && (objVideoConsumer instanceof View) && UiUtils.isViewChildOf((View) objVideoConsumer, this)) {
            participant.releaseVideoConsumer();
        }
    }

    private void releaseUi() {
        Call call = this.call;
        if (call == null) {
            return;
        }
        ScreenshareModule screenshareModuleScreenshare = call.screenshare();
        Object objConsumer = screenshareModuleScreenshare.consumer();
        if ((objConsumer instanceof View) && UiUtils.isViewChildOf((View) objConsumer, this)) {
            screenshareModuleScreenshare.releaseConsumer();
        }
        Object objProducer = screenshareModuleScreenshare.producer();
        if ((objProducer instanceof View) && UiUtils.isViewChildOf((View) objProducer, this)) {
            screenshareModuleScreenshare.releaseProducer();
        }
        boolean zIsConference = this.call.isConference();
        Call call2 = this.call;
        if (!zIsConference) {
            releaseParticipantUi(call2.participant());
            return;
        }
        for (Participant participant : call2.conference().participants()) {
            releaseParticipantUi(participant);
        }
    }

    private void requestSwitchCamera(VideoModule.CameraSource cameraSource) {
        if (cameraSource == null) {
            return;
        }
        VideoProducer videoProducerProducer = this.call.video().producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            VideoModule.CameraSource source = ((MyVideoProducerCameraView) videoProducerProducer).getSource();
            if (source == null || source.isFront() != cameraSource.isFront()) {
                ChangeCameraSourceDialog.show(getSupportFragmentManager(), cameraSource);
            } else if (cameraSource.isFront()) {
                DataChannelAction.SETTED_CAMERA_FRONT.send(this.dc);
            } else {
                DataChannelAction.SETTED_CAMERA_REAR.send(this.dc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartVideo() {
        VideoModule videoModuleVideo = this.call.video();
        if (this.call.status() == Call.Status.ACTIVE && !videoModuleVideo.isSending() && this.callViewModel.getShouldRestartCamera()) {
            Universal.logger().d("Restarting video");
            videoModuleVideo.start();
        }
        updateAll();
    }

    private void resumePlayer() {
        if (this.call.video().isSending() && VideoProducerExtensionsKt.isMyVideoProducerPlayerView(getVideoProducer())) {
            this.callViewModel.getVideoPlayerWrapper().resume();
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0191  */
    private void saveMedia() {
        Bitmap bitmapSnapshot;
        Metadata.Origin origin;
        Metadata.Origin origin2;
        Bitmap bitmap;
        if (this.session.config.role() != Session.Role.HOST) {
            return;
        }
        Usecase.SavePicture savePicture = this.session.usecase.savePicture();
        if (savePicture == null) {
            logger.w("Unable to saveMedia(): [SavePicture] is null");
            return;
        }
        String strCaseReportId = this.session.caseReportId();
        if (TextUtils.isEmpty(strCaseReportId)) {
            logger.w("Unable to saveMedia(): [caseReportId] is null");
            return;
        }
        Usecase usecase = this.session.usecase;
        Metadata.Origin origin3 = Metadata.Origin.UNKNOWN;
        ScreenshareModule screenshareModuleScreenshare = this.call.screenshare();
        ScreenshareProducer screenshareProducerProducer = screenshareModuleScreenshare.producer();
        VideoModule videoModuleVideo = this.call.video();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        boolean z = videoProducerProducer instanceof MyVideoProducerCameraView;
        Bitmap bitmapSnapshot2 = null;
        VideoModule.CameraSource source = z ? ((MyVideoProducerCameraView) videoProducerProducer).getSource() : null;
        boolean z2 = true;
        int i2 = 0;
        boolean z3 = VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoProducerProducer) || (z && source != null && source.isBack());
        boolean z4 = videoModuleVideo.isReceiving() && !(videoModuleVideo.isSending() && z3);
        boolean z5 = videoModuleVideo.isSending() && (!videoModuleVideo.isReceiving() || z3);
        if (!ProgressivexImageView.isSending()) {
            if (ProgressivexImageView.isReceiving()) {
                bitmapSnapshot = this.progressivexImageView.snapshot();
                if (this.remoteState.isSharingPicture()) {
                    origin = Metadata.Origin.PICTURE;
                } else {
                    origin = this.remoteState.isSharingPhoto() ? Metadata.Origin.PHOTO : Metadata.Origin.PHOTO;
                }
            } else if (screenshareModuleScreenshare.isSending()) {
                if (!(screenshareProducerProducer instanceof MyScreenshareProducerWebView)) {
                    logger.w("Unsupported Screenshare producer for saveMedia: " + screenshareProducerProducer);
                    return;
                }
                bitmapSnapshot2 = ((MyScreenshareProducerWebView) screenshareProducerProducer).snapshot();
                origin3 = Metadata.Origin.URL;
            } else if (screenshareModuleScreenshare.isReceiving()) {
                bitmapSnapshot = this.myScreenshareConsumerView.snapshot();
                if (this.remoteState.isSharingUrl()) {
                    origin = Metadata.Origin.URL;
                } else if (this.remoteState.isSharingPicture()) {
                    origin = Metadata.Origin.PICTURE;
                } else {
                    origin = this.remoteState.isSharingPhoto() ? Metadata.Origin.PHOTO : Metadata.Origin.PHOTO;
                }
            } else {
                if (!z5) {
                    if (z4) {
                        bitmapSnapshot = this.videoConsumerView.snapshot();
                        origin = this.remoteState.isPlayerEnabled() ? Metadata.Origin.VIDEO : Metadata.Origin.CAMERA;
                    }
                    if (bitmap != null || bitmap.isRecycled()) {
                    }
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (width == 0 || height == 0) {
                        return;
                    }
                    Session session = this.session;
                    Location location = z2 ? session.remoteState.gpsRequest().location() : session.parameters.lastLocation;
                    Metadata metadataCreate = Metadata.create(this.call, this.session, strCaseReportId, origin2, usecase, savePicture, location != null ? location.getLatitude() : 0.0d, location != null ? location.getLongitude() : 0.0d);
                    playShutterSound();
                    toastPicture(bitmap);
                    new SaveMediaAndRecycleTask(getApplicationContext(), bitmap, metadataCreate, i2).execute(new Void[0]);
                    return;
                }
                if (VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoProducerProducer)) {
                    bitmapSnapshot2 = this.callViewModel.getVideoPlayerWrapper().snapshot();
                    origin3 = Metadata.Origin.VIDEO;
                } else {
                    if (!z) {
                        logger.w("Unsupported Video producer for saveMedia: " + videoProducerProducer);
                        return;
                    }
                    bitmapSnapshot2 = ((MyVideoProducerCameraView) videoProducerProducer).snapshot();
                    origin3 = Metadata.Origin.CAMERA;
                }
            }
            origin2 = origin;
            bitmap = bitmapSnapshot;
            if (bitmap != null) {
            }
        }
        bitmapSnapshot2 = this.progressivexImageView.snapshot();
        ScreenshareProducerMode screenshareProducerMode = this.parameters.screenshareProducerMode;
        int[] iArr = AnonymousClass10.$SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode;
        if (screenshareProducerMode == null) {
            screenshareProducerMode = ScreenshareProducerMode.INVALID;
        }
        int i3 = iArr[screenshareProducerMode.ordinal()];
        origin3 = (i3 == 1 || i3 == 2) ? Metadata.Origin.PHOTO : Metadata.Origin.PICTURE;
        origin2 = origin3;
        bitmap = bitmapSnapshot2;
        z2 = false;
        if (bitmap != null) {
        }
    }

    private void saveVideoState() {
        VideoModule videoModuleVideo = this.call.video();
        this.isVideoStateOn = videoModuleVideo.isSending() && (videoModuleVideo.producer() instanceof MyVideoProducerCameraView);
    }

    private void seekPlayer(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            int i2 = Integer.parseInt(str);
            if (this.call.video().isSending() && VideoProducerExtensionsKt.isMyVideoProducerPlayerView(getVideoProducer())) {
                this.callViewModel.getVideoPlayerWrapper().seekToRelative(i2);
                this.callViewModel.getVideoPlayerWrapper().showBar();
            }
        } catch (NumberFormatException e2) {
            logger.e(e2);
        }
    }

    private static boolean shouldFinish(Call call) {
        Step step;
        Rtcc.Status status;
        Scenario scenario = Universal.scenario().get();
        return scenario == null || (step = scenario.step()) == null || !(step instanceof CallStep) || ((CallStep) step).session() == null || (status = Rtcc.instance().status()) == Rtcc.Status.DISCONNECTING || status == Rtcc.Status.IDLE || call == null || call.status() == Call.Status.ENDED;
    }

    private static boolean shouldKeepButtonBarDisplayed(Call call, Session session) {
        if (call != null && call.status() == Call.Status.ACTIVE && session != null) {
            VideoModule videoModuleVideo = call.video();
            ScreenshareModule screenshareModuleScreenshare = call.screenshare();
            if (videoModuleVideo.isSending() || videoModuleVideo.isReceiving() || screenshareModuleScreenshare.isReceiving()) {
                return false;
            }
            if (screenshareModuleScreenshare.isSending()) {
                return (screenshareModuleScreenshare.producer() instanceof ScreenCastOverlay) && session.parameters.screenshareProducerMode == ScreenshareProducerMode.SCREEN;
            }
            return true;
        }
        return false;
    }

    private void showAndHideSystemUi() {
        SystemUiHelper systemUiHelper = this.systemUiHelper;
        if (systemUiHelper == null) {
            return;
        }
        systemUiHelper.show();
        if (shouldKeepButtonBarDisplayed(this.call, this.session)) {
            return;
        }
        this.systemUiHelper.delayHide(getResources().getInteger(R.integer.universal_call_button_bar_timeout_millis));
    }

    private void showCollimator(boolean z) {
        VideoModule videoModuleVideo = this.call.video();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        if (videoModuleVideo.isSending() && (videoProducerProducer instanceof MyVideoProducerCameraView)) {
            this.myVideoProducerWrapper.showCollimator(z);
        }
    }

    private void showShareMediaDialog() {
        DataChannelAction.SELECTING_MEDIA.send(this.dc);
        Session session = this.session;
        if (session != null) {
            session.parameters.isSharePromptDisplayed = true;
        }
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onShareStarted(this.session);
        ShareMediaDialog.INSTANCE.show(this, new ei(this, 0));
    }

    private void snapshot() {
        VideoModule videoModuleVideo = this.call.video();
        if (videoModuleVideo.isSending()) {
            VideoProducer videoProducerProducer = videoModuleVideo.producer();
            if (videoProducerProducer instanceof MyVideoProducerCameraView) {
                ((MyVideoProducerCameraView) videoProducerProducer).requestSnapshot();
            }
        }
    }

    public static void start(Context context) {
        context.startActivity(startIntent(context));
    }

    public static Intent startIntent(Context context) {
        Intent intent = new Intent(context, (Class<?>) CallActivity.class);
        intent.addFlags(335544320);
        return intent;
    }

    private void startLiveQr() {
        MyVideoProducerCameraView videoProducerCameraView = getVideoProducerCameraView();
        if (videoProducerCameraView == null) {
            return;
        }
        videoProducerCameraView.startLiveQr();
    }

    private void startLiveTranslation() {
        this.call.startTranslation();
        DataChannelAction.RTCC_RESPONSE_TRANSLATION.send(LiveTranslationResponse.INSTANCE.toJson(new LiveTranslationResponse(true, true, null)));
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onLiveTranslationStart(this.session);
    }

    private void startLocationService() {
        this.callViewModel.startLocationService(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPhotoFromCamera() {
        VideoModule videoModuleVideo = this.call.video();
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        if (videoModuleVideo.isSending() && (videoProducerProducer instanceof MyVideoProducerCameraView)) {
            this.myVideoProducerWrapper.setVisibility(8);
            videoModuleVideo.releaseProducer();
            this.videoProducerCameraView.postDelayed(new fi(this, 0), 500L);
        } else {
            DataChannelAction.SELECTING_PHOTO.send(this.dc);
            this.parameters.isShareViewFinderDisplayed = true;
            MediaCaptureFragment mediaCaptureFragmentForCameraPhoto = StartMediaCapture.INSTANCE.forCameraPhoto();
            MediaCaptureFragment.INSTANCE.setResultListener(new ei(this, 2));
            addFragment(mediaCaptureFragmentForCameraPhoto);
        }
    }

    private void startPhotoFromGallery() {
        MediaCaptureFragment mediaCaptureFragmentForGalleryPhoto = StartMediaCapture.INSTANCE.forGalleryPhoto();
        MediaCaptureFragment.INSTANCE.setResultListener(new ei(this, 3));
        DataChannelAction.SELECTING_PICTURE.send(this.dc);
        this.parameters.isSharePictureGalleryDisplayed = true;
        addFragment(mediaCaptureFragmentForGalleryPhoto);
    }

    private void startScreenCastWithMediaProjection() {
        this.screenCastRepository.bindService(new ei(this, 4));
    }

    private void startScreencast() {
        startScreenCastWithMediaProjection();
    }

    private void startShareWeb(String str) {
        if (TextUtils.isEmpty(str) || this.call.screenshare().isReceiving()) {
            return;
        }
        MyScreenshareProducerWebView myScreenshareProducerWebView = this.screenshareProducerWebView;
        JSHookAop.loadUrl(myScreenshareProducerWebView, str);
        myScreenshareProducerWebView.loadUrl(str);
        CallParameters callParameters = this.parameters;
        callParameters.screenshareProducerMode = ScreenshareProducerMode.WEB;
        callParameters.screenshareWebUrl = str;
        if (Utils.requestScreenshareWithOrWithoutVideo(this.session, this.call)) {
            DataChannelAction.STARTED_SHARE.send(this.dc);
            updateAll();
        }
    }

    private void startStopCamera(boolean z, boolean z2) {
        final VideoModule videoModuleVideo = this.call.video();
        boolean zIsSending = videoModuleVideo.isSending();
        if (z) {
            if (zIsSending) {
                DataChannelAction.STARTED_CAMERA.send(this.dc);
                return;
            } else {
                if (!z2) {
                    AcceptDenyDialog.show(getSupportFragmentManager(), 1, new AcceptDenyDialog.OnAcceptDenyCallback() { // from class: com.sightcall.universal.internal.ui.CallActivity.6
                        @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                        public void onAccept() {
                            videoModuleVideo.start();
                            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCameraStarted(CallActivity.this.session);
                            CallActivity.this.callViewModel.setShouldRestartCamera(true);
                        }

                        @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                        public void onDeny() {
                        }
                    });
                    return;
                }
                videoModuleVideo.start();
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCameraStarted(this.session);
                this.callViewModel.setShouldRestartCamera(true);
                return;
            }
        }
        if (!zIsSending) {
            DataChannelAction.STOPPED_CAMERA.send(this.dc);
            return;
        }
        VideoProducer videoProducerProducer = videoModuleVideo.producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            ((MyVideoProducerCameraView) videoProducerProducer).resetZoom();
        } else if (videoProducerProducer instanceof UvcProducer) {
            ((UvcProducer) videoProducerProducer).resetZoom();
        }
        videoModuleVideo.stop();
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCameraStopped(this.session);
        this.callViewModel.setShouldRestartCamera(false);
    }

    private void startStopHold(boolean z) {
        VideoModule videoModuleVideo = this.call.video();
        if (videoModuleVideo.isSending()) {
            VideoProducer videoProducerProducer = videoModuleVideo.producer();
            MyVideoProducer myVideoProducer = videoProducerProducer instanceof MyVideoProducer ? (MyVideoProducer) videoProducerProducer : null;
            if (myVideoProducer == null) {
                return;
            }
            boolean zIsPaused = myVideoProducer.isPaused();
            if (z) {
                if (zIsPaused) {
                    DataChannelAction.STARTED_HOLD.send(this.dc);
                    return;
                } else {
                    myVideoProducer.pause();
                    CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCameraPaused(this.session);
                    return;
                }
            }
            if (!zIsPaused) {
                DataChannelAction.STOPPED_HOLD.send(this.dc);
            } else {
                myVideoProducer.resume();
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCameraResumed(this.session);
            }
        }
    }

    private void startStopLight(boolean z) {
        VideoModule videoModuleVideo = this.call.video();
        if (videoModuleVideo.isSending()) {
            VideoProducer videoProducerProducer = videoModuleVideo.producer();
            if (videoProducerProducer instanceof MyVideoProducerCameraView) {
                ((MyVideoProducerCameraView) videoProducerProducer).setFlashEnabled(z);
                (z ? DataChannelAction.STARTED_LIGHT : DataChannelAction.STOPPED_LIGHT).send(this.dc);
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onTorch(this.session, z);
            }
        }
    }

    private void startVideoFromGallery() {
        MediaCaptureFragment mediaCaptureFragmentForGalleryVideo = StartMediaCapture.INSTANCE.forGalleryVideo();
        MediaCaptureFragment.INSTANCE.setResultListener(new ei(this, 1));
        DataChannelAction.SELECTING_VIDEO.send(this.dc);
        this.parameters.isShareVideoGalleryDisplayed = true;
        addFragment(mediaCaptureFragmentForGalleryVideo);
    }

    private static Step step() {
        return Universal.scenario().step();
    }

    private void stopGlobalShare() {
        VideoModule videoModuleVideo = this.call.video();
        if (videoModuleVideo.isSending() && VideoProducerExtensionsKt.isMyVideoProducerPlayerView(videoModuleVideo.producer())) {
            stopPlayer();
            return;
        }
        if (!this.call.screenshare().isSending()) {
            updateAll();
            return;
        }
        CallParameters callParameters = this.parameters;
        ScreenshareProducerMode screenshareProducerMode = callParameters.screenshareProducerMode;
        if (screenshareProducerMode == null || screenshareProducerMode == ScreenshareProducerMode.INVALID) {
            return;
        }
        callParameters.screenshareProducerMode = null;
        int i2 = AnonymousClass10.$SwitchMap$com$sightcall$universal$internal$ui$ScreenshareProducerMode[screenshareProducerMode.ordinal()];
        int i3 = 3;
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            this.parameters.screenshareContentUri = null;
        } else if (i2 == 4) {
            this.screenshareProducerWebView.unloadUrl();
            this.parameters.screenshareWebUrl = null;
        } else if (i2 == 5) {
            ScreenCastOverlay.unload(this);
        }
        ScreenShareServiceKt.resumePendingScreenShareOrStop(this.call, this.session, new di(this, i3));
    }

    private void stopLiveQr() {
        MyVideoProducerCameraView videoProducerCameraView = getVideoProducerCameraView();
        if (videoProducerCameraView == null) {
            return;
        }
        videoProducerCameraView.stopLiveQr();
    }

    private void stopLiveTranslation() {
        this.call.stopTranslation();
        DataChannelAction.RTCC_RESPONSE_TRANSLATION.send(LiveTranslationResponse.INSTANCE.toJson(new LiveTranslationResponse(true, false, null)));
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onLiveTranslationStopped(this.session);
    }

    private void stopPicture() {
        if (!ProgressivexImageView.isRunning()) {
            DataChannelAction.STOPPED_PICTURE.send(this.dc);
            return;
        }
        this.progressivexImageView.stop();
        this.parameters.screenshareContentUri = null;
        handleVideoStateAfterShare();
    }

    private void stopPlayer() {
        if (this.call.video().isSending() && VideoProducerExtensionsKt.isMyVideoProducerPlayerView(getVideoProducer())) {
            this.callViewModel.getVideoPlayerWrapper().reset();
            this.callViewModel.getVideoPlayerWrapper().unloadUri();
            updateAll();
        }
    }

    private void stopShare() {
        DataChannelAction.STOP_PICTURE.send();
        DataChannelAction.STOP_SNAPSHOT.send();
        this.screenCastRepository.unBindService();
        if (this.call.screenshare().isReceiving() && this.remoteState.isSharingScreen()) {
            DataChannelAction.STOP_SCREENCAST.send();
        }
        if (!ProgressivexImageView.isRunning()) {
            stopGlobalShare();
            return;
        }
        this.progressivexImageView.stop();
        this.parameters.screenshareContentUri = null;
        restartVideo();
    }

    private void stopShareWeb() {
        ScreenshareModule screenshareModuleScreenshare = this.call.screenshare();
        ScreenshareProducer screenshareProducerProducer = screenshareModuleScreenshare.producer();
        boolean zIsSending = screenshareModuleScreenshare.isSending();
        ScreenshareProducerMode screenshareProducerMode = this.parameters.screenshareProducerMode;
        if (!zIsSending || !(screenshareProducerProducer instanceof MyScreenshareProducerWebView) || screenshareProducerMode != ScreenshareProducerMode.WEB) {
            DataChannelAction.STOPPED_SHARE.send(this.dc);
            return;
        }
        ((MyScreenshareProducerWebView) screenshareProducerProducer).unloadUrl();
        CallParameters callParameters = this.parameters;
        callParameters.screenshareWebUrl = null;
        callParameters.screenshareProducerMode = null;
        ScreenShareServiceKt.resumePendingScreenShareOrStop(this.call, this.session, new di(this, 4));
    }

    private void switchCameraSource(VideoModule.CameraSource cameraSource) {
        if (cameraSource == null) {
            return;
        }
        VideoProducer videoProducerProducer = this.call.video().producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            MyVideoProducerCameraView myVideoProducerCameraView = (MyVideoProducerCameraView) videoProducerProducer;
            VideoModule.CameraSource source = myVideoProducerCameraView.getSource();
            if (source == null || source.isFront() != cameraSource.isFront()) {
                myVideoProducerCameraView.setSource(cameraSource);
                updateAll();
            }
            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onCameraSwitch(this.session, cameraSource.isFront());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Unit switchUserUi() {
        VideoModule.CameraSource cameraSource;
        Session session = this.session;
        Usecase.User user = session.usecase.user(session.config);
        if (ProgressivexImageView.isRunning()) {
            this.progressivexImageView.stop();
        }
        Participant participantMyself = this.call.conference().myself();
        this.call.audio().muteRecorder(user.muted);
        participantMyself.mute(user.muted);
        this.callButtonBar.build(this.session, false);
        VideoModule videoModuleVideo = this.call.video();
        if (user.camera) {
            if (user.videoCapture == Usecase.VideoCapture.FRONT && CameraUtilsKt.isCameraAvailable(0)) {
                cameraSource = VideoModule.CameraSource.FRONT;
            } else {
                cameraSource = CameraUtilsKt.isCameraAvailable(1) ? VideoModule.CameraSource.BACK : null;
            }
            if (cameraSource != null) {
                videoModuleVideo.start();
                new Handler(Looper.getMainLooper()).postDelayed(new b5(this, videoModuleVideo, cameraSource, 5), 500L);
            }
        } else {
            videoModuleVideo.stop();
        }
        updateAll();
        return Unit.f71739a;
    }

    private void toastPicture(Bitmap bitmap) {
        int iRound;
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.universal_toast_thumbnail_size);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (height == 0 || width == 0) {
            return;
        }
        float f2 = height / width;
        if (width == height) {
            iRound = dimensionPixelSize;
        } else if (width > height) {
            iRound = Math.round(dimensionPixelSize * f2);
        } else {
            iRound = dimensionPixelSize;
            dimensionPixelSize = Math.round(dimensionPixelSize / f2);
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, dimensionPixelSize, iRound, false);
        View viewInflate = getLayoutInflater().inflate(R.layout.universal_toast_picture_saved, (ViewGroup) findViewById(R.id.container));
        ((ImageView) viewInflate.findViewById(R.id.image)).setImageBitmap(bitmapCreateScaledBitmap);
        Toast toast = new Toast(getApplicationContext());
        toast.setGravity(17, 0, 0);
        toast.setDuration(0);
        toast.setView(viewInflate);
        toast.show();
    }

    private void toggleSystemUi() {
        SystemUiHelper systemUiHelper = this.systemUiHelper;
        if (systemUiHelper == null) {
            return;
        }
        if (systemUiHelper.isShowing()) {
            this.systemUiHelper.hide();
        } else {
            showAndHideSystemUi();
        }
    }

    private void unlockOrientationScreen() {
        if (this.isScreenOrientationLocked) {
            this.isScreenOrientationLocked = false;
            setRequestedOrientation(-1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateAll() {
        if (this.lifecycle == Lifecycle.DESCENDING) {
            return;
        }
        ViewOrder.reorderIfNeeded(this.session, this.call, this.rootView, this.videoConsumerView, this.videoConsumerThumbnailContainer, this.myVideoProducerWrapper, this.advancedAnnotationsContainer);
        updateProgressivex();
        updateVideoProducer();
        updateVideoConsumers();
        updateScreenshareConsumer();
        updateScreenshareProducer();
        updateCallButtonBar();
        updateLabels();
    }

    private void updateFloatingContainers() {
        this.videoConsumerView.onVisibilityChange();
        this.videoConsumerThumbnailContainer.onVisibilityChange();
        this.myVideoProducerWrapper.onVisibilityChange();
    }

    private void updateLabels() {
        boolean z = this.call.status() == Call.Status.ACTIVE;
        VideoModule videoModuleVideo = this.call.video();
        ScreenshareModule screenshareModuleScreenshare = this.call.screenshare();
        boolean z2 = !videoModuleVideo.isSending() && !videoModuleVideo.isReceiving() && !screenshareModuleScreenshare.isReceiving() && screenshareModuleScreenshare.isSending() && (screenshareModuleScreenshare.producer() instanceof ScreenCastOverlay) && this.session.parameters.screenshareProducerMode == ScreenshareProducerMode.SCREEN;
        boolean z3 = (videoModuleVideo.isSending() || videoModuleVideo.isReceiving() || screenshareModuleScreenshare.isReceiving() || screenshareModuleScreenshare.isSending() || ProgressivexImageView.isRunning()) ? false : true;
        applyVisibilityWithDelayedFadeIn(this.callStatusScreencasting, (z && z2) ? 0 : 8);
        applyVisibilityWithDelayedFadeIn(this.callStatusNoMedia, (z && z3) ? 0 : 8);
    }

    private void updateProgressivex() {
        this.progressivexImageView.setVisibility(ProgressivexImageView.isRunning() ? 0 : 8);
    }

    private void updateScreenshareConsumer() {
        boolean zIsReceiving = this.call.screenshare().isReceiving();
        this.myScreenshareConsumerView.setVisibility(zIsReceiving ? 0 : 8);
        if (zIsReceiving) {
            this.myScreenshareConsumerView.setDrawingZoneListener(new gi(this, 3));
            this.call.screenshare().consumer(this.myScreenshareConsumerView);
        }
    }

    private void updateScreenshareProducer() {
        ScreenshareModule screenshareModuleScreenshare = this.call.screenshare();
        boolean zIsSending = screenshareModuleScreenshare.isSending();
        boolean zIsWeb = ScreenshareProducerMode.isWeb(this.parameters.screenshareProducerMode);
        this.screenshareProducerWebView.setVisibility((zIsSending && zIsWeb) ? 0 : 8);
        if (zIsWeb) {
            eraseVideoDrawings();
            if (zIsSending) {
                screenshareModuleScreenshare.producer(this.screenshareProducerWebView);
            }
        }
    }

    private void updateVideoConsumers() {
        ConferenceModule conferenceModuleConference = this.call.conference();
        boolean zIsConference = this.call.isConference();
        boolean zIsReceiving = this.call.video().isReceiving();
        Participant[] participantArrParticipants = conferenceModuleConference.participants();
        int length = participantArrParticipants.length;
        boolean zCanMainVideoConsumerGoThumbnail = Utils.canMainVideoConsumerGoThumbnail(this.session, this.call);
        int i2 = zCanMainVideoConsumerGoThumbnail ? length : length - 1;
        boolean z = zIsReceiving && (!zIsConference || (!zCanMainVideoConsumerGoThumbnail && length > 0));
        this.videoConsumerView.setVisibility(z ? 0 : 8);
        if (z) {
            if (!zIsConference) {
                Participant participant = this.call.participant();
                if (participant != null) {
                    participant.videoConsumer(this.videoConsumerView);
                }
            } else if (participantArrParticipants.length > 0) {
                participantArrParticipants[0].videoConsumer(this.videoConsumerView);
            }
            this.videoConsumerView.updatePosition();
        }
        if (zIsConference) {
            this.videoConsumerThumbnailContainer.setVisibility(i2 > 0 && this.call.video().isReceiving() ? 0 : 8);
            this.videoConsumerThumbnailContainer.updateConsumers(participantArrParticipants, zCanMainVideoConsumerGoThumbnail);
            this.videoConsumerThumbnailContainer.updatePosition();
        }
    }

    private void updateVideoProducer() {
        boolean zHasPermission;
        boolean z;
        boolean z2 = this.parameters.videoStopPending;
        VideoModule videoModuleVideo = this.call.video();
        boolean z3 = true;
        boolean z4 = videoModuleVideo.isSending() && !z2;
        Uri uri = this.callViewModel.getVideoPlayerWrapper().getUri();
        Device device = DeviceManager.instance(this).getDevice();
        if (uri != null) {
            z = true;
            zHasPermission = false;
            z3 = false;
        } else if (device == null || !this.parameters.allowUsbCamera) {
            zHasPermission = false;
            z = false;
        } else {
            zHasPermission = device.hasPermission();
            z3 = false;
            z = false;
        }
        if (!z4) {
            videoModuleVideo.releaseProducer();
        }
        this.videoProducerCameraView.setVisibility((z4 && z3) ? 0 : 8);
        if (z3 && z4) {
            this.myVideoProducerWrapper.setActiveProducer(this.videoProducerCameraView);
            videoModuleVideo.producer(this.videoProducerCameraView);
            if (!this.callViewModel.getShouldRestartCamera()) {
                videoModuleVideo.stop();
            }
        }
        this.uvcPreview.setVisibility((z4 && zHasPermission) ? 0 : 8);
        if (zHasPermission && z4) {
            Step step = step();
            if (step instanceof CallStep) {
                UvcProducer uvcProducer = ((CallStep) step).getUvcProducer();
                if (uvcProducer != null) {
                    this.uvcPreview.restore(uvcProducer);
                    uvcProducer.setOnCameraCallback(this);
                }
                this.myVideoProducerWrapper.setActiveProducer(uvcProducer);
                videoModuleVideo.producer(uvcProducer);
                this.uvcPreview.trigger();
            }
        }
        this.callViewModel.getVideoPlayerWrapper().setVisibility((z4 && z) ? 0 : 8);
        if (z && z4) {
            this.myVideoProducerWrapper.setActiveProducer(this.callViewModel.getVideoPlayerWrapper().getVideoProducer());
            videoModuleVideo.producer(this.callViewModel.getVideoPlayerWrapper().getVideoProducer());
        }
        this.myVideoProducerWrapper.setVisibility(z4 ? 0 : 8);
        this.myVideoProducerWrapper.updatePosition();
    }

    private void zoomCamera(float f2) {
        if (this.call.video().isSending()) {
            VideoProducer videoProducer = getVideoProducer();
            if (videoProducer instanceof MyVideoProducerCameraView) {
                MyVideoProducerCameraView myVideoProducerCameraView = (MyVideoProducerCameraView) videoProducer;
                if (myVideoProducerCameraView.isPaused() || !myVideoProducerCameraView.isZoomAvailable()) {
                    return;
                }
                myVideoProducerCameraView.setZoom(f2);
            }
        }
    }

    private void zoomedCamera() {
        if (this.call.video().isReceiving()) {
            this.videoConsumerView.updateCameraZoom();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001a  */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61 && keyCode != 66 && keyCode != 82) {
                switch (keyCode) {
                    case 21:
                    case 22:
                    case 23:
                        showAndHideSystemUi();
                        break;
                }
            } else {
                showAndHideSystemUi();
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0011  */
    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                if (!this.dispatchTouchEventIgnore && motionEvent.getEventTime() - motionEvent.getDownTime() < ViewConfiguration.getTapTimeout() && Math.max(Math.abs(this.dispatchTouchEventInitialX - motionEvent.getRawX()), Math.abs(this.dispatchTouchEventInitialY - motionEvent.getRawY())) < this.dispatchTouchEventSlop) {
                    toggleSystemUi();
                }
                this.dispatchTouchEventIgnore = false;
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    if (!this.dispatchTouchEventIgnore) {
                        toggleSystemUi();
                    }
                    this.dispatchTouchEventIgnore = false;
                }
            }
            return super.dispatchTouchEvent(motionEvent);
        }
        this.dispatchTouchEventInitialX = motionEvent.getRawX();
        this.dispatchTouchEventInitialY = motionEvent.getRawY();
        if (!this.dispatchTouchEventIgnore) {
            if (motionEvent.getEventTime() - motionEvent.getDownTime() > ViewConfiguration.getTapTimeout()) {
                this.dispatchTouchEventIgnore = true;
            } else {
                int rawX = (int) motionEvent.getRawX();
                int rawY = (int) motionEvent.getRawY();
                if (com.sightcall.universal.util.ViewUtils.isHit(this.callButtonBar, rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation) || com.sightcall.universal.util.ViewUtils.isHit(this.callButtonBarRemote, rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation) || ((this.callViewModel.getVideoPlayerWrapper().getVideoPlayerBarView() != null && com.sightcall.universal.util.ViewUtils.isHit(this.callViewModel.getVideoPlayerWrapper().getVideoPlayerBarView(), rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation)) || this.messagesOverlay.isHit(motionEvent) || (com.sightcall.universal.util.ViewUtils.isHit(this.screenshareProducerWebView, rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation) && !com.sightcall.universal.util.ViewUtils.isHit(this.myVideoProducerWrapper, rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation) && !com.sightcall.universal.util.ViewUtils.isHit(this.videoConsumerView, rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation) && !com.sightcall.universal.util.ViewUtils.isHit(this.videoConsumerThumbnailContainer, rawX, rawY, this.dispatchTouchEventRect, this.dispatchTouchEventLocation)))) {
                    this.dispatchTouchEventIgnore = true;
                }
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.coordinator.backPressed()) {
            return;
        }
        ScreenshareModule screenshareModuleScreenshare = this.call.screenshare();
        ScreenshareProducer screenshareProducerProducer = screenshareModuleScreenshare.producer();
        if (screenshareModuleScreenshare.isSending() && (screenshareProducerProducer instanceof MyScreenshareProducerWebView)) {
            ((MyScreenshareProducerWebView) screenshareProducerProducer).onBackPressed();
        }
        showAndHideSystemUi();
        CallParameters callParameters = this.parameters;
        if (callParameters.isShareViewFinderDisplayed) {
            callParameters.isShareViewFinderDisplayed = false;
            onRequestPhotoError();
            getSupportFragmentManager().V();
        } else if (callParameters.isSharePictureGalleryDisplayed) {
            callParameters.isSharePictureGalleryDisplayed = false;
            DataChannelAction.CANCELLED_PICTURE.send(this.dc);
            getSupportFragmentManager().V();
        } else if (callParameters.isShareVideoGalleryDisplayed) {
            callParameters.isShareVideoGalleryDisplayed = false;
            DataChannelAction.CANCELLED_VIDEO.send(this.dc);
            getSupportFragmentManager().V();
        }
    }

    @Override // com.sightcall.universal.internal.view.CallButtonBar.Listener
    public void onCallButtonClick(CallButtonImageView callButtonImageView, CallButton callButton, boolean z) {
        logger.i("onCallButtonClick(" + callButton.name() + ")");
        showAndHideSystemUi();
        if (this.call == null) {
            if (callButton == CallButton.HANGUP) {
                Universal.scenario().interrupt();
            }
        } else {
            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onUserAction(this.session, callButton, z, this.call, this.remoteState);
            if (z) {
                onCallButtonClickRemote(callButtonImageView, callButton);
            } else {
                onCallButtonClickLocal(callButton);
            }
            updateCallButtonBar();
        }
    }

    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        int i2 = AnonymousClass10.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()];
        if (i2 == 4) {
            (this.call.audio().isRecorderMuted() ? DataChannelAction.STARTED_MUTE : DataChannelAction.STOPPED_MUTE).send();
        } else {
            if (i2 != 5) {
                return;
            }
            this.progressivexImageView.stop();
            finishAndRemoveTaskOrFinishAffinity();
        }
    }

    @Override // net.rtccloud.sdk.internal.view.VideoProducerCameraView.OnCameraCallback
    public void onCameraPause() {
        eraseVideoDrawings();
        updateCallButtonBar();
        UiUtils.lockOrientation(this);
    }

    @Override // net.rtccloud.sdk.internal.view.VideoProducerCameraView.OnCameraCallback
    public void onCameraResume() {
        eraseVideoDrawings();
        updateCallButtonBar();
        UiUtils.requestOrientation(this, 4);
    }

    @Override // com.sightcall.universal.internal.view.MyVideoProducerCameraView.OnCameraCallback
    public void onCameraSnapshot(File file) {
        onActivityResultPicture(Uri.fromFile(file));
    }

    @Override // net.rtccloud.sdk.internal.view.VideoProducerCameraView.OnCameraCallback
    public void onCameraStart() {
        eraseVideoDrawings();
        updateCallButtonBar();
        UiUtils.requestOrientation(this, 4);
    }

    @Override // net.rtccloud.sdk.internal.view.VideoProducerCameraView.OnCameraCallback
    public void onCameraStop() {
        updateCallButtonBar();
        UiUtils.requestOrientation(this, 4);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (SDKInjector.getSdkInjector().getCallComponent() == null) {
            finishAndRemoveTaskOrFinishAffinity();
            return;
        }
        SDKInjector.getSdkInjector().getCallComponent().inject(this);
        this.screenCastRepository = new ScreenCastRepositoryImpl(this);
        manageActivityResult();
        this.callViewModel = (CallViewModel) new ViewModelProvider(this, this.callViewModelFactory).a(Reflection.f71922a.b(CallViewModel.class));
        this.lifecycle = Lifecycle.ASCENDING;
        Rtcc rtccInstance = Rtcc.instance();
        Call call = rtccInstance.call().get();
        this.call = call;
        if (shouldFinish(call)) {
            finishAndRemoveTaskOrFinishAffinity();
            return;
        }
        final int i2 = 0;
        setVolumeControlStream(0);
        com.sightcall.universal.util.Utils.applySecureFlag(this);
        Session session = this.callViewModel.getSession();
        this.session = session;
        this.parameters = session != null ? session.parameters : null;
        this.remoteState = session != null ? session.remoteState : new RemoteState();
        this.dc = rtccInstance.dataChannel();
        this.messaging = Messaging.from(rtccInstance, this.call);
        UiUtils.enableJumpcutRotationAnimation(getWindow());
        this.liveTranslationAPI = SDKInjector.getSdkInjector().getReferenceComponent().getLiveTranslationAPI();
        this.coordinator.start();
        createUi(bundle);
        if (this.liveTranslationAPI.getAutoTranslate().isAutoTranslateActive().booleanValue()) {
            initiateAndActivateLiveSentencesCoordinator();
            startLiveTranslation();
        }
        CompositeDisposable compositeDisposable = this.disposables;
        Observable<Boolean> observableDistinctUntilChanged = this.liveTranslationAPI.getVisible().distinctUntilChanged();
        Scheduler scheduler = AndroidSchedulers.f70017a;
        if (scheduler == null) {
            r81.d("scheduler == null");
            return;
        }
        compositeDisposable.b(observableDistinctUntilChanged.subscribeOn(scheduler).subscribe(new gi(this, i2)));
        getSupportFragmentManager().a0(new FragmentManager.FragmentLifecycleCallbacks() { // from class: com.sightcall.universal.internal.ui.CallActivity.1
            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentDetached(FragmentManager fragmentManager, Fragment fragment) {
                RealWearUtilsKt.updateHelpVoiceCommands(CallActivity.this.getApplicationContext(), CallActivity.this.session.buttonsLocal());
            }
        });
        this.callViewModel.getMediaCaptureEventFromGallery().observe(this, new Observer(this) { // from class: ii

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CallActivity f69979c;

            {
                this.f69979c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i3 = i2;
                CallActivity callActivity = this.f69979c;
                Result result = (Result) obj;
                switch (i3) {
                    case 0:
                        callActivity.executeMediaCaptureEventFromGallery(result);
                        break;
                    case 1:
                        callActivity.executeMediaCaptureEventFromCamera(result);
                        break;
                    default:
                        callActivity.executeMediaCaptureVideoFromGalleryObserver(result);
                        break;
                }
            }
        });
        final int i3 = 1;
        this.callViewModel.getMediaCaptureEventFromCamera().observe(this, new Observer(this) { // from class: ii

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CallActivity f69979c;

            {
                this.f69979c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i4 = i3;
                CallActivity callActivity = this.f69979c;
                Result result = (Result) obj;
                switch (i4) {
                    case 0:
                        callActivity.executeMediaCaptureEventFromGallery(result);
                        break;
                    case 1:
                        callActivity.executeMediaCaptureEventFromCamera(result);
                        break;
                    default:
                        callActivity.executeMediaCaptureVideoFromGalleryObserver(result);
                        break;
                }
            }
        });
        final int i4 = 2;
        this.callViewModel.getMediaCaptureEventVideoFromGallery().observe(this, new Observer(this) { // from class: ii

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CallActivity f69979c;

            {
                this.f69979c = this;
            }

            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                int i5 = i4;
                CallActivity callActivity = this.f69979c;
                Result result = (Result) obj;
                switch (i5) {
                    case 0:
                        callActivity.executeMediaCaptureEventFromGallery(result);
                        break;
                    case 1:
                        callActivity.executeMediaCaptureEventFromCamera(result);
                        break;
                    default:
                        callActivity.executeMediaCaptureVideoFromGalleryObserver(result);
                        break;
                }
            }
        });
        callActivityInstance = new WeakReference<>(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.lifecycle = Lifecycle.DESCENDING;
        SystemUiHelper systemUiHelper = this.systemUiHelper;
        if (systemUiHelper != null) {
            systemUiHelper.removeQueuedRunnables();
            this.systemUiHelper = null;
        }
        ViewGroup viewGroup = this.advancedAnnotationsContainer;
        if (viewGroup != null && viewGroup.getParent() != null) {
            ((ViewGroup) this.advancedAnnotationsContainer.getParent()).removeView(this.advancedAnnotationsContainer);
        }
        AdvancedAnnotationsWrapper advancedAnnotationsWrapper = this.advancedAnnotationsWrapper;
        if (advancedAnnotationsWrapper != null) {
            advancedAnnotationsWrapper.setAnchor(null);
        }
        CallCoordinatorImpl callCoordinatorImpl = this.coordinator;
        if (callCoordinatorImpl != null) {
            callCoordinatorImpl.release();
        }
        callActivityInstance = null;
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceAttached(Device device) {
        Logger.INSTANCE.d("onDeviceAttached() called with: device = [" + device + "]", null);
        Utils.requestUsbCameraIfNeeded(this, this.call, this.parameters);
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDeviceDetached(Device device) {
        Universal.uiHandler().post(new Runnable() { // from class: com.sightcall.universal.internal.ui.CallActivity.7
            @Override // java.lang.Runnable
            public void run() {
                CallActivity.this.updateAll();
            }
        });
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionDenied(Device device) {
    }

    @Override // com.sightcall.uvc.DeviceListener
    public void onDevicePermissionGranted(Device device) {
        Logger.INSTANCE.d("onDevicePermissionGranted() called with: device = [" + device + "]", null);
        Universal.uiHandler().post(new Runnable() { // from class: com.sightcall.universal.internal.ui.CallActivity.8
            @Override // java.lang.Runnable
            public void run() {
                CallActivity.this.updateAll();
            }
        });
    }

    @Event
    public void onFloorEvent(FloorEvent floorEvent) {
        updateVideoConsumers();
    }

    public void onForwardInbandDataChannel(DataChannelAction dataChannelAction, final String str) {
        String string;
        int i2 = 1;
        switch (AnonymousClass10.$SwitchMap$com$sightcall$common$DataChannelAction[dataChannelAction.ordinal()]) {
            case 1:
                new Handler().postDelayed(new fi(this, i2), 100L);
                break;
            case 2:
                startStopHold(true);
                break;
            case 3:
                eraseVideoDrawings();
                this.videoConsumerView.paused();
                break;
            case 4:
                startStopHold(false);
                break;
            case 5:
                eraseVideoDrawings();
                this.videoConsumerView.resumed();
                break;
            case 6:
                startStopLight(true);
                break;
            case 7:
                startStopLight(false);
                break;
            case 8:
                startShareWeb(str);
                break;
            case 9:
                stopShareWeb();
                stopPlayer();
                stopGlobalShare();
                break;
            case 10:
                startStopCamera(true, false);
                break;
            case 11:
                startStopCamera(false, false);
                break;
            case 12:
                showShareMediaDialog();
                break;
            case 13:
                stopPicture();
                break;
            case 14:
                seekPlayer(str);
                return;
            case 15:
                resumePlayer();
                break;
            case 16:
                eraseVideoDrawings();
                break;
            case 17:
                pausePlayer();
                break;
            case 18:
                eraseVideoDrawings();
                break;
            case 19:
                stopPlayer();
                break;
            case 20:
                onRequestPhotoFromCamera();
                break;
            case 21:
                onRequestPhotoFromGallery();
                break;
            case 22:
                onRequestVideoFromGallery();
                break;
            case 23:
                startScreencast();
                break;
            case 24:
                this.screenCastRepository.unBindService();
                ScreenShareServiceKt.stopScreenCast(this, this.call, this.session, this.dc, new di(this, 6));
                break;
            case 25:
                zoomCamera(str);
                break;
            case 26:
                zoomedCamera();
                break;
            case 27:
                requestSwitchCamera(VideoModule.CameraSource.FRONT);
                break;
            case 28:
                requestSwitchCamera(VideoModule.CameraSource.BACK);
                break;
            case 29:
                this.parameters.isPendingLocationRequest = false;
                this.callViewModel.updateDataInBandFromGeoLocationRequest(str);
                LocationDialog.show(getSupportFragmentManager(), this.callViewModel.getDataInBandRequestTimeout());
                break;
            case 30:
                DataChannelAction.STARTED_SNAPSHOT.send(this.dc);
                break;
            case 31:
                snapshot();
                break;
            case 32:
                stopPicture();
                restartVideo();
                break;
            case 33:
                this.capabilitiesRepository.activateCollimator();
                showCollimator(true);
                break;
            case 34:
                ocr(str);
                break;
            case 35:
                this.capabilitiesRepository.stopCollimator();
                showCollimator(false);
                break;
            case 36:
                onRequestAutoFocus();
                break;
            case 37:
                updateAll();
                Utils.requestUsbCameraIfNeeded(this, this.call, this.parameters);
                break;
            case 38:
                updateAll();
                break;
            case 39:
                Universal.ar().startActivity(this);
                break;
            case 40:
                startLiveQr();
                break;
            case 41:
                stopLiveQr();
                break;
            case EACTags.CURRENCY_CODE /* 42 */:
                if (!this.call.audio().isRecorderMuted()) {
                    boolean zIsConference = this.call.isConference();
                    Call call = this.call;
                    if (!zIsConference) {
                        call.audio().muteRecorder(true);
                    } else {
                        call.conference().myself().mute(true);
                    }
                } else {
                    DataChannelAction.STARTED_MUTE.send(this.dc);
                }
                break;
            case EACTags.DATE_OF_BIRTH /* 43 */:
                Session.Role role = this.session.config.role();
                Session.Role role2 = Session.Role.ATTENDEE;
                if (role == role2 && this.call.audio().isRecorderMuted()) {
                    if (str != null) {
                        try {
                            string = new JSONObject(str).getString(m.q);
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                            string = "";
                        }
                    } else {
                        string = "";
                    }
                    final Participant participantMyself = this.call.conference().myself();
                    if (string.equals("" + participantMyself.id()) || string.equals(Browse.CAPS_WILDCARD)) {
                        AcceptDenyDialog.show(getSupportFragmentManager(), 2, new AcceptDenyDialog.OnAcceptDenyCallback() { // from class: com.sightcall.universal.internal.ui.CallActivity.3
                            @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                            public void onAccept() {
                                CallActivity.this.call.audio().muteRecorder(false);
                                participantMyself.mute(false);
                            }

                            @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                            public void onDeny() {
                            }
                        });
                    }
                    break;
                } else if (this.session.config.role() != role2 && TextUtils.isEmpty(str)) {
                    if (!this.call.audio().isRecorderMuted()) {
                        DataChannelAction.STOPPED_MUTE.send(this.dc);
                    } else {
                        AcceptDenyDialog.show(getSupportFragmentManager(), 2, new AcceptDenyDialog.OnAcceptDenyCallback() { // from class: com.sightcall.universal.internal.ui.CallActivity.4
                            @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                            public void onAccept() {
                                CallActivity.this.call.audio().muteRecorder(false);
                                if (CallActivity.this.call.isConference()) {
                                    CallActivity.this.call.conference().myself().mute(false);
                                }
                            }

                            @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                            public void onDeny() {
                            }
                        });
                    }
                }
                break;
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                if (this.call.rtcc().user() != null && this.session.config.role() == Session.Role.ATTENDEE && this.call.rtcc().user().uidLocal().equals(SwitchRequest.extractUid(str))) {
                    AcceptDenyDialog.show(getSupportFragmentManager(), 3, new AcceptDenyDialog.OnAcceptDenyCallback() { // from class: com.sightcall.universal.internal.ui.CallActivity.5
                        @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                        public void onAccept() {
                            SwitchRequest.getInstance().accept(CallActivity.this.call.rtcc().user().uidLocal(), str);
                        }

                        @Override // com.sightcall.universal.internal.ui.AcceptDenyDialog.OnAcceptDenyCallback
                        public void onDeny() {
                            SwitchRequest.getInstance().deny(str);
                        }
                    });
                    return;
                }
                return;
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                if (SwitchRequest.getInstance().isSameId(str)) {
                    SwitchRequest.getInstance().clear();
                    return;
                }
                return;
            case 46:
                this.callViewModel.onRoleSwitch(str, new di(this, 7));
                return;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                try {
                    addFragment(SightCall.INSTANCE.getExperience(OpenSdfMappersKt.toSDFUri(str)));
                    DataChannelAction.SDF_OPENED.send(this.dc);
                    this.callViewModel.setSDFOpened(true);
                    return;
                } catch (SightCallUnknownUrlException | JsonException | IllegalArgumentException e3) {
                    DataChannelAction.SDF_OPEN_ERROR.send(this.dc);
                    Logger.INSTANCE.e("", e3);
                    return;
                }
            case 48:
                this.callViewModel.setSDFOpened(false);
                getSupportFragmentManager().V();
                DataChannelAction.SDF_CLOSED.send(this.dc);
                return;
            case 49:
                boolean translation = LiveTranslationRequest.INSTANCE.fromJson(str).getTranslation();
                LiveTranslationAPI liveTranslationAPI = this.liveTranslationAPI;
                if (!translation) {
                    liveTranslationAPI.enableLiveTranslation(false);
                } else {
                    liveTranslationAPI.enableLiveTranslation(true);
                }
                break;
        }
        updateCallButtonBar();
    }

    @Event
    public void onIncomingMessage(final Message.Incoming incoming) {
        if (MessagesDialogFragment.isShown(getSupportFragmentManager())) {
            return;
        }
        if (this.messagesOverlay.getVisibility() != 0) {
            this.messagesOverlay.setVisibility(0);
            this.messagesOverlay.post(new Runnable() { // from class: com.sightcall.universal.internal.ui.CallActivity.2
                @Override // java.lang.Runnable
                public void run() {
                    CallActivity.this.onIncomingMessage(incoming);
                }
            });
        } else {
            this.messagesOverlayAdapter.onMessageAdded(incoming);
            updateCallButtonBar();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 82) {
            return super.onKeyUp(i2, keyEvent);
        }
        showAndHideSystemUi();
        return true;
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.OnMessageClickListener
    public void onMessageClick(Message.Incoming incoming, MessagesOverlayAdapter.MessageViewHolder messageViewHolder) {
        this.messagesOverlayAdapter.onMessagesRead();
        MessagesDialogFragment.show(getSupportFragmentManager());
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.OnMessageLongClickListener
    public boolean onMessageLongClick(Message.Incoming incoming, MessagesOverlayAdapter.MessageViewHolder messageViewHolder) {
        Context applicationContext = getApplicationContext();
        com.sightcall.universal.util.Utils.copyToClipboard(applicationContext, incoming.content());
        Toast.makeText(applicationContext, R.string.universal_messages_copied_to_clipboard, 0).show();
        return true;
    }

    @Event
    public void onParticipantEvent(ParticipantEvent participantEvent) {
        updateCallButtonBar();
        updateVideoConsumers();
        if (participantEvent.participant() == this.call.conference().myself()) {
            (participantEvent.participant().isMuted() ? DataChannelAction.STARTED_MUTE : DataChannelAction.STOPPED_MUTE).send();
        }
    }

    @Event
    public void onParticipantsEvent(ParticipantsEvent participantsEvent) {
        updateCallButtonBar();
        updateVideoConsumers();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.lifecycle = Lifecycle.DESCENDING;
        onBackground();
        BroadcastReceiver broadcastReceiver = this.asrBroadcastReceiver;
        if (broadcastReceiver != null) {
            unregisterReceiver(broadcastReceiver);
        }
        super.onPause();
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper.VisibilityCallback
    public void onPlayerBarShown() {
        showAndHideSystemUi();
        if (this.systemUiHelper.isShowing()) {
            updateFloatingContainers();
        }
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper.OnPlayerCallback
    public void onPlayerPause() {
        eraseVideoDrawings();
        updateCallButtonBar();
        DataChannelAction.PAUSED_PLAYER.send(this.dc);
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper.OnPlayerCallback
    public void onPlayerResume() {
        eraseVideoDrawings();
        updateCallButtonBar();
        DataChannelAction.RESUMED_PLAYER.send(this.dc);
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper.OnPlayerCallback
    public void onPlayerStart() {
        eraseVideoDrawings();
        updateCallButtonBar();
        DataChannelAction.STARTED_PLAYER.send(this.dc);
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper.OnPlayerCallback
    public void onPlayerStartSeek() {
        eraseVideoDrawings();
    }

    @Override // com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper.OnPlayerCallback
    public void onPlayerStop() {
        eraseVideoDrawings();
        updateCallButtonBar();
        DataChannelAction.STOPPED_PLAYER.send(this.dc);
    }

    @Event
    public void onProgressivex(ProgressivexEvent progressivexEvent) {
        this.progressivexImageView.setSource(progressivexEvent.getSource());
        this.progressivexImageView.loadBitmap(progressivexEvent.getBitmap(), false);
        this.parameters.screenshareContentUri = Uri.parse("bitmap");
        if (Utils.requestProgressivexWithOrWithoutVideo(this.session, this.call, this.progressivexImageView)) {
            updateAll();
        }
    }

    @Override // com.sightcall.universal.internal.proposition.PropositionDialogFragment.OnPropositionDialogListener
    public void onPropositionDialogDismissed() {
        logger.d("onPropositionDialogDismissed()");
        UiUtils.requestOrientation(this, 4);
    }

    @Override // com.sightcall.universal.internal.proposition.PropositionDialogFragment.OnPropositionDialogListener
    public void onPropositionDialogShown() {
        logger.d("onPropositionDialogShown()");
        UiUtils.lockOrientation(this);
    }

    @Event
    public void onPropositionEvent(Proposition proposition) {
        handleProposition(proposition);
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.OnQuickActionListener
    public void onQuickActionNegative() {
        this.messaging.send(getString(R.string.universal_messages_quick_action_negative), this.session);
        this.messagesOverlayAdapter.onMessagesRead();
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.OnQuickActionListener
    public void onQuickActionPositive() {
        this.messaging.send(getString(R.string.universal_messages_quick_action_positive), this.session);
        this.messagesOverlayAdapter.onMessagesRead();
    }

    @Override // com.sightcall.universal.internal.messaging.MessagesOverlayAdapter.OnQuickActionListener
    public void onQuickActionReply() {
        this.messagesOverlayAdapter.onMessagesRead();
        MessagesDialogFragment.show(getSupportFragmentManager());
    }

    @Event
    public void onRecordingEvent(RecordingEvent recordingEvent) {
        updateCallButtonBar();
    }

    @Event
    public void onRemoteStateGpsEvent(GpsRequest.Event event) {
        if (event.location() == null) {
            updateCallButtonBar();
            return;
        }
        showAndHideSystemUi();
        CallButtonImageView callButtonImageViewFind = this.callButtonBarRemote.find(CallButton.GEOLOCATION);
        if (callButtonImageViewFind != null) {
            UiUtils.tada(callButtonImageViewFind, 2.0f).start();
        }
    }

    @Override // com.sightcall.universal.internal.ui.ChangeCameraSourceDialog.OnRequestCameraSourceListener
    public void onRequestCameraSourceConfirmation(VideoModule.CameraSource cameraSource, boolean z) {
        if (z) {
            switchCameraSource(cameraSource);
        }
    }

    @Override // com.sightcall.universal.internal.location.LocationDialog.OnLocationDialogListener
    public void onRequestLocationConfirmation(LocationDialog.LocationDialogResult locationDialogResult) {
        int i2 = AnonymousClass10.$SwitchMap$com$sightcall$universal$internal$location$LocationDialog$LocationDialogResult[locationDialogResult.ordinal()];
        if (i2 == 1) {
            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onGpsAccepted(this.session);
            this.callViewModel.sendLocationStatus(GeolocationStatus.FirstUsagePopupAccepted.INSTANCE);
            startLocationService();
        } else if (i2 == 2) {
            CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onGpsDeclined(this.session);
            this.callViewModel.sendLocationStatus(GeolocationStatus.Declined.INSTANCE);
            this.callViewModel.stopLocationService();
        } else {
            if (i2 != 3) {
                return;
            }
            this.callViewModel.sendLocationStatus(GeolocationStatus.Timeout.INSTANCE);
            this.callViewModel.stopLocationService();
        }
    }

    public void onRequestPhotoFromCamera() {
        saveVideoState();
        startPhotoFromCamera();
    }

    public void onRequestPhotoFromGallery() {
        saveVideoState();
        startPhotoFromGallery();
    }

    public void onRequestVideoFromGallery() {
        saveVideoState();
        startVideoFromGallery();
    }

    @Override // android.app.Activity
    public void onRestart() {
        super.onRestart();
        this.lifecycle = Lifecycle.ASCENDING;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.lifecycle = Lifecycle.ASCENDING;
        if (finishOrRecreate()) {
            return;
        }
        onForeground();
        com.sightcall.universal.util.Utils.applySecureFlag(this);
        if (this.callViewModel.getIsSDFOpened()) {
            this.callViewModel.setSDFOpened(false);
            DataChannelAction.SDF_CLOSED.send(this.dc);
        }
        CallParameters callParameters = this.parameters;
        if (callParameters.isPendingLocationRequest) {
            callParameters.isPendingLocationRequest = false;
            Scenario scenario = Universal.scenario().get();
            Step step = scenario != null ? scenario.step() : null;
            if (step instanceof CallStep) {
                CallStep callStep = (CallStep) step;
                this.callViewModel.updateDataInBandGeoLocationParameters(callStep.getDataInBandRequestId(), callStep.getDataInBandRequestTimeout());
                LocationDialog.show(getSupportFragmentManager(), callStep.getDataInBandRequestTimeout());
            } else {
                LocationDialog.show(getSupportFragmentManager());
            }
        }
        CallParameters callParameters2 = this.parameters;
        if (callParameters2.isPendingScreencastRequest) {
            callParameters2.isPendingScreencastRequest = false;
            startScreencast();
        }
        Proposition proposition = this.parameters.pendingProposition;
        if (proposition != null) {
            handleProposition(proposition);
        }
        if (Rtcc.instance().status() == Rtcc.Status.NETWORK_LOST) {
            NetworkLostDialog.show(getSupportFragmentManager());
        }
        RealWearUtilsKt.updateHelpVoiceCommands(getApplicationContext(), this.session.buttonsLocal());
        com.sightcall.pratik.utils.Utils.INSTANCE.registerReceiverCompat(this, this.asrBroadcastReceiver, new IntentFilter(RealWearUtilsKt.ACTION_SPEECH_EVENT));
        if (this.call.status() == Call.Status.ACTIVE) {
            (this.call.audio().isRecorderMuted() ? DataChannelAction.STARTED_MUTE : DataChannelAction.STOPPED_MUTE).send();
        }
    }

    @Event
    public void onRtccStatus(Rtcc.Status status) {
        int i2 = AnonymousClass10.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[status.ordinal()];
        if (i2 == 1 || i2 == 2) {
            if (isFinishing()) {
                return;
            }
            finishAndRemoveTaskOrFinishAffinity();
        } else {
            if (i2 != 5) {
                return;
            }
            NetworkLostDialog.show(getSupportFragmentManager());
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.screenshareProducerWebView.saveState(bundle);
        this.callViewModel.getVideoPlayerWrapper().saveState();
    }

    @Event
    public void onScreenshareEvent(ScreenshareEvent screenshareEvent) {
        updateAll();
        showAndHideSystemUi();
    }

    public void onShareDialogCancelled() {
        DataChannelAction.CANCELLED_MEDIA.send(this.dc);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        this.lifecycle = Lifecycle.ASCENDING;
        Rtcc.instance().bus().register(this);
        DeviceManager.instance(this).addDeviceListener(this);
        Scenario scenario = Universal.scenario().get();
        Step step = scenario != null ? scenario.step() : null;
        if (step instanceof CallStep) {
            ((CallStep) step).register(this.weakReference);
        }
        UniversalNotification.OVERLAY_PERMISSION_REQUIRED.cancel(this);
        if (finishOrRecreate()) {
            return;
        }
        onForeground();
        if (this.call.video().isReceiving() && Utils.videoConsumerToFullscreen(this.session, this.call)) {
            this.advancedAnnotationsWrapper.processDeleteAll();
        }
        Utils.requestUsbCameraIfNeeded(this, this.call, this.parameters);
        this.messagesOverlayAdapter.refresh(this.messaging.get());
        this.messagesOverlay.setVisibility(this.messagesOverlayAdapter.isEmpty() ? 8 : 0);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        this.lifecycle = Lifecycle.DESCENDING;
        SystemUiHelper systemUiHelper = this.systemUiHelper;
        if (systemUiHelper != null) {
            systemUiHelper.removeQueuedRunnables();
        }
        Scenario scenario = Universal.scenario().get();
        Step step = scenario != null ? scenario.step() : null;
        if (step instanceof CallStep) {
            ((CallStep) step).unregister(this.weakReference);
        }
        Rtcc.instance().bus().unregister(this);
        DeviceManager.instance(this).removeDeviceListener(this);
        onBackground();
        super.onStop();
    }

    @Event
    public void onStopProgressivex(ProgressivexStopEvent progressivexStopEvent) {
        if (ProgressivexImageView.isRunning()) {
            this.progressivexImageView.stop();
            this.parameters.screenshareContentUri = null;
        }
    }

    @Event
    public void onVideoEvent(VideoEvent videoEvent) {
        if (!videoEvent.isSending()) {
            this.session.parameters.videoStopPending = false;
        }
        if (videoEvent.isSending()) {
            this.session.parameters.restartVideoAfterPicture = false;
        }
        updateAll();
        showAndHideSystemUi();
        Utils.requestUsbCameraIfNeeded(this, this.call, this.parameters);
    }

    @Override // com.sightcall.universal.util.SystemUiHelper.OnVisibilityChangeListener
    public void onVisibilityChange(boolean z) {
        int i2 = 0;
        if (this.session.config.role() == Session.Role.HOST) {
            Usecase.Bar[] barArrBars = this.session.usecase.bars();
            int length = barArrBars.length;
            boolean z2 = false;
            int i3 = 0;
            while (i2 < length) {
                Usecase.Bar bar = barArrBars[i2];
                if (bar.role == Usecase.Bar.Role.LOCAL && bar.alwaysvisible.booleanValue()) {
                    i3 = 1;
                }
                if (bar.role == Usecase.Bar.Role.REMOTE && bar.alwaysvisible.booleanValue()) {
                    z2 = true;
                }
                i2++;
            }
            if (z2 || z) {
                this.callButtonBarRemote.show();
            } else if (this.hasTouchScreen) {
                this.callButtonBarRemote.hide();
            }
            i2 = i3;
        }
        if (i2 != 0 || this.session.usecase.guest().alwaysVisible) {
            this.callButtonBar.show();
            this.callViewModel.getVideoPlayerWrapper().showBar();
        } else if (z) {
            showAndHideSystemUi();
            this.callButtonBar.show();
            this.callViewModel.getVideoPlayerWrapper().showBar();
        } else if (this.hasTouchScreen) {
            this.callButtonBar.hide();
            this.callViewModel.getVideoPlayerWrapper().hideBar();
        }
        updateFloatingContainers();
    }

    public void requestScreenCast(ScreenCastCallback screenCastCallback) {
        this.screenCastPermissionListener = screenCastCallback;
        MediaProjectionManager mediaProjectionManager = (MediaProjectionManager) ContextCompat.getSystemService(this, MediaProjectionManager.class);
        if (mediaProjectionManager != null) {
            this.startMediaProjection.a(SdkUtilsKt.isAtLeastSdk34() ? mediaProjectionManager.createScreenCaptureIntent(MediaProjectionConfig.createConfigForDefaultDisplay()) : mediaProjectionManager.createScreenCaptureIntent());
        }
    }

    public void updateCallButtonBar() {
        this.callButtonBar.update(this.call);
        this.callButtonBarRemote.update(this.call);
        if (this.session.config.role() == Session.Role.HOST) {
            if (this.remoteState.isCameraPaused()) {
                lockOrientationScreen();
            } else {
                unlockOrientationScreen();
            }
        }
    }

    public static class SaveMediaAndRecycleTask extends SaveMediaTask {
        public /* synthetic */ SaveMediaAndRecycleTask(Context context, Bitmap bitmap, Metadata metadata, int i2) {
            this(context, bitmap, metadata);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.media.SaveMediaTask, android.os.AsyncTask
        public void onPostExecute(com.sightcall.universal.media.Media media) {
            super.onPostExecute(media);
            this.bitmap.recycle();
        }

        private SaveMediaAndRecycleTask(Context context, Bitmap bitmap, Metadata metadata) {
            super(context, bitmap, metadata);
        }
    }

    private void zoomCamera(String str) {
        if (str == null || str.length() != 4) {
            return;
        }
        zoomCamera(ViewUtils.intPercentToFloatPercent(Integer.valueOf(str, 16).intValue()));
    }

    private void switchCameraSource() {
        VideoProducer videoProducerProducer = this.call.video().producer();
        if (videoProducerProducer instanceof MyVideoProducerCameraView) {
            VideoModule.CameraSource source = ((MyVideoProducerCameraView) videoProducerProducer).getSource();
            switchCameraSource((source == null || source.isFront()) ? VideoModule.CameraSource.BACK : VideoModule.CameraSource.FRONT);
        }
    }
}

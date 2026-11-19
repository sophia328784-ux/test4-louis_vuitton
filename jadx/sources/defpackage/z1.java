package defpackage;

import android.R;
import android.content.Context;
import android.hardware.camera2.CameraDevice;
import android.media.Image;
import android.os.Trace;
import android.view.ActionMode;
import androidx.activity.ComponentDialog;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.exceptions.CreateCredentialUnknownException;
import androidx.credentials.exceptions.GetCredentialUnknownException;
import androidx.credentials.playservices.controllers.BeginSignIn.CredentialProviderBeginSignInController;
import androidx.credentials.playservices.controllers.CreatePassword.CredentialProviderCreatePasswordController;
import androidx.credentials.playservices.controllers.GetRestoreCredential.CredentialProviderGetDigitalCredentialController;
import androidx.credentials.playservices.controllers.GetSignInIntent.CredentialProviderGetSignInIntentController;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.session.MediaController;
import com.dynatrace.agent.util.RootDetector;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import com.dynatrace.android.agent.util.Utility;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.snackbar.Snackbar;
import com.lightup.sdk.device.ble.scanner.listeners.OpenDeviceListener;
import com.lightup.sdk.device.devicemanagement.BLELightup;
import com.lightup.sdk.device.devicemanagement.BLEX408Manager$openDevices$1$onDone$1;
import com.vuitton.android.data.audioplayer.AudioPlayerControllerImpl;
import com.vuitton.android.presentation.ar.arcore.ArCore;
import com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiFragment$connectToWifi$1;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.utils.ArUtils;
import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import java.io.IOException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.AudioModule;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class z1 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81494c;

    public /* synthetic */ z1(AudioSource.AudioSourceCallback audioSourceCallback, boolean z) {
        this.f81493b = 10;
        this.f81494c = audioSourceCallback;
    }

    @Override // java.lang.Runnable
    public final void run() throws InterruptedException, IOException {
        int i2 = this.f81493b;
        Object obj = this.f81494c;
        switch (i2) {
            case 0:
                int i3 = AbstractComposeView.f9836k;
                ((AbstractComposeView) obj).b();
                return;
            case 1:
                AddTravelActivity.Companion companion = AddTravelActivity.u;
                Snackbar.f(((AddTravelActivity) obj).findViewById(R.id.content), com.vuitton.android.R.string.error_generic, -1).h();
                return;
            case 2:
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = (AndroidComposeViewAccessibilityDelegateCompat) obj;
                MutableIntList mutableIntList = AndroidComposeViewAccessibilityDelegateCompat.O;
                Trace.beginSection("measureAndLayout");
                try {
                    androidComposeViewAccessibilityDelegateCompat.f9899e.c(true);
                    Trace.endSection();
                    Trace.beginSection("checkForSemanticsChanges");
                    try {
                        androidComposeViewAccessibilityDelegateCompat.n();
                        Trace.endSection();
                        androidComposeViewAccessibilityDelegateCompat.J = false;
                        return;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            case 3:
                AndroidMetrics androidMetrics = (AndroidMetrics) obj;
                AndroidMetrics androidMetrics2 = AndroidMetrics.w;
                androidMetrics.getClass();
                try {
                    Context context = androidMetrics.f27551a;
                    if (context != null) {
                        androidMetrics.g = Boolean.valueOf(RootDetector.c(context));
                    }
                    androidMetrics.n = Utility.d();
                    return;
                } catch (Exception unused) {
                    boolean z = Global.f27307a;
                    return;
                }
            case 4:
                ActionMode actionMode = ((AndroidTextContextMenuToolbarProvider) obj).f6087h;
                if (actionMode != null) {
                    actionMode.finish();
                    return;
                }
                return;
            case 5:
                int i4 = ArCore.z;
                ((Image) obj).close();
                return;
            case 6:
                ArUtils.b((MainActivity) obj);
                return;
            case 7:
                ((AudioCapabilitiesReceiver) obj).c();
                return;
            case 8:
                ((AudioModule) obj).lambda$restart$2();
                return;
            case 9:
                final AudioPlayerControllerImpl audioPlayerControllerImpl = (AudioPlayerControllerImpl) obj;
                if (audioPlayerControllerImpl.f() != null) {
                    Function5 function5 = audioPlayerControllerImpl.f43560b;
                    if (function5 != null) {
                        function5.D(Boolean.TRUE, PlayerState.STOPPED, null, 0L, 0L);
                    }
                    MediaController mediaControllerF = audioPlayerControllerImpl.f();
                    if (mediaControllerF != null) {
                        mediaControllerF.Y(new Player.Listener() { // from class: com.vuitton.android.data.audioplayer.AudioPlayerControllerImpl$controllerListener$1
                            @Override // androidx.media3.common.Player.Listener
                            public final void f0(Player player, Player.Events events) {
                                PlayerState playerState;
                                AudioPlayerItem audioPlayerItem;
                                player.getClass();
                                AudioPlayerControllerImpl audioPlayerControllerImpl2 = audioPlayerControllerImpl;
                                Function5 function6 = audioPlayerControllerImpl2.f43560b;
                                if (function6 != null) {
                                    Boolean bool = Boolean.TRUE;
                                    int iH = player.h();
                                    if (iH == 1 || iH == 4) {
                                        playerState = PlayerState.STOPPED;
                                    } else {
                                        MediaController mediaControllerF2 = audioPlayerControllerImpl2.f();
                                        playerState = (mediaControllerF2 == null || !mediaControllerF2.r()) ? PlayerState.PAUSED : PlayerState.PLAYING;
                                    }
                                    PlayerState playerState2 = playerState;
                                    MediaItem mediaItemO0 = player.O0();
                                    if (mediaItemO0 != null) {
                                        MediaMetadata mediaMetadata = mediaItemO0.d;
                                        String strValueOf = String.valueOf(mediaMetadata.f13879a);
                                        String strValueOf2 = String.valueOf(mediaMetadata.f13883f);
                                        String str = mediaItemO0.f13787a;
                                        str.getClass();
                                        AssetImage assetImage = new AssetImage(String.valueOf(mediaMetadata.n), null, null, null, 14, null);
                                        Long l = mediaMetadata.f13884h;
                                        audioPlayerItem = new AudioPlayerItem(l != null ? l.longValue() : 0L, str, assetImage, strValueOf, strValueOf2);
                                    } else {
                                        audioPlayerItem = null;
                                    }
                                    long currentPosition = player.getCurrentPosition();
                                    if (currentPosition < 0) {
                                        currentPosition = 0;
                                    }
                                    long duration = player.getDuration();
                                    if (currentPosition > duration) {
                                        currentPosition = duration;
                                    }
                                    Long lValueOf = Long.valueOf(currentPosition);
                                    long duration2 = player.getDuration();
                                    function6.D(bool, playerState2, audioPlayerItem, lValueOf, Long.valueOf(duration2 >= 0 ? duration2 : 0L));
                                }
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            case 10:
                ((AudioSource.AudioSourceCallback) obj).getClass();
                return;
            case 11:
                ListenerSet listenerSet = (ListenerSet) obj;
                listenerSet.getClass();
                if (Thread.currentThread() == listenerSet.f14160b) {
                    listenerSet.f(-1, new v7(20));
                    return;
                }
                return;
            case 12:
                BLELightup.sendUnlock$lambda$0((BLELightup) obj);
                return;
            case 13:
                BLEX408Manager$openDevices$1$onDone$1.onDone$lambda$0((OpenDeviceListener) obj);
                return;
            case 14:
                Camera2CameraControl camera2CameraControl = (Camera2CameraControl) obj;
                CallbackToFutureAdapter.Completer completer = camera2CameraControl.g;
                if (completer != null) {
                    completer.b(null);
                    camera2CameraControl.g = null;
                    return;
                }
                return;
            case 15:
                ((CameraDevice) obj).close();
                return;
            case 16:
                ((ImageCapture.ScreenFlash) obj).clear();
                return;
            case 17:
                ((CameraStateRegistry.OnOpenAvailableListener) obj).a();
                return;
            case 18:
                ((CameraStateRegistry.OnConfigureAvailableListener) obj).a();
                return;
            case 19:
                ((CarouselLayoutManager) obj).e1();
                return;
            case 20:
                ComponentDialog.a((ComponentDialog) obj);
                return;
            case 21:
                ((ConnectToWifiFragment$connectToWifi$1) obj).a();
                return;
            case 22:
                ((CredentialProviderBeginSignInController) obj).g().a(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
                return;
            case 23:
                CredentialManagerCallback credentialManagerCallback = ((CredentialProviderCreatePasswordController) obj).f12444f;
                if (credentialManagerCallback != null) {
                    credentialManagerCallback.a(new CreateCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
                    return;
                } else {
                    Intrinsics.h("callback");
                    throw null;
                }
            case 24:
                ((CredentialProviderGetDigitalCredentialController) obj).f().a(new GetCredentialUnknownException("No provider data returned."));
                return;
            case 25:
                ((CredentialProviderGetSignInIntentController) obj).h().a(new GetCredentialUnknownException("Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."));
                return;
            case 26:
                DefaultAnalyticsCollector defaultAnalyticsCollector = (DefaultAnalyticsCollector) obj;
                AnalyticsListener.EventTime eventTimeY0 = defaultAnalyticsCollector.y0();
                defaultAnalyticsCollector.D0(eventTimeY0, 1028, new ks(eventTimeY0, 22));
                defaultAnalyticsCollector.g.d();
                return;
            case 27:
                Function0 function0 = (Function0) ((Ref$ObjectRef) obj).f71921b;
                if (function0 != null) {
                    function0.mo47invoke();
                    return;
                }
                return;
            case 28:
                ((SurfaceOutput) obj).close();
                return;
            default:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) obj;
                defaultSurfaceProcessor.f2538k = true;
                defaultSurfaceProcessor.d();
                return;
        }
    }

    public /* synthetic */ z1(Object obj, int i2) {
        this.f81493b = i2;
        this.f81494c = obj;
    }
}

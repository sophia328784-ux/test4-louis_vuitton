package net.rtccloud.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sightcall.pratik.InstantAppWrapper;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.RealWearUtilsKt;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.pratik.utils.Utils;
import defpackage.jb;
import defpackage.kb;
import defpackage.z1;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.AudioEvent;
import net.rtccloud.sdk.event.call.AudioRouteEvent;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.internal.RtccExceptions;
import net.rtccloud.sdk.util.AudioWorkaroundKt;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Permission;

/* JADX INFO: loaded from: classes4.dex */
public class AudioModule implements AudioManager.OnAudioFocusChangeListener {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.AUDIO);
    private AudioFocusRequest audioFocusRequest;
    private final AudioManager audioManager;
    private final Call call;
    private volatile int frameLength;
    private volatile int frequency;
    private boolean isPlayerMuted;
    private boolean isRecorderMuted;
    private boolean isStarted;
    private final myAudioDeviceCallback mAudioDeviceCallback;
    private AudioFocusRequest mFocusRequest;
    private final Native nativeInterface;
    private volatile int playDeviceId;
    private volatile int recDeviceId;
    private final Rtcc rtcc;
    private BroadcastReceiver scoBroadcastReceiver = new BroadcastReceiver() { // from class: net.rtccloud.sdk.AudioModule.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1) == 1 && AudioModule.this.isSco) {
                boolean z = AudioModule.this.isStarted;
                AudioModule audioModule = AudioModule.this;
                if (z) {
                    audioModule.nativeRestart();
                    return;
                }
                audioModule.isStarted = true;
                AudioModule.this.nativeInterface.start(AudioModule.this.frequency, AudioModule.this.frameLength, AudioModule.this.recDeviceId, AudioModule.this.playDeviceId, AudioWorkaroundKt.isEchoCancelerEnabled(), InstantAppWrapper.isInstantApp(AudioModule.this.rtcc().context));
                AudioWorkaroundKt.setModeInCommunication(AudioModule.this.audioManager);
                if (AudioModule.this.call.parameters().audio()) {
                    return;
                }
                AudioModule.this.muteRecorder(true);
            }
        }
    };
    private AudioRoute route = AudioRoute.SPEAKER;
    private boolean isSco = false;

    /* JADX INFO: loaded from: classes3.dex */
    public enum AudioRoute {
        SPEAKER,
        HEADSET;

        public AudioRoute next() {
            AudioRoute[] audioRouteArrValues = values();
            return audioRouteArrValues[(ordinal() + 1) % audioRouteArrValues.length];
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.AudioModule.Native.1
            @Override // net.rtccloud.sdk.AudioModule.Native
            public void mutePlayer(boolean z) {
                Jni.nMutePlaying(z);
            }

            @Override // net.rtccloud.sdk.AudioModule.Native
            public void muteRecorder(boolean z) {
                Jni.nMuteRecording(z);
            }

            @Override // net.rtccloud.sdk.AudioModule.Native
            public void start(int i2, int i3, int i4, int i5, boolean z, boolean z2) {
                Jni.nStartAudio(i2, i3, i4, i5, z, z2);
            }

            @Override // net.rtccloud.sdk.AudioModule.Native
            public void stop() {
                Jni.nStopAudio();
            }
        };

        void mutePlayer(boolean z);

        void muteRecorder(boolean z);

        void start(int i2, int i3, int i4, int i5, boolean z, boolean z2);

        void stop();
    }

    public AudioModule(Rtcc rtcc, Call call, Native r6) {
        int i2 = 0;
        this.rtcc = rtcc;
        this.call = call;
        this.nativeInterface = r6;
        Context context = rtcc.context();
        if (InstantAppWrapper.isInstantApp(context)) {
            Preconditions.enforcePermissions(log, context, "AudioModule", Permission.RECORD_AUDIO);
        } else {
            Preconditions.enforcePermissions(log, context, "AudioModule", Permission.RECORD_AUDIO, Permission.MODIFY_AUDIO_SETTINGS);
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        this.audioManager = audioManager;
        myAudioDeviceCallback myaudiodevicecallback = new myAudioDeviceCallback(this, i2);
        this.mAudioDeviceCallback = myaudiodevicecallback;
        audioManager.registerAudioDeviceCallback(myaudiodevicecallback, null);
        this.isStarted = false;
        this.isRecorderMuted = false;
        this.isPlayerMuted = false;
        selectAudioRoute(null);
        getDevices();
        if (SdkUtilsKt.isAtLeastSdk26()) {
            initFocus();
        }
    }

    private void abandonAudioFocusRequest() {
        this.audioManager.abandonAudioFocusRequest(this.mFocusRequest);
    }

    private void initFocus() {
        this.mFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setUsage(2).setContentType(1).build()).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(this).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getDevices$0(AudioDeviceInfo audioDeviceInfo) {
        StringBuilder sb = new StringBuilder("{\"id\":\"");
        sb.append(audioDeviceInfo.getId());
        sb.append("\",\"selected\":");
        sb.append(this.playDeviceId == audioDeviceInfo.getId());
        sb.append(", \"name\":\"");
        sb.append((Object) audioDeviceInfo.getProductName());
        sb.append("\"}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getDevices$1(AudioDeviceInfo audioDeviceInfo) {
        StringBuilder sb = new StringBuilder("{\"id\":\"");
        sb.append(audioDeviceInfo.getId());
        sb.append("\",\"selected\":");
        sb.append(this.recDeviceId == audioDeviceInfo.getId());
        sb.append(", \"name\":\"");
        sb.append((Object) audioDeviceInfo.getProductName());
        sb.append("\"}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$nativeRestart$3(boolean z, boolean z2) {
        this.nativeInterface.start(this.frequency, this.frameLength, this.recDeviceId, this.playDeviceId, AudioWorkaroundKt.isEchoCancelerEnabled(), InstantAppWrapper.isInstantApp(rtcc().context));
        if (this.call.isConference()) {
            muteRecorder(false, true);
        } else {
            muteRecorder(z);
        }
        this.nativeInterface.mutePlayer(z2);
        AudioWorkaroundKt.setModeInCommunication(this.audioManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$restart$2() {
        if (SdkUtilsKt.isAtLeastSdk26()) {
            requestAudioFocus();
        } else {
            onStart();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nativeRestart() {
        if (this.isStarted) {
            final boolean zIsRecorderMuted = isRecorderMuted();
            final boolean zIsPlayerMuted = isPlayerMuted();
            this.nativeInterface.stop();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ib
                @Override // java.lang.Runnable
                public final void run() {
                    this.f69930b.lambda$nativeRestart$3(zIsRecorderMuted, zIsPlayerMuted);
                }
            }, 150L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restartAudio() {
        if (!selectAudioRoute(null) || this.isSco) {
            Logger.INSTANCE.i("RestartAudio Requested, no changes");
        } else {
            nativeRestart();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    private boolean selectAudioRoute(AudioRoute audioRoute) {
        boolean z;
        int i2 = this.playDeviceId;
        int i3 = this.recDeviceId;
        AudioDeviceInfo[] devices = this.audioManager.getDevices(3);
        int i4 = audioRoute == AudioRoute.SPEAKER ? 3 : 1;
        boolean z2 = false;
        this.isSco = false;
        this.playDeviceId = -1;
        this.recDeviceId = -1;
        int id = -1;
        while (true) {
            if (i4 >= 4) {
                z = z2;
                break;
            }
            int length = devices.length;
            for (?? r13 = z2; r13 < length; r13++) {
                AudioDeviceInfo audioDeviceInfo = devices[r13];
                boolean z3 = z2;
                if (this.playDeviceId == -1 && audioDeviceInfo.isSink()) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 == 3 && (RealWearUtilsKt.selectBuildInEarpiece(audioDeviceInfo) || audioDeviceInfo.getType() == 2)) {
                                this.playDeviceId = audioDeviceInfo.getId();
                            }
                        } else if (audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3 || (audioRoute == AudioRoute.HEADSET && this.playDeviceId == -1 && audioDeviceInfo.getType() == 1)) {
                            this.playDeviceId = audioDeviceInfo.getId();
                        }
                    } else if (audioDeviceInfo.getType() == 7 && InstantAppWrapper.isInstalledApp(rtcc().context)) {
                        this.isSco = true;
                        this.playDeviceId = audioDeviceInfo.getId();
                    }
                } else if (this.recDeviceId == -1 && audioDeviceInfo.isSource()) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (audioDeviceInfo.getType() == 15) {
                                if (audioDeviceInfo.getAddress().equals("back")) {
                                    this.recDeviceId = audioDeviceInfo.getId();
                                } else {
                                    id = audioDeviceInfo.getId();
                                }
                            }
                        } else if (audioDeviceInfo.getType() == 3 || (audioRoute == AudioRoute.HEADSET && this.recDeviceId == -1 && audioDeviceInfo.getType() == 15)) {
                            this.recDeviceId = audioDeviceInfo.getId();
                        }
                    } else if (audioDeviceInfo.getType() == 7 && InstantAppWrapper.isInstalledApp(rtcc().context)) {
                        this.isSco = true;
                        this.recDeviceId = audioDeviceInfo.getId();
                    }
                }
                z2 = z3;
            }
            z = z2;
            if (this.playDeviceId != -1 && this.recDeviceId != -1) {
                break;
            }
            this.playDeviceId = -1;
            this.recDeviceId = -1;
            i4++;
            z2 = z;
        }
        if (this.recDeviceId == -1) {
            this.recDeviceId = id;
        }
        boolean z4 = this.isSco;
        AudioManager audioManager = this.audioManager;
        if (z4) {
            audioManager.stopBluetoothSco();
            this.audioManager.startBluetoothSco();
        } else {
            audioManager.stopBluetoothSco();
        }
        if (i2 == this.playDeviceId && i3 == this.recDeviceId) {
            return z;
        }
        AudioRoute audioRoute2 = i4 == 3 ? AudioRoute.SPEAKER : AudioRoute.HEADSET;
        log.d("selectAudioDevice(%s -> %s)", this.route, audioRoute2);
        if (this.route != audioRoute2) {
            this.route = audioRoute2;
            if (!this.isSco) {
                nativeRestart();
            }
            this.rtcc.bus().post(new AudioRouteEvent(this.call, audioRoute2));
        }
        return true;
    }

    public String getDevices() {
        AudioDeviceInfo[] devices = this.audioManager.getDevices(3);
        List list = (List) Arrays.stream(devices).filter(new jb(0)).map(new kb(this, 0)).collect(Collectors.toList());
        return "\"audio_capture\":" + ((List) Arrays.stream(devices).filter(new jb(1)).map(new kb(this, 1)).collect(Collectors.toList())).toString() + ",\"audio_playback\":" + list.toString();
    }

    public boolean isPlayerMuted() {
        return this.isPlayerMuted;
    }

    public boolean isRecorderMuted() {
        return this.call.isConference() ? this.call.conference().myself.isMuted : this.isRecorderMuted;
    }

    public boolean isStarted() {
        return this.isStarted;
    }

    public void mutePlayer(boolean z) {
        log.d("mutePlayer(%b)", Boolean.valueOf(z));
        this.isPlayerMuted = z;
        this.nativeInterface.mutePlayer(z);
        this.rtcc.bus().post(new AudioEvent(this.call, this.isRecorderMuted, this.isPlayerMuted));
    }

    public void muteRecorder(boolean z, boolean z2) {
        this.nativeInterface.muteRecorder(z);
        if (z2) {
            return;
        }
        this.isRecorderMuted = z;
        this.rtcc.bus().post(new AudioEvent(this.call, this.isRecorderMuted, this.isPlayerMuted));
        if (this.call.isConference()) {
            return;
        }
        String str = z ? "mute" : "unmute";
        this.rtcc.sendMeetingCallBack("{\"evt\": \"callstatus\",\"id\": " + this.call.id + ",\"type\": \"sound\",\"status\":\"" + str + "\",\"sipcallid\":\"" + this.call.sipId + "\"}");
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i2) {
        log.i("onAudioFocusChange focusChange= " + i2);
        if (i2 == -3 || i2 == -2 || i2 == -1) {
            onStop();
        } else {
            if (i2 != 1) {
                return;
            }
            onStart();
        }
    }

    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        Call call = this.call;
        if (call.status == Call.Status.ACTIVE && call.isConference() && !this.call.isEscalating()) {
            Call call2 = this.call;
            call2.conferenceModule.myself.mute(!call2.parameters().audio());
        }
    }

    public void onStart() {
        OldLogger oldLogger = log;
        oldLogger.d("onStart()");
        if (this.isStarted) {
            oldLogger.i("AudioModule is already [started]");
            return;
        }
        this.rtcc.bus.register(this);
        Utils.INSTANCE.registerReceiverCompat(this.rtcc.context, this.scoBroadcastReceiver, new IntentFilter("android.media.ACTION_SCO_AUDIO_STATE_UPDATED"));
        this.isStarted = true;
        if (this.isSco) {
            return;
        }
        this.nativeInterface.start(this.frequency, this.frameLength, this.recDeviceId, this.playDeviceId, AudioWorkaroundKt.isEchoCancelerEnabled(), InstantAppWrapper.isInstantApp(rtcc().context));
        AudioWorkaroundKt.setModeInCommunication(this.audioManager);
        if (!this.call.parameters().audio()) {
            if (this.call.isConference()) {
                muteRecorder(false, true);
                return;
            } else {
                muteRecorder(true);
                return;
            }
        }
        this.rtcc.sendMeetingCallBack("{\"evt\": \"callstatus\",\"id\": " + this.call.id + ",\"type\": \"sound\",\"status\":\"unmute\",\"sipcallid\":\"" + this.call.sipId + "\"}");
    }

    public void onStop() {
        OldLogger oldLogger = log;
        oldLogger.d("onStop()");
        if (!this.isStarted) {
            oldLogger.i("AudioModule is already [stopped]");
            return;
        }
        this.isStarted = false;
        this.nativeInterface.stop();
        this.isRecorderMuted = false;
        this.isPlayerMuted = false;
        this.rtcc.context.unregisterReceiver(this.scoBroadcastReceiver);
        this.rtcc.bus.unregister(this);
        if (this.isSco) {
            this.audioManager.stopBluetoothSco();
        }
    }

    public void requestAudioFocus() {
        int iRequestAudioFocus = this.audioManager.requestAudioFocus(this.mFocusRequest);
        log.i("requestAudioFocus res= " + iRequestAudioFocus);
        if (iRequestAudioFocus == 1) {
            onStart();
        }
    }

    public void restart() {
        onStop();
        new Handler(Looper.getMainLooper()).postDelayed(new z1(this, 8), 100L);
    }

    public void route(AudioRoute audioRoute) {
        log.d("route(%s)", audioRoute);
        if (audioRoute == null) {
            throw RtccExceptions.newNullPointerException("[route] must not be null");
        }
        selectAudioRoute(audioRoute);
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public void setFrameLength(int i2) {
        this.frameLength = i2;
    }

    public void setFrequency(int i2) {
        this.frequency = i2;
    }

    public void setPlayDeviceId(int i2) {
        this.playDeviceId = i2;
        nativeRestart();
    }

    public void setRecDeviceId(int i2) {
        this.recDeviceId = i2;
        nativeRestart();
    }

    public void teardown() {
        onStop();
    }

    public class myAudioDeviceCallback extends AudioDeviceCallback {
        private myAudioDeviceCallback() {
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioModule.this.restartAudio();
        }

        @Override // android.media.AudioDeviceCallback
        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioModule.this.restartAudio();
        }

        public /* synthetic */ myAudioDeviceCallback(AudioModule audioModule, int i2) {
            this();
        }
    }

    public AudioRoute route() {
        return this.route;
    }

    public void muteRecorder(boolean z) {
        muteRecorder(z, false);
    }
}

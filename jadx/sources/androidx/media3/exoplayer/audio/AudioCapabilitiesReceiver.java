package androidx.media3.exoplayer.audio;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.media.AudioDeviceInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AudioCapabilitiesReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Listener f14868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f14869c;
    public final AudioDeviceCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BroadcastReceiver f14870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ExternalSurroundSoundSettingObserver f14871f;
    public SpatializerWrapper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AudioCapabilities f14872h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AudioDeviceInfo f14873i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AudioAttributes f14874j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f14875k;

    public final class AudioDeviceCallback extends android.media.AudioDeviceCallback {
        public AudioDeviceCallback() {
        }

        @Override // android.media.AudioDeviceCallback
        public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver.this.c();
        }

        @Override // android.media.AudioDeviceCallback
        public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            if (Util.m(audioCapabilitiesReceiver.f14873i, audioDeviceInfoArr)) {
                audioCapabilitiesReceiver.f14873i = null;
            }
            audioCapabilitiesReceiver.c();
        }
    }

    public final class ExternalSurroundSoundSettingObserver extends ContentObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentResolver f14877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f14878b;

        public ExternalSurroundSoundSettingObserver(Handler handler, ContentResolver contentResolver, Uri uri) {
            super(handler);
            this.f14877a = contentResolver;
            this.f14878b = uri;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            AudioCapabilitiesReceiver.this.c();
        }
    }

    public final class HdmiAudioPlugBroadcastReceiver extends BroadcastReceiver {
        public HdmiAudioPlugBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (isInitialStickyBroadcast()) {
                return;
            }
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioCapabilitiesReceiver.this;
            audioCapabilitiesReceiver.b(AudioCapabilities.b(context, intent, audioCapabilitiesReceiver.f14874j, audioCapabilitiesReceiver.f14873i, audioCapabilitiesReceiver.a()));
        }
    }

    public interface Listener {
        void e(AudioCapabilities audioCapabilities);
    }

    public AudioCapabilitiesReceiver(Context context, Listener listener, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        Context applicationContext = context.getApplicationContext();
        this.f14867a = applicationContext;
        listener.getClass();
        this.f14868b = listener;
        this.f14874j = audioAttributes;
        this.f14873i = audioDeviceInfo;
        String str = Util.f14242a;
        Looper looperMyLooper = Looper.myLooper();
        Handler handler = new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper, null);
        this.f14869c = handler;
        this.d = new AudioDeviceCallback();
        this.f14870e = new HdmiAudioPlugBroadcastReceiver();
        ImmutableList immutableList = AudioCapabilities.f14857e;
        String str2 = Build.MANUFACTURER;
        Uri uriFor = (str2.equals("Amazon") || str2.equals("Xiaomi")) ? Settings.Global.getUriFor("external_surround_sound_enabled") : null;
        this.f14871f = uriFor != null ? new ExternalSurroundSoundSettingObserver(handler, applicationContext.getContentResolver(), uriFor) : null;
    }

    public final List a() {
        SpatializerWrapper spatializerWrapper;
        return (Build.VERSION.SDK_INT < 32 || (spatializerWrapper = this.g) == null) ? ImmutableList.x() : spatializerWrapper.b();
    }

    public final void b(AudioCapabilities audioCapabilities) {
        if (!this.f14875k || audioCapabilities.equals(this.f14872h)) {
            return;
        }
        this.f14872h = audioCapabilities;
        this.f14868b.e(audioCapabilities);
    }

    public final void c() {
        List listA = a();
        AudioAttributes audioAttributes = this.f14874j;
        AudioDeviceInfo audioDeviceInfo = this.f14873i;
        ImmutableList immutableList = AudioCapabilities.f14857e;
        IntentFilter intentFilter = new IntentFilter("android.media.action.HDMI_AUDIO_PLUG");
        Context context = this.f14867a;
        b(AudioCapabilities.b(context, context.registerReceiver(null, intentFilter), audioAttributes, audioDeviceInfo, listA));
    }

    @Deprecated
    public AudioCapabilitiesReceiver(Context context, Listener listener) {
        this(context, listener, AudioAttributes.f13689i, null);
    }
}

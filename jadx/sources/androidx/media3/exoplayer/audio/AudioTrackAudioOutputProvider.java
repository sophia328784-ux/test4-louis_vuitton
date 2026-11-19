package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.util.SpatializerWrapper;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import defpackage.md;
import defpackage.s3;
import defpackage.z1;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class AudioTrackAudioOutputProvider implements AudioOutputProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DefaultAudioSink.AudioTrackBufferSizeProvider f14962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DefaultAudioOffloadSupportProvider f14963c;
    public final CapabilityChangeListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f14964e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ListenerSet f14965f;
    public Clock g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AudioCapabilities f14966h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AudioCapabilitiesReceiver f14967i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Looper f14968j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Context f14969k;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f14970a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DefaultAudioOffloadSupportProvider f14971b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DefaultAudioSink.AudioTrackBufferSizeProvider f14972c;
        public AudioCapabilities d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f14973e;

        public Builder(Context context) {
            this.f14970a = context != null ? context.getApplicationContext() : null;
            this.f14972c = DefaultAudioSink.AudioTrackBufferSizeProvider.f14999a;
            if (context == null) {
                this.d = AudioCapabilities.g;
            }
            this.f14973e = 8.0f;
        }
    }

    public final class CapabilityChangeListener implements AudioTrackAudioOutput.CapabilityChangeListener {
        public CapabilityChangeListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackAudioOutput.CapabilityChangeListener
        public final void a() {
            AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = AudioTrackAudioOutputProvider.this;
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = audioTrackAudioOutputProvider.f14967i;
            if (audioCapabilitiesReceiver != null) {
                AudioCapabilities audioCapabilities = AudioCapabilities.g;
                audioTrackAudioOutputProvider.f14966h = audioCapabilities;
                audioCapabilitiesReceiver.b(audioCapabilities);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackAudioOutput.CapabilityChangeListener
        public final void b(AudioDeviceInfo audioDeviceInfo) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = AudioTrackAudioOutputProvider.this.f14967i;
            if (audioCapabilitiesReceiver == null || audioDeviceInfo.equals(audioCapabilitiesReceiver.f14873i)) {
                return;
            }
            audioCapabilitiesReceiver.f14873i = audioDeviceInfo;
            Context context = audioCapabilitiesReceiver.f14867a;
            AudioAttributes audioAttributes = audioCapabilitiesReceiver.f14874j;
            List listA = audioCapabilitiesReceiver.a();
            ImmutableList immutableList = AudioCapabilities.f14857e;
            audioCapabilitiesReceiver.b(AudioCapabilities.b(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes, audioDeviceInfo, listA));
        }
    }

    public AudioTrackAudioOutputProvider(Builder builder) {
        Context context = builder.f14970a;
        this.f14961a = context;
        DefaultAudioOffloadSupportProvider defaultAudioOffloadSupportProvider = builder.f14971b;
        defaultAudioOffloadSupportProvider.getClass();
        this.f14963c = defaultAudioOffloadSupportProvider;
        this.f14962b = builder.f14972c;
        this.f14966h = builder.d;
        this.d = context == null ? null : new CapabilityChangeListener();
        this.f14964e = builder.f14973e;
        this.g = Clock.f14143a;
    }

    public final void a(AudioOutputProvider.FormatConfig formatConfig) {
        Context context;
        AudioCapabilities audioCapabilitiesB;
        AudioDeviceInfo audioDeviceInfo = formatConfig.f14891c;
        AudioAttributes audioAttributes = formatConfig.f14890b;
        b();
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.f14967i;
        if (audioCapabilitiesReceiver == null && (context = this.f14961a) != null) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver2 = new AudioCapabilitiesReceiver(context, new s3(this, 6), audioAttributes, audioDeviceInfo);
            this.f14967i = audioCapabilitiesReceiver2;
            if (audioCapabilitiesReceiver2.f14875k) {
                audioCapabilitiesB = audioCapabilitiesReceiver2.f14872h;
                audioCapabilitiesB.getClass();
            } else {
                audioCapabilitiesReceiver2.f14875k = true;
                AudioCapabilitiesReceiver.ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = audioCapabilitiesReceiver2.f14871f;
                if (externalSurroundSoundSettingObserver != null) {
                    externalSurroundSoundSettingObserver.f14877a.registerContentObserver(externalSurroundSoundSettingObserver.f14878b, false, externalSurroundSoundSettingObserver);
                }
                Context context2 = audioCapabilitiesReceiver2.f14867a;
                AudioManager audioManagerA = AudioManagerCompat.a(context2);
                AudioCapabilitiesReceiver.AudioDeviceCallback audioDeviceCallback = audioCapabilitiesReceiver2.d;
                Handler handler = audioCapabilitiesReceiver2.f14869c;
                audioManagerA.registerAudioDeviceCallback(audioDeviceCallback, handler);
                if (Build.VERSION.SDK_INT >= 32 && audioCapabilitiesReceiver2.g == null) {
                    audioCapabilitiesReceiver2.g = new SpatializerWrapper(context2, new z1(audioCapabilitiesReceiver2, 7), Boolean.valueOf(Util.N(context2)));
                }
                audioCapabilitiesB = AudioCapabilities.b(context2, context2.registerReceiver(audioCapabilitiesReceiver2.f14870e, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), audioCapabilitiesReceiver2.f14874j, audioCapabilitiesReceiver2.f14873i, audioCapabilitiesReceiver2.a());
                audioCapabilitiesReceiver2.f14872h = audioCapabilitiesB;
            }
            this.f14966h = audioCapabilitiesB;
        } else if (audioCapabilitiesReceiver != null) {
            if (audioDeviceInfo != null && !audioDeviceInfo.equals(audioCapabilitiesReceiver.f14873i)) {
                audioCapabilitiesReceiver.f14873i = audioDeviceInfo;
                Context context3 = audioCapabilitiesReceiver.f14867a;
                AudioAttributes audioAttributes2 = audioCapabilitiesReceiver.f14874j;
                List listA = audioCapabilitiesReceiver.a();
                ImmutableList immutableList = AudioCapabilities.f14857e;
                audioCapabilitiesReceiver.b(AudioCapabilities.b(context3, context3.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes2, audioDeviceInfo, listA));
            }
            AudioCapabilitiesReceiver audioCapabilitiesReceiver3 = this.f14967i;
            if (!Objects.equals(audioAttributes, audioCapabilitiesReceiver3.f14874j)) {
                audioCapabilitiesReceiver3.f14874j = audioAttributes;
                Context context4 = audioCapabilitiesReceiver3.f14867a;
                AudioDeviceInfo audioDeviceInfo2 = audioCapabilitiesReceiver3.f14873i;
                List listA2 = audioCapabilitiesReceiver3.a();
                ImmutableList immutableList2 = AudioCapabilities.f14857e;
                audioCapabilitiesReceiver3.b(AudioCapabilities.b(context4, context4.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes, audioDeviceInfo2, listA2));
            }
        }
        this.f14966h.getClass();
    }

    public final void b() {
        if (this.f14961a == null) {
            return;
        }
        Looper looperMyLooper = Looper.myLooper();
        Looper looper = this.f14968j;
        boolean z = looper == null || looper == looperMyLooper;
        String name = looper == null ? "null" : looper.getThread().getName();
        String name2 = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null";
        if (z) {
            this.f14968j = looperMyLooper;
        } else {
            md.k(Strings.b("AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s", name, name2));
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public final void i(Clock clock) {
        this.g = clock;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public final AudioOutputProvider.FormatSupport j(AudioOutputProvider.FormatConfig formatConfig) {
        a(formatConfig);
        Format format = formatConfig.f14889a;
        AudioAttributes audioAttributes = formatConfig.f14890b;
        AudioOffloadSupport audioOffloadSupportA = this.f14963c.a(audioAttributes, format);
        AudioOutputProvider.FormatSupport.Builder builder = new AudioOutputProvider.FormatSupport.Builder();
        String str = format.o;
        int i2 = format.I;
        int i3 = 0;
        if (!Objects.equals(str, "audio/raw") ? this.f14966h.c(audioAttributes, format) != null : i2 == 2) {
            i3 = 2;
        }
        builder.d = i3;
        builder.f14904a = audioOffloadSupportA.f14881a;
        builder.f14905b = audioOffloadSupportA.f14882b;
        builder.f14906c = audioOffloadSupportA.f14883c;
        return builder.a();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public final AudioOutputProvider.OutputConfig k(AudioOutputProvider.FormatConfig formatConfig) throws AudioOutputProvider.ConfigurationException {
        int iIntValue;
        int i2;
        int i3;
        int iU;
        boolean z;
        boolean z2;
        boolean z3;
        int i4;
        Format format = formatConfig.f14889a;
        boolean z4 = formatConfig.d;
        AudioAttributes audioAttributes = formatConfig.f14890b;
        a(formatConfig);
        String str = format.o;
        int i5 = format.H;
        int i6 = format.I;
        int i7 = format.G;
        if (Objects.equals(str, "audio/raw")) {
            Preconditions.g(Util.K(i6));
            iIntValue = Util.t(i7);
            iU = Util.u(i6) * i7;
            i2 = 0;
            z2 = false;
            i3 = i6;
            z = false;
        } else {
            AudioOffloadSupport audioOffloadSupportA = z4 ? this.f14963c.a(audioAttributes, format) : AudioOffloadSupport.d;
            if (z4 && audioOffloadSupportA.f14881a) {
                str.getClass();
                int iD = MimeTypes.d(str, format.f13763k);
                int iT = Util.t(i7);
                z = audioOffloadSupportA.f14882b;
                i3 = iD;
                iIntValue = iT;
                iU = -1;
                i2 = 1;
                z2 = true;
            } else {
                Pair pairC = this.f14966h.c(audioAttributes, format);
                if (pairC == null) {
                    throw new AudioOutputProvider.ConfigurationException("Unable to configure passthrough for: " + format);
                }
                int iIntValue2 = ((Integer) pairC.first).intValue();
                iIntValue = ((Integer) pairC.second).intValue();
                i2 = 2;
                i3 = iIntValue2;
                iU = -1;
                z = false;
                z2 = false;
            }
        }
        int i8 = format.f13762j;
        if (Objects.equals(str, "audio/vnd.dts.hd;profile=lbr") && i8 == -1) {
            i8 = 768000;
        }
        int iA = formatConfig.f14894h;
        if (iA != -1) {
            z3 = z;
            i4 = i2;
        } else {
            int i9 = i2;
            int minBufferSize = AudioTrack.getMinBufferSize(i5, iIntValue, i3);
            Preconditions.q(minBufferSize != -2);
            if (iU == -1) {
                iU = 1;
            }
            double d = z2 ? this.f14964e : 1.0d;
            int i10 = i8;
            z3 = z;
            i4 = i9;
            iA = this.f14962b.a(minBufferSize, i3, i4, iU, i5, i10, d);
        }
        AudioOutputProvider.OutputConfig.Builder builder = new AudioOutputProvider.OutputConfig.Builder();
        builder.f14917b = i5;
        builder.f14918c = iIntValue;
        builder.f14916a = i3;
        builder.f14920f = iA;
        builder.f14921h = formatConfig.f14892e;
        builder.g = audioAttributes;
        builder.f14919e = i4 == 1;
        builder.d = formatConfig.g;
        builder.f14923j = z2;
        builder.f14924k = z3;
        builder.f14922i = formatConfig.f14893f;
        return new AudioOutputProvider.OutputConfig(builder);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public final AudioTrackAudioOutput l(AudioOutputProvider.OutputConfig outputConfig) throws AudioOutputProvider.InitializationException {
        Context context;
        Context context2;
        try {
            int i2 = outputConfig.f14912h;
            AudioAttributes audioAttributes = outputConfig.g;
            int i3 = outputConfig.f14913i;
            if (i3 == -1 || (context2 = this.f14961a) == null || Build.VERSION.SDK_INT < 34) {
                context = null;
            } else {
                Context context3 = this.f14969k;
                if (context3 == null || context3.getDeviceId() != i3) {
                    this.f14969k = context2.createDeviceContext(i3);
                }
                context = this.f14969k;
                i2 = 0;
            }
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(outputConfig.d ? new android.media.AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : audioAttributes.c()).setAudioFormat(new AudioFormat.Builder().setSampleRate(outputConfig.f14908b).setChannelMask(outputConfig.f14909c).setEncoding(outputConfig.f14907a).build()).setTransferMode(1).setBufferSizeInBytes(outputConfig.f14911f).setSessionId(i2);
            sessionId.setOffloadedPlayback(outputConfig.f14910e);
            if (Build.VERSION.SDK_INT >= 34 && context != null) {
                sessionId.setContext(context);
            }
            AudioTrack audioTrackBuild = sessionId.build();
            if (audioTrackBuild.getState() == 1) {
                return new AudioTrackAudioOutput(audioTrackBuild, outputConfig, this.d, this.f14964e, this.g);
            }
            try {
                audioTrackBuild.release();
            } catch (Exception unused) {
            }
            throw new AudioOutputProvider.InitializationException();
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            throw new AudioOutputProvider.InitializationException(e2);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public final void m(c cVar) {
        b();
        if (this.f14965f == null) {
            this.f14965f = new ListenerSet(Thread.currentThread());
        }
        this.f14965f.a(cVar);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public final void release() {
        SpatializerWrapper spatializerWrapper;
        ListenerSet listenerSet = this.f14965f;
        if (listenerSet != null) {
            listenerSet.d();
        }
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.f14967i;
        if (audioCapabilitiesReceiver != null) {
            Context context = audioCapabilitiesReceiver.f14867a;
            if (audioCapabilitiesReceiver.f14875k) {
                audioCapabilitiesReceiver.f14872h = null;
                AudioManagerCompat.a(context).unregisterAudioDeviceCallback(audioCapabilitiesReceiver.d);
                if (Build.VERSION.SDK_INT >= 32 && (spatializerWrapper = audioCapabilitiesReceiver.g) != null) {
                    spatializerWrapper.e();
                    audioCapabilitiesReceiver.g = null;
                }
                context.unregisterReceiver(audioCapabilitiesReceiver.f14870e);
                AudioCapabilitiesReceiver.ExternalSurroundSoundSettingObserver externalSurroundSoundSettingObserver = audioCapabilitiesReceiver.f14871f;
                if (externalSurroundSoundSettingObserver != null) {
                    externalSurroundSoundSettingObserver.f14877a.unregisterContentObserver(externalSurroundSoundSettingObserver);
                }
                audioCapabilitiesReceiver.f14875k = false;
            }
        }
    }
}

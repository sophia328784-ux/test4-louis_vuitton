package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessingPipeline;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.SonicAudioProcessor;
import androidx.media3.common.audio.ToInt16PcmAudioProcessor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.ExtractorUtil;
import com.batch.android.x0.h;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.ac;
import defpackage.bm;
import defpackage.ct0;
import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import defpackage.t6;
import defpackage.tr;
import defpackage.xb;
import defpackage.yb;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.DataChannelModule;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultAudioSink implements AudioSink {
    public static final AtomicInteger c0 = new AtomicInteger();
    public long A;
    public long B;
    public long C;
    public int D;
    public boolean E;
    public boolean F;
    public long G;
    public float H;
    public ByteBuffer I;
    public int J;
    public ByteBuffer K;
    public boolean L;
    public boolean M;
    public boolean N;
    public boolean O;
    public boolean P;
    public int Q;
    public boolean R;
    public AuxEffectInfo S;
    public AudioDeviceInfo T;
    public int U;
    public boolean V;
    public long W;
    public boolean X;
    public boolean Y;
    public long Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14988a;
    public long a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DefaultAudioProcessorChain f14989b;
    public Handler b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ChannelMappingAudioProcessor f14990c;
    public final TrimmingAudioProcessor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ToInt16PcmAudioProcessor f14991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ToFloatPcmAudioProcessor f14992f;
    public final ImmutableList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayDeque f14993h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f14994i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AudioOutputListener f14995j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PendingExceptionHolder f14996k;
    public final PendingExceptionHolder l;
    public PlayerId m;
    public AudioSink.Listener n;
    public Configuration o;
    public Configuration p;
    public AudioProcessingPipeline q;
    public AudioOutputProvider r;
    public c s;
    public AudioOutput t;
    public AudioAttributes u;
    public MediaPositionParameters v;
    public MediaPositionParameters w;
    public PlaybackParameters x;
    public boolean y;
    public long z;

    public interface AudioOffloadSupportProvider {
    }

    public final class AudioOutputListener implements AudioOutput.Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioOutputProvider.OutputConfig f14997a;

        public AudioOutputListener(AudioOutputProvider.OutputConfig outputConfig) {
            this.f14997a = outputConfig;
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public final void a(long j2) {
            AudioSink.Listener listener;
            DefaultAudioSink defaultAudioSink = DefaultAudioSink.this;
            if (this == defaultAudioSink.f14995j && (listener = defaultAudioSink.n) != null) {
                MediaCodecAudioRenderer mediaCodecAudioRenderer = MediaCodecAudioRenderer.this;
                mediaCodecAudioRenderer.V1 = true;
                AudioRendererEventListener.EventDispatcher eventDispatcher = mediaCodecAudioRenderer.K1;
                Handler handler = eventDispatcher.f14925a;
                if (handler != null) {
                    handler.post(new xb(eventDispatcher, j2, 0));
                }
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public final void b() {
            AudioSink.Listener listener;
            Renderer.WakeupListener wakeupListener;
            DefaultAudioSink defaultAudioSink = DefaultAudioSink.this;
            if (this == defaultAudioSink.f14995j && (listener = defaultAudioSink.n) != null && defaultAudioSink.O && (wakeupListener = MediaCodecAudioRenderer.this.K) != null) {
                wakeupListener.b();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public final void c() {
            DefaultAudioSink defaultAudioSink = DefaultAudioSink.this;
            if (this == defaultAudioSink.f14995j && defaultAudioSink.M) {
                defaultAudioSink.N = true;
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public final void d() {
            long jX;
            DefaultAudioSink defaultAudioSink = DefaultAudioSink.this;
            if (this == defaultAudioSink.f14995j && defaultAudioSink.n != null) {
                Configuration configuration = defaultAudioSink.p;
                int i2 = configuration.d;
                if (i2 != -1) {
                    long j2 = configuration.f15008e.f14911f / i2;
                    AudioOutput audioOutput = defaultAudioSink.t;
                    audioOutput.getClass();
                    jX = Util.X(audioOutput.k(), j2);
                } else {
                    jX = -9223372036854775807L;
                }
                final long jElapsedRealtime = SystemClock.elapsedRealtime() - defaultAudioSink.W;
                AudioSink.Listener listener = defaultAudioSink.n;
                final int i3 = defaultAudioSink.p.f15008e.f14911f;
                final long jF0 = Util.f0(jX);
                final AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.K1;
                Handler handler = eventDispatcher.f14925a;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: wb
                        @Override // java.lang.Runnable
                        public final void run() {
                            AudioRendererEventListener audioRendererEventListener = eventDispatcher.f14926b;
                            String str = Util.f14242a;
                            audioRendererEventListener.G(i3, jF0, jElapsedRealtime);
                        }
                    });
                }
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioOutput.Listener
        public final void onReleased() {
            DefaultAudioSink.c0.getAndDecrement();
            AudioSink.Listener listener = DefaultAudioSink.this.n;
            if (listener != null) {
                AudioOutputProvider.OutputConfig outputConfig = this.f14997a;
                AudioSink.AudioTrackConfig audioTrackConfig = new AudioSink.AudioTrackConfig(outputConfig.f14907a, outputConfig.f14908b, outputConfig.f14909c, outputConfig.d, outputConfig.f14910e, outputConfig.f14911f);
                AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.K1;
                Handler handler = eventDispatcher.f14925a;
                if (handler != null) {
                    handler.post(new yb(eventDispatcher, audioTrackConfig, 0));
                }
            }
        }
    }

    @Deprecated
    public interface AudioProcessorChain extends androidx.media3.common.audio.AudioProcessorChain {
    }

    public interface AudioTrackBufferSizeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DefaultAudioTrackBufferSizeProvider f14999a;

        static {
            new DefaultAudioTrackBufferSizeProvider.Builder();
            f14999a = new DefaultAudioTrackBufferSizeProvider();
        }

        int a(int i2, int i3, int i4, int i5, int i6, int i7, double d);
    }

    @Deprecated
    public interface AudioTrackProvider {
    }

    public static final class Configuration {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Format f15005a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Format f15006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15007c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AudioOutputProvider.OutputConfig f15008e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AudioProcessingPipeline f15009f;

        public Configuration(Format format, Format format2, int i2, int i3, AudioOutputProvider.OutputConfig outputConfig, AudioProcessingPipeline audioProcessingPipeline) {
            this.f15005a = format;
            this.f15006b = format2;
            this.f15007c = i2;
            this.d = i3;
            this.f15008e = outputConfig;
            this.f15009f = audioProcessingPipeline;
        }

        public static boolean a(Configuration configuration) {
            return Objects.equals(configuration.f15005a.o, "audio/raw");
        }
    }

    public static final class MediaPositionParameters {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final PlaybackParameters f15013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15014b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15015c;
        public long d;

        public MediaPositionParameters(PlaybackParameters playbackParameters, long j2, long j3) {
            this.f15013a = playbackParameters;
            this.f15014b = j2;
            this.f15015c = j3;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputMode {
    }

    public static final class PendingExceptionHolder<T extends Exception> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Exception f15016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f15017b = -9223372036854775807L;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f15018c = -9223372036854775807L;

        public final void a(Exception exc) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.f15016a == null) {
                this.f15016a = exc;
            }
            if (this.f15017b == -9223372036854775807L && DefaultAudioSink.c0.get() <= 0) {
                this.f15017b = 200 + jElapsedRealtime;
            }
            long j2 = this.f15017b;
            if (j2 == -9223372036854775807L || jElapsedRealtime < j2) {
                this.f15018c = jElapsedRealtime + 50;
                return;
            }
            Exception exc2 = this.f15016a;
            if (exc2 != exc) {
                exc2.addSuppressed(exc);
            }
            Exception exc3 = this.f15016a;
            this.f15016a = null;
            this.f15017b = -9223372036854775807L;
            this.f15018c = -9223372036854775807L;
            throw exc3;
        }
    }

    public DefaultAudioSink(Builder builder) {
        int deviceId;
        Context context = builder.f15000a;
        this.f14988a = context == null ? null : context.getApplicationContext();
        this.u = AudioAttributes.f13689i;
        this.f14989b = builder.f15002c;
        this.f14994i = 0;
        this.r = builder.f15004f;
        ChannelMappingAudioProcessor channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.f14990c = channelMappingAudioProcessor;
        TrimmingAudioProcessor trimmingAudioProcessor = new TrimmingAudioProcessor();
        this.d = trimmingAudioProcessor;
        this.f14991e = new ToInt16PcmAudioProcessor();
        this.f14992f = new ToFloatPcmAudioProcessor();
        this.g = ImmutableList.D(trimmingAudioProcessor, channelMappingAudioProcessor);
        this.H = 1.0f;
        this.Q = 0;
        this.S = new AuxEffectInfo(0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        PlaybackParameters playbackParameters = PlaybackParameters.d;
        this.w = new MediaPositionParameters(playbackParameters, 0L, 0L);
        this.x = playbackParameters;
        this.y = false;
        this.f14993h = new ArrayDeque();
        this.f14996k = new PendingExceptionHolder();
        this.l = new PendingExceptionHolder();
        int i2 = -1;
        if (Build.VERSION.SDK_INT >= 34 && context != null && (deviceId = context.getDeviceId()) != 0 && deviceId != -1) {
            i2 = deviceId;
        }
        this.U = i2;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00c0  */
    public static int I(int i2, ByteBuffer byteBuffer) {
        int i3;
        int i4;
        byte b2;
        int i5;
        byte b3;
        int i6;
        int i7;
        int i8;
        int i9;
        if (i2 == 20) {
            if ((byteBuffer.get(5) & 2) == 0) {
                i3 = 0;
            } else {
                byte b4 = byteBuffer.get(26);
                int i10 = 28;
                int i11 = 28;
                for (int i12 = 0; i12 < b4; i12++) {
                    i11 += byteBuffer.get(i12 + 27);
                }
                byte b5 = byteBuffer.get(i11 + 26);
                for (int i13 = 0; i13 < b5; i13++) {
                    i10 += byteBuffer.get(i11 + 27 + i13);
                }
                i3 = i11 + i10;
            }
            int i14 = byteBuffer.get(i3 + 26) + 27 + i3;
            return (int) ((OpusUtil.b(byteBuffer.get(i14), byteBuffer.limit() - i14 > 1 ? byteBuffer.get(i14 + 1) : (byte) 0) * 48000) / 1000000);
        }
        if (i2 != 30) {
            switch (i2) {
                case 5:
                case 6:
                    break;
                case 7:
                case 8:
                    break;
                case 9:
                    int iPosition = byteBuffer.position();
                    String str = Util.f14242a;
                    int iReverseBytes = byteBuffer.getInt(iPosition);
                    if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                        iReverseBytes = Integer.reverseBytes(iReverseBytes);
                    }
                    if ((iReverseBytes & (-2097152)) != -2097152 || (i7 = (iReverseBytes >>> 19) & 3) == 1 || (i8 = (iReverseBytes >>> 17) & 3) == 0) {
                        i6 = -1;
                    } else {
                        int i15 = (iReverseBytes >>> 12) & 15;
                        int i16 = (iReverseBytes >>> 10) & 3;
                        if (i15 == 0 || i15 == 15 || i16 == 3) {
                            i6 = -1;
                        } else {
                            i6 = 1152;
                            if (i8 != 1) {
                                if (i8 != 2) {
                                    if (i8 != 3) {
                                        ct0.c();
                                        return 0;
                                    }
                                    i6 = KyberEngine.KyberPolyBytes;
                                }
                            } else if (i7 != 3) {
                                i6 = 576;
                            }
                        }
                    }
                    if (i6 != -1) {
                        return i6;
                    }
                    ct0.c();
                    return 0;
                case 10:
                    return 1024;
                case 11:
                case 12:
                    return 2048;
                default:
                    switch (i2) {
                        case 14:
                            int iPosition2 = byteBuffer.position();
                            int iLimit = byteBuffer.limit() - 10;
                            int i17 = iPosition2;
                            while (true) {
                                if (i17 <= iLimit) {
                                    String str2 = Util.f14242a;
                                    int iReverseBytes2 = byteBuffer.getInt(i17 + 4);
                                    if (byteBuffer.order() != ByteOrder.BIG_ENDIAN) {
                                        iReverseBytes2 = Integer.reverseBytes(iReverseBytes2);
                                    }
                                    if ((iReverseBytes2 & (-2)) == -126718022) {
                                        i9 = i17 - iPosition2;
                                    } else {
                                        i17++;
                                    }
                                } else {
                                    i9 = -1;
                                }
                            }
                            if (i9 == -1) {
                                return 0;
                            }
                            return (40 << ((byteBuffer.get((byteBuffer.position() + i9) + (((byteBuffer.get((byteBuffer.position() + i9) + 7) & 255) == 187 ? (byte) 1 : (byte) 0) != 0 ? 9 : 8)) >> 4) & 7)) * 16;
                        case 15:
                            return 512;
                        case 16:
                            return 1024;
                        case 17:
                            byte[] bArr = new byte[16];
                            int iPosition3 = byteBuffer.position();
                            byteBuffer.get(bArr);
                            byteBuffer.position(iPosition3);
                            return Ac4Util.c(new ParsableBitArray(bArr)).f16082c;
                        case 18:
                            break;
                        default:
                            md.k(pq0.k(i2, "Unexpected audio encoding: "));
                            return 0;
                    }
                    break;
            }
            if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
                return Ac3Util.f16069a[((byteBuffer.get(byteBuffer.position() + 4) & h.a.f24176e) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
            }
            return DataChannelModule.MAX_SIZE_DATA_CHANNEL;
        }
        if (byteBuffer.getInt(0) == -233094848 || byteBuffer.getInt(0) == -398277519) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == 622876772) {
            return 4096;
        }
        int iPosition4 = byteBuffer.position();
        byte b6 = byteBuffer.get(iPosition4);
        if (b6 != -2) {
            if (b6 == -1) {
                i4 = (byteBuffer.get(iPosition4 + 4) & 7) << 4;
                b3 = byteBuffer.get(iPosition4 + 7);
            } else if (b6 != 31) {
                i4 = (byteBuffer.get(iPosition4 + 4) & 1) << 6;
                b2 = byteBuffer.get(iPosition4 + 5);
            } else {
                i4 = (byteBuffer.get(iPosition4 + 5) & 7) << 4;
                b3 = byteBuffer.get(iPosition4 + 6);
            }
            i5 = b3 & 60;
            return (((i5 >> 2) | i4) + 1) * 32;
        }
        i4 = (byteBuffer.get(iPosition4 + 5) & 1) << 6;
        b2 = byteBuffer.get(iPosition4 + 4);
        i5 = b2 & 252;
        return (((i5 >> 2) | i4) + 1) * 32;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final int A(Format format) {
        boolean z;
        if (!Util.K(format.I) || format.I == 2) {
            z = false;
        } else {
            Format.Builder builderA = format.a();
            builderA.H = 2;
            format = new Format(builderA);
            z = true;
        }
        int i2 = this.r.j(H(format)).d;
        if (i2 != 1) {
            if (i2 != 2) {
                return 0;
            }
            if (!z) {
                return 2;
            }
        }
        return 1;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void B(boolean z) {
        this.y = z;
        MediaPositionParameters mediaPositionParameters = new MediaPositionParameters(P() ? PlaybackParameters.d : this.x, -9223372036854775807L, -9223372036854775807L);
        if (L()) {
            this.v = mediaPositionParameters;
        } else {
            this.w = mediaPositionParameters;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void C(AuxEffectInfo auxEffectInfo) {
        if (this.S.equals(auxEffectInfo)) {
            return;
        }
        int i2 = auxEffectInfo.f13703a;
        float f2 = auxEffectInfo.f13704b;
        AudioOutput audioOutput = this.t;
        if (audioOutput != null) {
            if (this.S.f13703a != i2) {
                audioOutput.l(i2);
            }
            if (i2 != 0) {
                this.t.n(f2);
            }
        }
        this.S = auxEffectInfo;
    }

    public final void D(long j2) {
        PlaybackParameters playbackParameters;
        boolean z;
        boolean zP = P();
        int i2 = 0;
        DefaultAudioProcessorChain defaultAudioProcessorChain = this.f14989b;
        if (zP) {
            playbackParameters = PlaybackParameters.d;
        } else {
            if (this.V || !Configuration.a(this.p)) {
                playbackParameters = PlaybackParameters.d;
            } else {
                int i3 = this.p.f15005a.I;
                playbackParameters = this.x;
                SonicAudioProcessor sonicAudioProcessor = defaultAudioProcessorChain.f15012c;
                float f2 = playbackParameters.f13919a;
                sonicAudioProcessor.getClass();
                Preconditions.g(f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
                if (sonicAudioProcessor.f14085c != f2) {
                    sonicAudioProcessor.f14085c = f2;
                    sonicAudioProcessor.f14089i = true;
                }
                float f3 = playbackParameters.f13920b;
                Preconditions.g(f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM);
                if (sonicAudioProcessor.d != f3) {
                    sonicAudioProcessor.d = f3;
                    sonicAudioProcessor.f14089i = true;
                }
            }
            this.x = playbackParameters;
        }
        PlaybackParameters playbackParameters2 = playbackParameters;
        if (this.V || !Configuration.a(this.p)) {
            z = false;
        } else {
            int i4 = this.p.f15005a.I;
            z = this.y;
            defaultAudioProcessorChain.f15011b.o = z;
        }
        this.y = z;
        this.f14993h.add(new MediaPositionParameters(playbackParameters2, Math.max(0L, j2), Util.X(this.p.f15008e.f14908b, J())));
        AudioProcessingPipeline audioProcessingPipeline = this.p.f15009f;
        this.q = audioProcessingPipeline;
        audioProcessingPipeline.a();
        AudioSink.Listener listener = this.n;
        if (listener != null) {
            boolean z2 = this.y;
            AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.K1;
            Handler handler = eventDispatcher.f14925a;
            if (handler != null) {
                handler.post(new ac(eventDispatcher, z2, i2));
            }
        }
    }

    public final AudioOutput E(AudioOutputProvider.OutputConfig outputConfig) throws AudioSink.InitializationException {
        try {
            return this.r.l(outputConfig);
        } catch (AudioOutputProvider.InitializationException e2) {
            AudioSink.InitializationException initializationException = new AudioSink.InitializationException(0, outputConfig.f14908b, outputConfig.f14909c, outputConfig.f14907a, outputConfig.f14911f, this.p.f15005a, outputConfig.f14910e, e2);
            AudioSink.Listener listener = this.n;
            if (listener == null) {
                throw initializationException;
            }
            ((MediaCodecAudioRenderer.AudioSinkListener) listener).a(initializationException);
            throw initializationException;
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00cd  */
    public final void F(long j2) throws Exception {
        AudioSink.Listener listener;
        Renderer.WakeupListener wakeupListener;
        if (this.K == null) {
            return;
        }
        PendingExceptionHolder pendingExceptionHolder = this.l;
        if (pendingExceptionHolder.f15016a != null && (c0.get() > 0 || SystemClock.elapsedRealtime() < pendingExceptionHolder.f15018c)) {
            return;
        }
        int iRemaining = this.K.remaining();
        boolean z = true;
        try {
            boolean zQ = this.t.q(this.J, j2, this.K);
            this.W = SystemClock.elapsedRealtime();
            pendingExceptionHolder.f15016a = null;
            pendingExceptionHolder.f15017b = -9223372036854775807L;
            pendingExceptionHolder.f15018c = -9223372036854775807L;
            if (this.t.o()) {
                if (this.C > 0) {
                    this.Y = false;
                }
                if (this.O && (listener = this.n) != null && !zQ && !this.Y && (wakeupListener = MediaCodecAudioRenderer.this.K) != null) {
                    wakeupListener.a();
                }
            }
            if (Configuration.a(this.p)) {
                this.B += (long) (iRemaining - this.K.remaining());
            }
            if (zQ) {
                if (!Configuration.a(this.p)) {
                    Preconditions.q(this.K == this.I);
                    this.C = (((long) this.D) * ((long) this.J)) + this.C;
                }
                this.K = null;
            }
        } catch (AudioOutput.WriteException e2) {
            boolean z2 = e2.f14888c;
            if (!z2) {
                z = false;
            } else if (J() <= 0) {
                if (!this.t.o()) {
                    z = false;
                } else if (this.p.f15008e.f14910e) {
                    this.X = true;
                }
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(e2.f14887b, this.p.f15005a, z);
            AudioSink.Listener listener2 = this.n;
            if (listener2 != null) {
                ((MediaCodecAudioRenderer.AudioSinkListener) listener2).a(writeException);
            }
            if (z2) {
                throw writeException;
            }
            pendingExceptionHolder.a(writeException);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0043 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0044 A[RETURN] */
    public final boolean G() throws Exception {
        ByteBuffer byteBuffer;
        if (!this.q.d()) {
            F(Long.MIN_VALUE);
            if (this.K == null) {
                return true;
            }
            return false;
        }
        AudioProcessingPipeline audioProcessingPipeline = this.q;
        if (audioProcessingPipeline.d() && !audioProcessingPipeline.d) {
            audioProcessingPipeline.d = true;
            ((AudioProcessor) audioProcessingPipeline.f14049b.get(0)).i();
        }
        M(Long.MIN_VALUE);
        if (!this.q.c() || ((byteBuffer = this.K) != null && byteBuffer.hasRemaining())) {
            return false;
        }
        return true;
    }

    public final AudioOutputProvider.FormatConfig H(Format format) {
        AudioOutputProvider.FormatConfig.Builder builder = new AudioOutputProvider.FormatConfig.Builder(format);
        builder.f14896b = this.u;
        builder.d = this.f14994i != 0;
        builder.f14897c = this.T;
        builder.f14898e = this.Q;
        builder.g = this.V;
        builder.f14900h = -1;
        builder.f14899f = this.U;
        return new AudioOutputProvider.FormatConfig(builder);
    }

    public final long J() {
        if (!Configuration.a(this.p)) {
            return this.C;
        }
        long j2 = this.B;
        long j3 = this.p.d;
        return ((j2 + j3) - 1) / j3;
    }

    public final boolean K() throws AudioSink.InitializationException {
        AudioOutput audioOutputE;
        LoudnessCodecController loudnessCodecController;
        PendingExceptionHolder pendingExceptionHolder = this.f14996k;
        if (pendingExceptionHolder.f15016a != null && (c0.get() > 0 || SystemClock.elapsedRealtime() < pendingExceptionHolder.f15018c)) {
            return false;
        }
        int i2 = 1;
        try {
            audioOutputE = E(this.p.f15008e);
        } catch (AudioSink.InitializationException e2) {
            int i3 = this.p.f15008e.f14911f;
            while (true) {
                Configuration configuration = this.p;
                if (i3 <= 1000000) {
                    if (!configuration.f15008e.f14910e) {
                        throw e2;
                    }
                    this.X = true;
                    throw e2;
                }
                int i4 = i3 / 2;
                int i5 = configuration.d;
                if (i5 == -1) {
                    i5 = 1;
                }
                int i6 = i4 % i5;
                int i7 = i6 != 0 ? (i5 - i6) + i4 : i4;
                AudioOutputProvider.OutputConfig.Builder builderA = configuration.f15008e.a();
                builderA.f14920f = i7;
                AudioOutputProvider.OutputConfig outputConfig = new AudioOutputProvider.OutputConfig(builderA);
                try {
                    audioOutputE = E(outputConfig);
                    Configuration configuration2 = this.p;
                    this.p = new Configuration(configuration2.f15005a, configuration2.f15006b, configuration2.f15007c, configuration2.d, outputConfig, configuration2.f15009f);
                    break;
                } catch (AudioSink.InitializationException e3) {
                    e2.addSuppressed(e3);
                    i3 = i7;
                }
            }
        }
        this.t = audioOutputE;
        AudioOutputListener audioOutputListener = new AudioOutputListener(this.p.f15008e);
        this.f14995j = audioOutputListener;
        ((AudioTrackAudioOutput) audioOutputE).f14951j.a(audioOutputListener);
        if (this.t.o()) {
            Configuration configuration3 = this.p;
            if (configuration3.f15008e.f14915k) {
                AudioOutput audioOutput = this.t;
                Format format = configuration3.f15005a;
                audioOutput.f(format.J, format.K);
            }
        }
        PlayerId playerId = this.m;
        if (playerId != null) {
            this.t.h(playerId);
        }
        if (L()) {
            this.t.g(this.H);
        }
        int i8 = this.S.f13703a;
        if (i8 != 0) {
            this.t.l(i8);
            this.t.n(this.S.f13704b);
        }
        AudioDeviceInfo audioDeviceInfo = this.T;
        if (audioDeviceInfo != null) {
            this.t.setPreferredDevice(audioDeviceInfo);
        }
        this.F = true;
        int audioSessionId = this.t.getAudioSessionId();
        boolean z = audioSessionId != this.Q;
        this.Q = audioSessionId;
        AudioSink.Listener listener = this.n;
        if (listener != null) {
            AudioOutputProvider.OutputConfig outputConfig2 = this.p.f15008e;
            AudioSink.AudioTrackConfig audioTrackConfig = new AudioSink.AudioTrackConfig(outputConfig2.f14907a, outputConfig2.f14908b, outputConfig2.f14909c, outputConfig2.d, outputConfig2.f14910e, outputConfig2.f14911f);
            AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.K1;
            Handler handler = eventDispatcher.f14925a;
            if (handler != null) {
                handler.post(new yb(eventDispatcher, audioTrackConfig, i2));
            }
            if (z) {
                this.R = true;
                Configuration configuration4 = this.p;
                AudioOutputProvider.OutputConfig.Builder builderA2 = configuration4.f15008e.a();
                builderA2.f14921h = this.Q;
                this.p = new Configuration(configuration4.f15005a, configuration4.f15006b, configuration4.f15007c, configuration4.d, new AudioOutputProvider.OutputConfig(builderA2), configuration4.f15009f);
                Configuration configuration5 = this.o;
                if (configuration5 != null) {
                    AudioOutputProvider.OutputConfig.Builder builderA3 = configuration5.f15008e.a();
                    builderA3.f14921h = this.Q;
                    this.o = new Configuration(configuration5.f15005a, configuration5.f15006b, configuration5.f15007c, configuration5.d, new AudioOutputProvider.OutputConfig(builderA3), configuration5.f15009f);
                }
                AudioSink.Listener listener2 = this.n;
                int i9 = this.Q;
                MediaCodecAudioRenderer mediaCodecAudioRenderer = MediaCodecAudioRenderer.this;
                if (Build.VERSION.SDK_INT >= 35 && (loudnessCodecController = mediaCodecAudioRenderer.M1) != null) {
                    loudnessCodecController.d(i9);
                }
                AudioRendererEventListener.EventDispatcher eventDispatcher2 = mediaCodecAudioRenderer.K1;
                Handler handler2 = eventDispatcher2.f14925a;
                if (handler2 != null) {
                    handler2.post(new t6(eventDispatcher2, i9, i2));
                }
            }
        }
        return true;
    }

    public final boolean L() {
        return this.t != null;
    }

    public final void M(long j2) throws Exception {
        ByteBuffer byteBuffer;
        F(j2);
        if (this.K != null) {
            return;
        }
        if (!this.q.d()) {
            ByteBuffer byteBuffer2 = this.I;
            if (byteBuffer2 != null) {
                O(byteBuffer2);
                F(j2);
                return;
            }
            return;
        }
        while (!this.q.c()) {
            do {
                AudioProcessingPipeline audioProcessingPipeline = this.q;
                if (audioProcessingPipeline.d()) {
                    ByteBuffer byteBuffer3 = audioProcessingPipeline.f14050c[audioProcessingPipeline.b()];
                    if (byteBuffer3.hasRemaining()) {
                        byteBuffer = byteBuffer3;
                    } else {
                        audioProcessingPipeline.e(AudioProcessor.f14051a);
                        byteBuffer = audioProcessingPipeline.f14050c[audioProcessingPipeline.b()];
                    }
                } else {
                    byteBuffer = AudioProcessor.f14051a;
                }
                if (byteBuffer.hasRemaining()) {
                    O(byteBuffer);
                    F(j2);
                } else {
                    ByteBuffer byteBuffer4 = this.I;
                    if (byteBuffer4 == null || !byteBuffer4.hasRemaining()) {
                        return;
                    }
                    AudioProcessingPipeline audioProcessingPipeline2 = this.q;
                    ByteBuffer byteBuffer5 = this.I;
                    if (audioProcessingPipeline2.d() && !audioProcessingPipeline2.d) {
                        audioProcessingPipeline2.e(byteBuffer5);
                    }
                }
            } while (this.K == null);
            return;
        }
    }

    public final void N() {
        if (this.p != null) {
            Configuration configuration = this.o;
            if (configuration != null) {
                this.p = configuration;
                this.o = null;
            }
            try {
                AudioOutputProvider.OutputConfig outputConfigK = this.r.k(H(this.p.f15006b));
                Configuration configuration2 = this.p;
                this.p = new Configuration(configuration2.f15005a, configuration2.f15006b, configuration2.f15007c, configuration2.d, outputConfigK, configuration2.f15009f);
            } catch (AudioOutputProvider.ConfigurationException e2) {
                bm.i(new AudioSink.ConfigurationException(e2, this.p.f15005a));
                return;
            }
        }
        flush();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x003c  */
    /* JADX WARN: Code duplicated, block: B:54:0x016f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:55:0x0171  */
    /* JADX WARN: Code duplicated, block: B:57:0x0174  */
    /* JADX WARN: Code duplicated, block: B:59:0x0178  */
    /* JADX WARN: Code duplicated, block: B:61:0x017c  */
    /* JADX WARN: Code duplicated, block: B:63:0x0180  */
    /* JADX WARN: Code duplicated, block: B:65:0x0184  */
    /* JADX WARN: Code duplicated, block: B:67:0x0188  */
    /* JADX WARN: Code duplicated, block: B:69:0x018c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:70:0x018e  */
    /* JADX WARN: Code duplicated, block: B:71:0x0197  */
    /* JADX WARN: Code duplicated, block: B:74:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:75:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:76:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:77:0x01db  */
    /* JADX WARN: Code duplicated, block: B:78:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:79:0x0205 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0207  */
    /* JADX WARN: Code duplicated, block: B:81:0x020f  */
    /* JADX WARN: Code duplicated, block: B:82:0x0216  */
    /* JADX WARN: Code duplicated, block: B:83:0x021d  */
    /* JADX WARN: Code duplicated, block: B:93:0x019f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x0231 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x005d A[SYNTHETIC] */
    public final void O(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferOrder;
        int i2;
        byte b2;
        int i3;
        int i4;
        int i5;
        Preconditions.q(this.K == null);
        if (byteBuffer.hasRemaining()) {
            if (Configuration.a(this.p)) {
                int iZ = (int) Util.Z(Util.R(20L), this.p.f15008e.f14908b, 1000000L, RoundingMode.UP);
                long J = J();
                long j2 = iZ;
                if (J >= j2) {
                    byteBufferOrder = byteBuffer;
                } else {
                    Configuration configuration = this.p;
                    int i6 = configuration.f15008e.f14907a;
                    int i7 = configuration.d;
                    int i8 = (int) J;
                    byteBufferOrder = ByteBuffer.allocateDirect(byteBuffer.remaining()).order(ByteOrder.nativeOrder());
                    int iPosition = byteBuffer.position();
                    while (byteBuffer.hasRemaining() && i8 < iZ) {
                        if (i6 != 2) {
                            if (i6 == 3) {
                                i4 = (byteBuffer.get() & 255) << 24;
                            } else if (i6 == 4) {
                                float fI = Util.i(byteBuffer.getFloat(), -1.0f, 1.0f);
                                i4 = (int) (fI < Call.Parameters.DEFAULT_CAMERA_ZOOM ? (-fI) * (-2.14748365E9f) : fI * 2.14748365E9f);
                            } else if (i6 == 21) {
                                i2 = ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                b2 = byteBuffer.get();
                            } else if (i6 != 22) {
                                if (i6 == 268435456) {
                                    i2 = (byteBuffer.get() & 255) << 24;
                                    i3 = (byteBuffer.get() & 255) << 16;
                                } else if (i6 == 1342177280) {
                                    i2 = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16);
                                    i3 = (byteBuffer.get() & 255) << 8;
                                } else if (i6 == 1610612736) {
                                    i2 = ((byteBuffer.get() & 255) << 24) | ((byteBuffer.get() & 255) << 16) | ((byteBuffer.get() & 255) << 8);
                                    i3 = byteBuffer.get() & 255;
                                } else if (i6 != 1879048192) {
                                    r81.b();
                                    return;
                                } else {
                                    double dMax = Math.max(-1.0d, Math.min(byteBuffer.getDouble(), 1.0d));
                                    i4 = (int) (dMax < 0.0d ? (-dMax) * (-2.147483648E9d) : dMax * 2.147483647E9d);
                                }
                                i4 = i2 | i3;
                            } else {
                                i2 = (byteBuffer.get() & 255) | ((byteBuffer.get() & 255) << 8) | ((byteBuffer.get() & 255) << 16);
                                b2 = byteBuffer.get();
                            }
                            i5 = (int) ((((long) i4) * ((long) i8)) / j2);
                            if (i6 != 2) {
                                byteBufferOrder.put((byte) (i5 >> 16));
                                byteBufferOrder.put((byte) (i5 >> 24));
                            } else if (i6 != 3) {
                                byteBufferOrder.put((byte) (i5 >> 24));
                            } else if (i6 != 4) {
                                if (i6 != 21) {
                                    byteBufferOrder.put((byte) (i5 >> 8));
                                    byteBufferOrder.put((byte) (i5 >> 16));
                                    byteBufferOrder.put((byte) (i5 >> 24));
                                } else if (i6 != 22) {
                                    byteBufferOrder.put((byte) i5);
                                    byteBufferOrder.put((byte) (i5 >> 8));
                                    byteBufferOrder.put((byte) (i5 >> 16));
                                    byteBufferOrder.put((byte) (i5 >> 24));
                                } else if (i6 != 268435456) {
                                    byteBufferOrder.put((byte) (i5 >> 24));
                                    byteBufferOrder.put((byte) (i5 >> 16));
                                } else if (i6 != 1342177280) {
                                    byteBufferOrder.put((byte) (i5 >> 24));
                                    byteBufferOrder.put((byte) (i5 >> 16));
                                    byteBufferOrder.put((byte) (i5 >> 8));
                                } else if (i6 != 1610612736) {
                                    byteBufferOrder.put((byte) (i5 >> 24));
                                    byteBufferOrder.put((byte) (i5 >> 16));
                                    byteBufferOrder.put((byte) (i5 >> 8));
                                    byteBufferOrder.put((byte) i5);
                                } else if (i6 == 1879048192) {
                                    r81.b();
                                    return;
                                } else if (i5 < 0) {
                                    byteBufferOrder.putDouble((-i5) / (-2.147483648E9d));
                                } else {
                                    byteBufferOrder.putDouble(((double) i5) / 2.147483647E9d);
                                }
                            } else if (i5 < 0) {
                                byteBufferOrder.putFloat((-i5) / (-2.14748365E9f));
                            } else {
                                byteBufferOrder.putFloat(i5 / 2.14748365E9f);
                            }
                            if (byteBuffer.position() == iPosition + i7) {
                                i8++;
                                iPosition = byteBuffer.position();
                            }
                        } else {
                            i2 = (byteBuffer.get() & 255) << 16;
                            b2 = byteBuffer.get();
                        }
                        i3 = (b2 & 255) << 24;
                        i4 = i2 | i3;
                        i5 = (int) ((((long) i4) * ((long) i8)) / j2);
                        if (i6 != 2) {
                            byteBufferOrder.put((byte) (i5 >> 16));
                            byteBufferOrder.put((byte) (i5 >> 24));
                        } else if (i6 != 3) {
                            byteBufferOrder.put((byte) (i5 >> 24));
                        } else if (i6 != 4) {
                            if (i6 != 21) {
                                byteBufferOrder.put((byte) (i5 >> 8));
                                byteBufferOrder.put((byte) (i5 >> 16));
                                byteBufferOrder.put((byte) (i5 >> 24));
                            } else if (i6 != 22) {
                                byteBufferOrder.put((byte) i5);
                                byteBufferOrder.put((byte) (i5 >> 8));
                                byteBufferOrder.put((byte) (i5 >> 16));
                                byteBufferOrder.put((byte) (i5 >> 24));
                            } else if (i6 != 268435456) {
                                byteBufferOrder.put((byte) (i5 >> 24));
                                byteBufferOrder.put((byte) (i5 >> 16));
                            } else if (i6 != 1342177280) {
                                byteBufferOrder.put((byte) (i5 >> 24));
                                byteBufferOrder.put((byte) (i5 >> 16));
                                byteBufferOrder.put((byte) (i5 >> 8));
                            } else if (i6 != 1610612736) {
                                byteBufferOrder.put((byte) (i5 >> 24));
                                byteBufferOrder.put((byte) (i5 >> 16));
                                byteBufferOrder.put((byte) (i5 >> 8));
                                byteBufferOrder.put((byte) i5);
                            } else if (i6 == 1879048192) {
                                r81.b();
                                return;
                            } else if (i5 < 0) {
                                byteBufferOrder.putDouble((-i5) / (-2.147483648E9d));
                            } else {
                                byteBufferOrder.putDouble(((double) i5) / 2.147483647E9d);
                            }
                        } else if (i5 < 0) {
                            byteBufferOrder.putFloat((-i5) / (-2.14748365E9f));
                        } else {
                            byteBufferOrder.putFloat(i5 / 2.14748365E9f);
                        }
                        if (byteBuffer.position() == iPosition + i7) {
                            i8++;
                            iPosition = byteBuffer.position();
                        }
                    }
                    byteBufferOrder.put(byteBuffer);
                    byteBufferOrder.flip();
                }
            } else {
                byteBufferOrder = byteBuffer;
            }
            this.K = byteBufferOrder;
        }
    }

    public final boolean P() {
        Configuration configuration = this.p;
        return configuration != null && configuration.f15008e.f14914j;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final PlaybackParameters a() {
        return this.x;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final boolean b(Format format) {
        return A(format) != 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void c() {
        this.O = true;
        if (L()) {
            this.t.c();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void d(PlaybackParameters playbackParameters) {
        if (P()) {
            this.x = playbackParameters;
            if (L()) {
                this.t.d(this.x);
                this.x = this.t.a();
                return;
            }
            return;
        }
        PlaybackParameters playbackParameters2 = new PlaybackParameters(Util.i(playbackParameters.f13919a, 0.1f, 8.0f), Util.i(playbackParameters.f13920b, 0.1f, 8.0f));
        this.x = playbackParameters2;
        MediaPositionParameters mediaPositionParameters = new MediaPositionParameters(playbackParameters2, -9223372036854775807L, -9223372036854775807L);
        if (L()) {
            this.v = mediaPositionParameters;
        } else {
            this.w = mediaPositionParameters;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final boolean e() {
        if (L()) {
            return this.L && !l();
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void f(int i2, int i3) {
        Configuration configuration;
        AudioOutput audioOutput = this.t;
        if (audioOutput == null || !audioOutput.o() || (configuration = this.p) == null || !configuration.f15008e.f14915k) {
            return;
        }
        this.t.f(i2, i3);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void flush() {
        if (L()) {
            this.z = 0L;
            this.A = 0L;
            this.B = 0L;
            this.C = 0L;
            this.Y = false;
            this.D = 0;
            this.w = new MediaPositionParameters(this.x, 0L, 0L);
            this.G = 0L;
            this.v = null;
            this.f14993h.clear();
            this.I = null;
            this.J = 0;
            this.K = null;
            this.M = false;
            this.L = false;
            this.N = false;
            this.d.o = 0L;
            AudioProcessingPipeline audioProcessingPipeline = this.p.f15009f;
            this.q = audioProcessingPipeline;
            audioProcessingPipeline.a();
            this.f14995j = null;
            Configuration configuration = this.o;
            if (configuration != null) {
                this.p = configuration;
                this.o = null;
            }
            c0.incrementAndGet();
            this.t.release();
            this.t = null;
        }
        PendingExceptionHolder pendingExceptionHolder = this.l;
        pendingExceptionHolder.f15016a = null;
        pendingExceptionHolder.f15017b = -9223372036854775807L;
        pendingExceptionHolder.f15018c = -9223372036854775807L;
        PendingExceptionHolder pendingExceptionHolder2 = this.f14996k;
        pendingExceptionHolder2.f15016a = null;
        pendingExceptionHolder2.f15017b = -9223372036854775807L;
        pendingExceptionHolder2.f15018c = -9223372036854775807L;
        this.Z = 0L;
        this.a0 = 0L;
        Handler handler = this.b0;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void g(float f2) {
        if (this.H != f2) {
            this.H = f2;
            if (L()) {
                this.t.g(this.H);
            }
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void h(PlayerId playerId) {
        this.m = playerId;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void i(Clock clock) {
        this.r.i(clock);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void j(AudioAttributes audioAttributes) {
        if (this.u.equals(audioAttributes)) {
            return;
        }
        this.u = audioAttributes;
        if (this.V) {
            return;
        }
        N();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final AudioOffloadSupport k(Format format) {
        if (this.X) {
            return AudioOffloadSupport.d;
        }
        AudioOutputProvider.FormatSupport formatSupportJ = this.r.j(H(format));
        AudioOffloadSupport.Builder builder = new AudioOffloadSupport.Builder();
        builder.f14884a = formatSupportJ.f14901a;
        builder.f14885b = formatSupportJ.f14902b;
        builder.f14886c = formatSupportJ.f14903c;
        return builder.a();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final boolean l() {
        if (!L()) {
            return false;
        }
        if (this.t.o() && this.N) {
            return false;
        }
        long J = J();
        long jI = this.t.i();
        AudioOutput audioOutput = this.t;
        audioOutput.getClass();
        return J > Util.Z(jI, (long) audioOutput.k(), 1000000L, RoundingMode.UP);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void m(int i2) {
        if (this.R) {
            if (this.Q != i2) {
                return;
            } else {
                this.R = false;
            }
        }
        if (this.Q != i2) {
            this.Q = i2;
            this.P = i2 != 0;
            N();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final long n() {
        if (!L()) {
            return -9223372036854775807L;
        }
        if (Configuration.a(this.p)) {
            return Util.X(this.p.f15008e.f14908b, this.t.p());
        }
        long jP = this.t.p();
        int iB = ExtractorUtil.b(this.p.f15008e.f14907a);
        Preconditions.q(iB != -2147483647);
        return Util.Z(jP, 1000000L, iB, RoundingMode.DOWN);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void o(AudioSink.Listener listener) {
        this.n = listener;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void p(int i2) {
        this.f14994i = i2;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void pause() {
        this.O = false;
        if (L()) {
            this.t.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void q() {
        if (this.V) {
            this.V = false;
            N();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void r(AudioOutputProvider audioOutputProvider) {
        if (audioOutputProvider.equals(this.r)) {
            return;
        }
        this.r.release();
        this.r = audioOutputProvider;
        c cVar = this.s;
        if (cVar != null) {
            audioOutputProvider.m(cVar);
        }
        N();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void release() {
        this.r.release();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void reset() {
        flush();
        UnmodifiableListIterator unmodifiableListIteratorListIterator = this.g.listIterator(0);
        while (unmodifiableListIteratorListIterator.hasNext()) {
            ((AudioProcessor) unmodifiableListIteratorListIterator.next()).reset();
        }
        this.f14991e.reset();
        this.f14992f.reset();
        AudioProcessingPipeline audioProcessingPipeline = this.q;
        if (audioProcessingPipeline != null) {
            ImmutableList immutableList = audioProcessingPipeline.f14048a;
            for (int i2 = 0; i2 < immutableList.size(); i2++) {
                AudioProcessor audioProcessor = (AudioProcessor) immutableList.get(i2);
                audioProcessor.h(AudioProcessor.StreamMetadata.f14056b);
                audioProcessor.reset();
            }
            audioProcessingPipeline.f14049b.clear();
            audioProcessingPipeline.f14050c = new ByteBuffer[0];
            AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.f14052e;
            audioProcessingPipeline.d = false;
        }
        this.O = false;
        this.X = false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void s(int i2) {
        if (i2 == 0 || i2 == -1) {
            i2 = -1;
        }
        if (this.U == i2) {
            return;
        }
        this.U = i2;
        N();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.T = audioDeviceInfo;
        AudioOutput audioOutput = this.t;
        if (audioOutput != null) {
            audioOutput.setPreferredDevice(audioDeviceInfo);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final long t() {
        ArrayDeque arrayDeque;
        long j2;
        if (!L() || this.F) {
            return Long.MIN_VALUE;
        }
        long jMin = Math.min(this.t.i(), Util.X(this.p.f15008e.f14908b, J()));
        while (true) {
            arrayDeque = this.f14993h;
            if (arrayDeque.isEmpty() || jMin < ((MediaPositionParameters) arrayDeque.getFirst()).f15015c) {
                break;
            }
            this.w = (MediaPositionParameters) arrayDeque.remove();
        }
        MediaPositionParameters mediaPositionParameters = this.w;
        long jA = jMin - mediaPositionParameters.f15015c;
        long jA2 = Util.A(mediaPositionParameters.f15013a.f13919a, jA);
        boolean zIsEmpty = arrayDeque.isEmpty();
        DefaultAudioProcessorChain defaultAudioProcessorChain = this.f14989b;
        if (zIsEmpty) {
            SonicAudioProcessor sonicAudioProcessor = defaultAudioProcessorChain.f15012c;
            if (sonicAudioProcessor.isActive()) {
                jA = sonicAudioProcessor.a(jA);
            }
            MediaPositionParameters mediaPositionParameters2 = this.w;
            j2 = mediaPositionParameters2.f15014b + jA;
            mediaPositionParameters2.d = jA - jA2;
        } else {
            MediaPositionParameters mediaPositionParameters3 = this.w;
            j2 = mediaPositionParameters3.f15014b + jA2 + mediaPositionParameters3.d;
        }
        long j3 = defaultAudioProcessorChain.f15011b.q;
        long jX = Util.X(this.p.f15008e.f14908b, j3) + j2;
        long j4 = this.Z;
        if (j3 > j4) {
            long jX2 = Util.X(this.p.f15008e.f14908b, j3 - j4);
            this.Z = j3;
            this.a0 += jX2;
            if (this.b0 == null) {
                this.b0 = new Handler(Looper.myLooper());
            }
            this.b0.removeCallbacksAndMessages(null);
            this.b0.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.audio.d
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultAudioSink defaultAudioSink = this.f15037b;
                    if (defaultAudioSink.a0 >= 300000) {
                        MediaCodecAudioRenderer.this.U1 = true;
                        defaultAudioSink.a0 = 0L;
                    }
                }
            }, 100L);
        }
        return jX;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void u() {
        if (!this.L && L() && G()) {
            if (!this.M) {
                this.M = true;
                if (this.t.o()) {
                    this.N = false;
                }
                this.t.stop();
            }
            this.L = true;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:103:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:105:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:107:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:114:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x005e  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:55:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:58:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:60:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:65:0x0100  */
    /* JADX WARN: Code duplicated, block: B:67:0x0108  */
    /* JADX WARN: Code duplicated, block: B:74:0x011f  */
    /* JADX WARN: Code duplicated, block: B:77:0x0127  */
    /* JADX WARN: Code duplicated, block: B:78:0x012c  */
    /* JADX WARN: Code duplicated, block: B:80:0x0136  */
    /* JADX WARN: Code duplicated, block: B:81:0x0141  */
    /* JADX WARN: Code duplicated, block: B:84:0x0157  */
    /* JADX WARN: Code duplicated, block: B:88:0x0168  */
    /* JADX WARN: Code duplicated, block: B:92:0x0178  */
    /* JADX WARN: Code duplicated, block: B:95:0x017f  */
    /* JADX WARN: Code duplicated, block: B:97:0x018f  */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0118, code lost:
    
        if (r5 == 0) goto L71;
     */
    @Override // androidx.media3.exoplayer.audio.AudioSink
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean v(int r19, long r20, java.nio.ByteBuffer r22) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.audio.DefaultAudioSink.v(int, long, java.nio.ByteBuffer):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.media3.exoplayer.audio.c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void w(Format format, int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessingPipeline audioProcessingPipeline;
        Format format2;
        int i2;
        int iU;
        if (this.s == null && this.f14988a != null) {
            ?? r0 = new AudioOutputProvider.Listener() { // from class: androidx.media3.exoplayer.audio.c
                @Override // androidx.media3.exoplayer.audio.AudioOutputProvider.Listener
                public final void a() {
                    RendererCapabilities.Listener listener;
                    AudioSink.Listener listener2 = this.f15036a.n;
                    if (listener2 != null) {
                        MediaCodecAudioRenderer mediaCodecAudioRenderer = MediaCodecAudioRenderer.this;
                        synchronized (mediaCodecAudioRenderer.f14562b) {
                            listener = mediaCodecAudioRenderer.s;
                        }
                        if (listener != null) {
                            listener.a(mediaCodecAudioRenderer);
                        }
                    }
                }
            };
            this.s = r0;
            this.r.m(r0);
        }
        String str = format.o;
        int i3 = format.I;
        if ("audio/raw".equals(str)) {
            Preconditions.g(Util.K(i3));
            int iU2 = Util.u(i3) * format.G;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            builder.g(this.g);
            builder.e(this.f14991e);
            builder.i(this.f14989b.f15010a);
            audioProcessingPipeline = new AudioProcessingPipeline(builder.j());
            if (audioProcessingPipeline.equals(this.q)) {
                audioProcessingPipeline = this.q;
            }
            int i4 = format.J;
            int i5 = format.K;
            TrimmingAudioProcessor trimmingAudioProcessor = this.d;
            trimmingAudioProcessor.f15030i = i4;
            trimmingAudioProcessor.f15031j = i5;
            this.f14990c.f14984i = iArr;
            AudioProcessor.AudioFormat audioFormat = new AudioProcessor.AudioFormat(format);
            try {
                ImmutableList immutableList = audioProcessingPipeline.f14048a;
                if (audioFormat.equals(AudioProcessor.AudioFormat.f14052e)) {
                    throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
                }
                for (int i6 = 0; i6 < immutableList.size(); i6++) {
                    AudioProcessor audioProcessor = (AudioProcessor) immutableList.get(i6);
                    AudioProcessor.AudioFormat audioFormatJ = audioProcessor.j(audioFormat);
                    if (audioProcessor.isActive()) {
                        Preconditions.q(!audioFormatJ.equals(AudioProcessor.AudioFormat.f14052e));
                        audioFormat = audioFormatJ;
                    }
                }
                int i7 = audioFormat.f14054b;
                int i8 = audioFormat.f14055c;
                Format.Builder builderA = format.a();
                builderA.H = i8;
                builderA.G = audioFormat.f14053a;
                builderA.F = i7;
                format2 = new Format(builderA);
                i2 = iU2;
                iU = Util.u(i8) * i7;
            } catch (AudioProcessor.UnhandledAudioFormatException e2) {
                throw new AudioSink.ConfigurationException(e2, format);
            }
        } else {
            audioProcessingPipeline = new AudioProcessingPipeline(ImmutableList.x());
            format2 = format;
            i2 = -1;
            iU = -1;
        }
        AudioProcessingPipeline audioProcessingPipeline2 = audioProcessingPipeline;
        AudioOutputProvider.FormatConfig formatConfigH = H(format2);
        Format format3 = formatConfigH.f14889a;
        try {
            AudioOutputProvider.OutputConfig outputConfigK = this.r.k(formatConfigH);
            int i9 = outputConfigK.f14907a;
            boolean z = outputConfigK.f14910e;
            if (i9 == 0) {
                throw new AudioSink.ConfigurationException(tr.i("Invalid output encoding (isOffload=", ")", z), format3);
            }
            if (outputConfigK.f14909c == 0) {
                throw new AudioSink.ConfigurationException(tr.i("Invalid output channel config (isOffload=", ")", z), format3);
            }
            this.X = false;
            Configuration configuration = new Configuration(format, format2, i2, iU, outputConfigK, audioProcessingPipeline2);
            if (L()) {
                this.o = configuration;
            } else {
                this.p = configuration;
            }
        } catch (AudioOutputProvider.ConfigurationException e3) {
            throw new AudioSink.ConfigurationException(e3, format);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void x() {
        this.E = true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final void y() {
        Preconditions.q(this.P);
        if (this.V) {
            return;
        }
        this.V = true;
        N();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public final AudioCapabilities z() {
        AudioOutputProvider audioOutputProvider = this.r;
        if (audioOutputProvider instanceof AudioTrackAudioOutputProvider) {
            return ((AudioTrackAudioOutputProvider) audioOutputProvider).f14966h;
        }
        return null;
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15000a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public AudioCapabilities f15001b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DefaultAudioProcessorChain f15002c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public DefaultAudioTrackBufferSizeProvider f15003e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public AudioTrackAudioOutputProvider f15004f;
        public DefaultAudioOffloadSupportProvider g;

        @Deprecated
        public Builder() {
            this.f15000a = null;
            this.f15001b = AudioCapabilities.g;
        }

        public final DefaultAudioSink a() {
            Preconditions.q(!this.d);
            this.d = true;
            if (this.f15002c == null) {
                this.f15002c = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = this.f15004f;
            DefaultAudioOffloadSupportProvider defaultAudioOffloadSupportProvider = this.g;
            if (audioTrackAudioOutputProvider == null) {
                Context context = this.f15000a;
                if (defaultAudioOffloadSupportProvider == null) {
                    this.g = new DefaultAudioOffloadSupportProvider(context);
                }
                if (this.f15003e == null) {
                    this.f15003e = AudioTrackBufferSizeProvider.f14999a;
                }
                AudioTrackAudioOutputProvider.Builder builder = new AudioTrackAudioOutputProvider.Builder(context);
                AudioCapabilities audioCapabilities = context != null ? null : this.f15001b;
                Context context2 = builder.f14970a;
                if (context2 == null) {
                    builder.d = audioCapabilities;
                }
                DefaultAudioOffloadSupportProvider defaultAudioOffloadSupportProvider2 = this.g;
                builder.f14971b = defaultAudioOffloadSupportProvider2;
                builder.f14972c = this.f15003e;
                if (defaultAudioOffloadSupportProvider2 == null) {
                    builder.f14971b = new DefaultAudioOffloadSupportProvider(context2);
                }
                this.f15004f = new AudioTrackAudioOutputProvider(builder);
            } else {
                Preconditions.q(defaultAudioOffloadSupportProvider == null);
                Preconditions.q(this.f15003e == null);
            }
            return new DefaultAudioSink(this);
        }

        public Builder(Context context) {
            this.f15000a = context;
            this.f15001b = AudioCapabilities.g;
        }
    }

    public static class DefaultAudioProcessorChain implements AudioProcessorChain {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioProcessor[] f15010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SilenceSkippingAudioProcessor f15011b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SonicAudioProcessor f15012c;

        public DefaultAudioProcessorChain(AudioProcessor[] audioProcessorArr, SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, SonicAudioProcessor sonicAudioProcessor) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f15010a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.f15011b = silenceSkippingAudioProcessor;
            this.f15012c = sonicAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = sonicAudioProcessor;
        }

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new SilenceSkippingAudioProcessor(), new SonicAudioProcessor());
        }
    }
}

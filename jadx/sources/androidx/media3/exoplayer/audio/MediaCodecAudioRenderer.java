package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.MediaClock;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.LoudnessCodecController;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.mediacodec.e;
import androidx.media3.exoplayer.mediacodec.g;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import defpackage.b5;
import defpackage.bc;
import defpackage.r6;
import defpackage.vb;
import defpackage.zb;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.DataChannelModule;

/* JADX INFO: loaded from: classes.dex */
public class MediaCodecAudioRenderer extends MediaCodecRenderer implements MediaClock {
    public final Context J1;
    public final AudioRendererEventListener.EventDispatcher K1;
    public final AudioSink L1;
    public final LoudnessCodecController M1;
    public int N1;
    public boolean O1;
    public Format P1;
    public Format Q1;
    public long R1;
    public boolean S1;
    public boolean T1;
    public boolean U1;
    public boolean V1;
    public int W1;
    public boolean X1;
    public long Y1;

    public final class AudioSinkListener implements AudioSink.Listener {
        public AudioSinkListener() {
        }

        public final void a(Exception exc) {
            Log.e("Audio sink error", exc);
            AudioRendererEventListener.EventDispatcher eventDispatcher = MediaCodecAudioRenderer.this.K1;
            Handler handler = eventDispatcher.f14925a;
            if (handler != null) {
                handler.post(new zb(eventDispatcher, exc, 1));
            }
        }
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z, Handler handler, AudioRendererEventListener audioRendererEventListener, AudioSink audioSink, LoudnessCodecController loudnessCodecController) {
        super(context.getApplicationContext(), 1, factory, mediaCodecSelector, z, 44100.0f);
        this.J1 = context.getApplicationContext();
        this.L1 = audioSink;
        this.M1 = loudnessCodecController;
        this.W1 = -1000;
        this.K1 = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.Y1 = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void A0() {
        this.L1.x();
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean D0(long j2, long j3, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i2, int i3, int i4, long j4, boolean z, boolean z2, Format format) throws ExoPlaybackException {
        int i5;
        int i6;
        byteBuffer.getClass();
        this.Y1 = -9223372036854775807L;
        if (this.Q1 != null && (i3 & 2) != 0) {
            mediaCodecAdapter.getClass();
            mediaCodecAdapter.l(i2);
            return true;
        }
        AudioSink audioSink = this.L1;
        if (z) {
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.l(i2);
            }
            this.y1.f14577f += i4;
            audioSink.x();
            return true;
        }
        try {
            if (!audioSink.v(i4, j4, byteBuffer)) {
                this.Y1 = j4;
                return false;
            }
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.l(i2);
            }
            this.y1.f14576e += i4;
            return true;
        } catch (AudioSink.InitializationException e2) {
            Format format2 = this.P1;
            if (this.i1) {
                RendererConfiguration rendererConfiguration = this.f14564e;
                rendererConfiguration.getClass();
                if (rendererConfiguration.f14778a != 0) {
                    i6 = 5004;
                } else {
                    i6 = 5001;
                }
            } else {
                i6 = 5001;
            }
            throw J(e2, format2, e2.f14929c, i6);
        } catch (AudioSink.WriteException e3) {
            if (this.i1) {
                RendererConfiguration rendererConfiguration2 = this.f14564e;
                rendererConfiguration2.getClass();
                if (rendererConfiguration2.f14778a != 0) {
                    i5 = 5003;
                } else {
                    i5 = 5002;
                }
            } else {
                i5 = 5002;
            }
            throw J(e3, format, e3.f14931c, i5);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void G0() throws ExoPlaybackException {
        try {
            this.L1.u();
            if (g0() != -9223372036854775807L) {
                this.Y1 = g0();
            }
        } catch (AudioSink.WriteException e2) {
            throw J(e2, e2.d, e2.f14931c, this.i1 ? 5003 : 5002);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final MediaClock I() {
        return this;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void K() {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        this.T1 = true;
        this.P1 = null;
        this.Y1 = -9223372036854775807L;
        this.V1 = false;
        try {
            this.L1.flush();
            try {
                super.K();
            } finally {
                eventDispatcher.a(this.y1);
            }
        } catch (Throwable th) {
            try {
                super.K();
                throw th;
            } finally {
                eventDispatcher.a(this.y1);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void L(boolean z, boolean z2) {
        super.L(z, z2);
        DecoderCounters decoderCounters = this.y1;
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        Handler handler = eventDispatcher.f14925a;
        if (handler != null) {
            handler.post(new vb(eventDispatcher, decoderCounters, 0));
        }
        RendererConfiguration rendererConfiguration = this.f14564e;
        rendererConfiguration.getClass();
        boolean z3 = rendererConfiguration.f14779b;
        AudioSink audioSink = this.L1;
        if (z3) {
            audioSink.y();
        } else {
            audioSink.q();
        }
        PlayerId playerId = this.g;
        playerId.getClass();
        audioSink.h(playerId);
        Clock clock = this.f14566h;
        clock.getClass();
        audioSink.i(clock);
        audioSink.o(new AudioSinkListener());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void M(boolean z, boolean z2, long j2) {
        super.M(z, z2, j2);
        this.L1.flush();
        this.R1 = j2;
        this.Y1 = -9223372036854775807L;
        this.U1 = false;
        this.V1 = false;
        this.S1 = true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void N() {
        LoudnessCodecController loudnessCodecController;
        this.L1.release();
        if (Build.VERSION.SDK_INT < 35 || (loudnessCodecController = this.M1) == null) {
            return;
        }
        loudnessCodecController.b();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void O() {
        AudioSink audioSink = this.L1;
        this.U1 = false;
        this.V1 = false;
        this.Y1 = -9223372036854775807L;
        try {
            super.O();
        } finally {
            if (this.T1) {
                this.T1 = false;
                audioSink.reset();
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void P() {
        this.L1.c();
        this.X1 = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void Q() {
        W0();
        this.X1 = false;
        this.L1.pause();
        this.V1 = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean Q0(Format format) {
        RendererConfiguration rendererConfiguration = this.f14564e;
        rendererConfiguration.getClass();
        if (rendererConfiguration.f14778a != 0) {
            int iV0 = V0(format);
            if ((iV0 & 512) != 0) {
                RendererConfiguration rendererConfiguration2 = this.f14564e;
                rendererConfiguration2.getClass();
                if (rendererConfiguration2.f14778a == 2 || (iV0 & 1024) != 0) {
                    return true;
                }
                if (format.J == 0 && format.K == 0) {
                    return true;
                }
            }
        }
        return this.L1.b(format);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0059  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b1  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final int R0(MediaCodecSelector mediaCodecSelector, Format format) {
        int iV0;
        List listG;
        boolean z;
        boolean z2;
        int iO = RendererCapabilities.o(1, 0, 0, 0);
        String str = format.o;
        String str2 = format.o;
        if (!MimeTypes.k(str)) {
            return RendererCapabilities.o(0, 0, 0, 0);
        }
        int i2 = format.P;
        boolean z3 = i2 != 0;
        boolean z4 = i2 == 0 || i2 == 2;
        int i3 = 8;
        AudioSink audioSink = this.L1;
        if (z4) {
            if (z3) {
                List listE = MediaCodecUtil.e("audio/raw", false, false);
                if ((listE.isEmpty() ? null : (MediaCodecInfo) listE.get(0)) == null) {
                    iV0 = 0;
                }
            }
            iV0 = V0(format);
            if (audioSink.b(format)) {
                return RendererCapabilities.o(4, 8, 32, iV0);
            }
        } else {
            iV0 = 0;
        }
        if (!"audio/raw".equals(str2) || audioSink.b(format)) {
            int i4 = format.G;
            int i5 = format.H;
            Format.Builder builder = new Format.Builder();
            builder.n = MimeTypes.p("audio/raw");
            builder.F = i4;
            builder.G = i5;
            builder.H = 2;
            if (audioSink.b(new Format(builder))) {
                if (str2 == null) {
                    listG = ImmutableList.x();
                } else if (audioSink.b(format)) {
                    List listE2 = MediaCodecUtil.e("audio/raw", false, false);
                    MediaCodecInfo mediaCodecInfo = listE2.isEmpty() ? null : (MediaCodecInfo) listE2.get(0);
                    if (mediaCodecInfo != null) {
                        listG = ImmutableList.A(mediaCodecInfo);
                    } else {
                        listG = MediaCodecUtil.g(mediaCodecSelector, format, false, false);
                    }
                } else {
                    listG = MediaCodecUtil.g(mediaCodecSelector, format, false, false);
                }
                if (!((AbstractCollection) listG).isEmpty()) {
                    if (!z4) {
                        return RendererCapabilities.o(2, 0, 0, 0);
                    }
                    MediaCodecInfo mediaCodecInfo2 = (MediaCodecInfo) listG.get(0);
                    Context context = this.J1;
                    boolean zE = mediaCodecInfo2.e(context, format);
                    if (!zE) {
                        int i6 = 1;
                        while (true) {
                            if (i6 >= listG.size()) {
                                z = zE;
                                z2 = true;
                                break;
                            }
                            MediaCodecInfo mediaCodecInfo3 = (MediaCodecInfo) listG.get(i6);
                            if (mediaCodecInfo3.e(context, format)) {
                                z2 = false;
                                mediaCodecInfo2 = mediaCodecInfo3;
                                z = true;
                                break;
                            }
                            i6++;
                        }
                    } else {
                        z = zE;
                        z2 = true;
                        break;
                    }
                    int i7 = z ? 4 : 3;
                    if (z && mediaCodecInfo2.f(format)) {
                        i3 = 16;
                    }
                    return (mediaCodecInfo2.g ? 64 : 0) | i7 | i3 | 32 | (z2 ? 128 : 0) | iV0;
                }
            }
        }
        return iO;
    }

    public final int V0(Format format) {
        AudioOffloadSupport audioOffloadSupportK = this.L1.k(format);
        if (!audioOffloadSupportK.f14881a) {
            return 0;
        }
        int i2 = audioOffloadSupportK.f14882b ? DataChannelModule.MAX_SIZE_DATA_CHANNEL : 512;
        return audioOffloadSupportK.f14883c ? i2 | 2048 : i2;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation W(MediaCodecInfo mediaCodecInfo, Format format, Format format2, boolean z) {
        DecoderReuseEvaluation decoderReuseEvaluationB = mediaCodecInfo.b(format, format2);
        int i2 = decoderReuseEvaluationB.f14585e;
        if (this.J == null && Q0(format2)) {
            i2 |= 32768;
        }
        "OMX.google.raw.decoder".equals(mediaCodecInfo.f15374a);
        if (format2.p > this.N1) {
            i2 |= 64;
        }
        int i3 = i2;
        return new DecoderReuseEvaluation(mediaCodecInfo.f15374a, format, format2, i3 != 0 ? 0 : decoderReuseEvaluationB.d, i3);
    }

    public final void W0() {
        e();
        long jT = this.L1.t();
        if (jT != Long.MIN_VALUE) {
            if (!this.S1) {
                jT = Math.max(this.R1, jT);
            }
            this.R1 = jT;
            this.S1 = false;
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final PlaybackParameters a() {
        return this.L1.a();
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final void d(PlaybackParameters playbackParameters) {
        this.L1.d(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final float d0(float f2, Format format, Format[] formatArr) {
        int iMax = -1;
        for (Format format2 : formatArr) {
            int i2 = format2.H;
            if (i2 != -1) {
                iMax = Math.max(iMax, i2);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return iMax * f2;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean e() {
        return this.u1 && this.L1.e();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final ArrayList e0(MediaCodecSelector mediaCodecSelector, Format format, boolean z) {
        Collection collectionG;
        if (format.o == null) {
            collectionG = ImmutableList.x();
        } else if (this.L1.b(format)) {
            List listE = MediaCodecUtil.e("audio/raw", false, false);
            MediaCodecInfo mediaCodecInfo = listE.isEmpty() ? null : (MediaCodecInfo) listE.get(0);
            if (mediaCodecInfo != null) {
                collectionG = ImmutableList.A(mediaCodecInfo);
            } else {
                collectionG = MediaCodecUtil.g(mediaCodecSelector, format, z, false);
            }
        } else {
            collectionG = MediaCodecUtil.g(mediaCodecSelector, format, z, false);
        }
        HashMap map = MediaCodecUtil.f15393a;
        ArrayList arrayList = new ArrayList(collectionG);
        Collections.sort(arrayList, new g(new e(this.J1, format)));
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final long f0(long j2, long j3, boolean z) {
        AudioSink audioSink = this.L1;
        boolean z2 = audioSink.l() && this.Y1 != -9223372036854775807L;
        if (this.X1) {
            long jN = audioSink.n();
            if (this.V1 && z2 && jN != -9223372036854775807L) {
                return Math.max(10000L, (long) ((Math.min(jN, this.Y1 - j2) / (audioSink.a() != null ? audioSink.a().f13919a : 1.0f)) / 2.0f));
            }
        } else if (z2 || this.u1) {
            return 1000000L;
        }
        return 10000L;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "MediaCodecAudioRenderer";
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final long i() {
        if (this.f14567i == 2) {
            W0();
        }
        return this.R1;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final MediaCodecAdapter.Configuration i0(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f2) {
        int iIntValue;
        Integer num;
        Pair pairB;
        Format[] formatArr = this.f14569k;
        formatArr.getClass();
        String str = mediaCodecInfo.f15374a;
        "OMX.google.raw.decoder".equals(str);
        int iMax = format.p;
        String str2 = format.o;
        int i2 = format.G;
        int i3 = 0;
        boolean z = true;
        if (formatArr.length != 1) {
            for (Format format2 : formatArr) {
                if (mediaCodecInfo.b(format, format2).d != 0) {
                    "OMX.google.raw.decoder".equals(str);
                    iMax = Math.max(iMax, format2.p);
                }
            }
        }
        this.N1 = iMax;
        if (!str.equals("OMX.google.opus.decoder") && !str.equals("c2.android.opus.decoder") && !str.equals("OMX.google.vorbis.decoder") && !str.equals("c2.android.vorbis.decoder")) {
            z = false;
        }
        this.O1 = z;
        String str3 = mediaCodecInfo.f15376c;
        int i4 = this.N1;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str3);
        mediaFormat.setInteger("channel-count", i2);
        int i5 = format.H;
        mediaFormat.setInteger("sample-rate", i5);
        MediaFormatUtil.b(mediaFormat, format.r);
        MediaFormatUtil.a(mediaFormat, "max-input-size", i4);
        mediaFormat.setInteger("priority", 0);
        if (f2 != -1.0f) {
            mediaFormat.setFloat("operating-rate", f2);
        }
        if ("audio/ac4".equals(str2) && (pairB = CodecSpecificDataUtil.b(format)) != null) {
            MediaFormatUtil.a(mediaFormat, "profile", ((Integer) pairB.first).intValue());
            MediaFormatUtil.a(mediaFormat, "level", ((Integer) pairB.second).intValue());
        }
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.p("audio/raw");
        builder.F = i2;
        builder.G = i5;
        builder.H = 4;
        Format format3 = new Format(builder);
        AudioSink audioSink = this.L1;
        if (audioSink.A(format3) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        if (i6 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.W1));
        }
        if (Objects.equals(str2, "audio/iamf")) {
            AudioCapabilities audioCapabilitiesZ = audioSink.z();
            int i7 = 12;
            if (audioCapabilitiesZ == null) {
                Log.g("AudioCapabilities from the AudioSink are null, using default stereo output layout.");
                mediaFormat.setInteger("channel-mask", 12);
                mediaFormat.setInteger("max-output-channel-count", 2);
            } else {
                ImmutableSet immutableSet = IamfUtil.f15019a;
                Iterator<E> it = audioCapabilitiesZ.d.iterator();
                do {
                    if (!it.hasNext()) {
                        iIntValue = 0;
                        break;
                    }
                    num = (Integer) it.next();
                    iIntValue = num.intValue();
                } while (!IamfUtil.f15019a.contains(num));
                if (iIntValue != 0) {
                    i7 = iIntValue;
                } else {
                    for (Integer num2 : audioCapabilitiesZ.f14863c) {
                        int iIntValue2 = num2.intValue();
                        if (IamfUtil.f15019a.contains(num2)) {
                            i3 = iIntValue2;
                            break;
                        }
                    }
                    if (i3 != 0) {
                        i7 = i3;
                    }
                }
                int iBitCount = Integer.bitCount(i7);
                mediaFormat.setInteger("channel-mask", i7);
                mediaFormat.setInteger("max-output-channel-count", iBitCount);
            }
        }
        U(mediaFormat);
        this.Q1 = (!"audio/raw".equals(mediaCodecInfo.f15375b) || "audio/raw".equals(str2)) ? null : format;
        return new MediaCodecAdapter.Configuration(mediaCodecInfo, mediaFormat, format, null, mediaCrypto, this.M1);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public final boolean isReady() {
        return this.L1.l();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void l0(DecoderInputBuffer decoderInputBuffer) {
        Format format = decoderInputBuffer.f14542c;
        if (format != null && Objects.equals(format.o, "audio/opus") && this.i1) {
            ByteBuffer byteBuffer = decoderInputBuffer.f14545h;
            byteBuffer.getClass();
            Format format2 = decoderInputBuffer.f14542c;
            format2.getClass();
            int i2 = format2.J;
            if (byteBuffer.remaining() == 8) {
                this.L1.f(i2, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
            }
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public final boolean p() {
        boolean z = this.U1;
        this.U1 = false;
        return z;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void q(int i2, Object obj) {
        LoudnessCodecController loudnessCodecController;
        AudioSink audioSink = this.L1;
        if (i2 == 2) {
            obj.getClass();
            audioSink.g(((Float) obj).floatValue());
            return;
        }
        if (i2 == 3) {
            AudioAttributes audioAttributes = (AudioAttributes) obj;
            audioAttributes.getClass();
            audioSink.j(audioAttributes);
            return;
        }
        if (i2 == 6) {
            AuxEffectInfo auxEffectInfo = (AuxEffectInfo) obj;
            auxEffectInfo.getClass();
            audioSink.C(auxEffectInfo);
            return;
        }
        if (i2 == 12) {
            audioSink.setPreferredDevice((AudioDeviceInfo) obj);
            return;
        }
        if (i2 == 16) {
            obj.getClass();
            this.W1 = ((Integer) obj).intValue();
            MediaCodecAdapter mediaCodecAdapter = this.P;
            if (mediaCodecAdapter != null && Build.VERSION.SDK_INT >= 35) {
                Bundle bundle = new Bundle();
                bundle.putInt("importance", Math.max(0, -this.W1));
                mediaCodecAdapter.b(bundle);
                return;
            }
            return;
        }
        if (i2 == 9) {
            obj.getClass();
            audioSink.B(((Boolean) obj).booleanValue());
            return;
        }
        if (i2 == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            audioSink.m(iIntValue);
            if (Build.VERSION.SDK_INT < 35 || (loudnessCodecController = this.M1) == null) {
                return;
            }
            loudnessCodecController.d(iIntValue);
            return;
        }
        if (i2 == 19) {
            obj.getClass();
            audioSink.s(((Integer) obj).intValue());
        } else if (i2 != 20) {
            super.q(i2, obj);
        } else {
            obj.getClass();
            audioSink.r((AudioOutputProvider) obj);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void s0(Exception exc) {
        Log.e("Audio codec error", exc);
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        Handler handler = eventDispatcher.f14925a;
        if (handler != null) {
            handler.post(new zb(eventDispatcher, exc, 0));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void t0(long j2, long j3, String str) {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        Handler handler = eventDispatcher.f14925a;
        if (handler != null) {
            handler.post(new bc(0, j2, j3, eventDispatcher, str));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void u0(CodecParameters codecParameters) {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        Handler handler = eventDispatcher.f14925a;
        if (handler != null) {
            handler.post(new r6(eventDispatcher, codecParameters, 4));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void v0(String str) {
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        Handler handler = eventDispatcher.f14925a;
        if (handler != null) {
            handler.post(new r6(eventDispatcher, str, 3));
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation w0(FormatHolder formatHolder) {
        Format format = formatHolder.f14697b;
        format.getClass();
        this.P1 = format;
        DecoderReuseEvaluation decoderReuseEvaluationW0 = super.w0(formatHolder);
        AudioRendererEventListener.EventDispatcher eventDispatcher = this.K1;
        Handler handler = eventDispatcher.f14925a;
        if (handler != null) {
            handler.post(new b5(eventDispatcher, format, decoderReuseEvaluationW0, 1));
        }
        return decoderReuseEvaluationW0;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00db A[Catch: ConfigurationException -> 0x00d9, TryCatch #0 {ConfigurationException -> 0x00d9, blocks: (B:36:0x00bf, B:39:0x00c5, B:41:0x00ce, B:45:0x00de, B:44:0x00db), top: B:49:0x00bf }] */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void x0(Format format, MediaFormat mediaFormat) throws ExoPlaybackException {
        int iC;
        Format format2 = this.Q1;
        int[] iArr = null;
        if (format2 != null) {
            format = format2;
        } else if (this.P != null) {
            mediaFormat.getClass();
            if ("audio/raw".equals(format.o)) {
                iC = format.I;
            } else if (mediaFormat.containsKey("pcm-encoding")) {
                iC = mediaFormat.getInteger("pcm-encoding");
            } else {
                iC = mediaFormat.containsKey("v-bits-per-sample") ? Util.C(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN) : 2;
            }
            Format.Builder builder = new Format.Builder();
            builder.n = MimeTypes.p("audio/raw");
            builder.H = iC;
            builder.I = format.J;
            builder.J = format.K;
            builder.f13772k = format.l;
            builder.f13764a = format.f13755a;
            builder.f13765b = format.f13756b;
            builder.f13766c = ImmutableList.t(format.f13757c);
            builder.d = format.d;
            builder.f13767e = format.f13758e;
            builder.f13768f = format.f13759f;
            builder.F = mediaFormat.getInteger("channel-count");
            builder.G = mediaFormat.getInteger("sample-rate");
            format = new Format(builder);
            if (this.O1) {
                int i2 = format.G;
                if (i2 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i2 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i2 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i2 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i2 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
        }
        try {
            boolean z = this.i1;
            AudioSink audioSink = this.L1;
            if (z) {
                RendererConfiguration rendererConfiguration = this.f14564e;
                rendererConfiguration.getClass();
                if (rendererConfiguration.f14778a != 0) {
                    RendererConfiguration rendererConfiguration2 = this.f14564e;
                    rendererConfiguration2.getClass();
                    audioSink.p(rendererConfiguration2.f14778a);
                } else {
                    audioSink.p(0);
                }
            } else {
                audioSink.p(0);
            }
            audioSink.w(format, iArr);
        } catch (AudioSink.ConfigurationException e2) {
            throw J(e2, e2.f14927b, false, 5001);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void y0(long j2) {
        this.L1.getClass();
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, Handler handler, AudioRendererEventListener audioRendererEventListener) {
        this(context, mediaCodecSelector, handler, audioRendererEventListener, new DefaultAudioSink.Builder(context).a());
    }

    @Deprecated
    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, Handler handler, AudioRendererEventListener audioRendererEventListener, AudioCapabilities audioCapabilities, AudioProcessor... audioProcessorArr) {
        DefaultAudioSink.Builder builder = new DefaultAudioSink.Builder();
        builder.f15001b = (AudioCapabilities) MoreObjects.a(audioCapabilities, AudioCapabilities.g);
        audioProcessorArr.getClass();
        builder.f15002c = new DefaultAudioSink.DefaultAudioProcessorChain(audioProcessorArr);
        this(context, mediaCodecSelector, handler, audioRendererEventListener, builder.a());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, Handler handler, AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        this(context, new DefaultMediaCodecAdapterFactory(context), mediaCodecSelector, false, handler, audioRendererEventListener, audioSink);
        int i2 = MediaCodecAdapter.Factory.f15372a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, boolean z, Handler handler, AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        this(context, new DefaultMediaCodecAdapterFactory(context), mediaCodecSelector, z, handler, audioRendererEventListener, audioSink);
        int i2 = MediaCodecAdapter.Factory.f15372a;
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z, Handler handler, AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        this(context, factory, mediaCodecSelector, z, handler, audioRendererEventListener, audioSink, Build.VERSION.SDK_INT >= 35 ? new LoudnessCodecController() : null);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, null, null);
    }
}

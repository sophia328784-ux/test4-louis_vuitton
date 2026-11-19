package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Display;
import android.view.Surface;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.Util;
import androidx.media3.container.ObuParser;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.ScrubbingModeParameters;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.media3.exoplayer.mediacodec.e;
import androidx.media3.exoplayer.mediacodec.g;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.InputVideoSink;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.MoreExecutors;
import com.sightcall.uvc.Camera;
import defpackage.b5;
import defpackage.bc;
import defpackage.kd0;
import defpackage.md;
import defpackage.p51;
import defpackage.q51;
import defpackage.r81;
import defpackage.w21;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.PriorityQueue;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer implements VideoFrameReleaseControl.FrameTimingEvaluator {
    public static final int[] C2 = {Sink.Screenshare.MAX_DIMENSION_HIGH, 1600, 1440, Sink.Video.MAX_DIMENSION_HIGH, 960, 854, Camera.DEFAULT_PREVIEW_WIDTH, 540, Camera.DEFAULT_PREVIEW_HEIGHT};
    public static boolean D2;
    public static boolean E2;
    public boolean A2;
    public int B2;
    public final Context J1;
    public final boolean K1;
    public final VideoRendererEventListener.EventDispatcher L1;
    public final int M1;
    public final boolean N1;
    public final VideoFrameReleaseControl O1;
    public final VideoFrameReleaseControl.FrameReleaseInfo P1;
    public final Av1SampleDependencyParser Q1;
    public final long R1;
    public final VideoFrameReleaseEarlyTimeForecaster S1;
    public final PriorityQueue T1;
    public CodecMaxValues U1;
    public boolean V1;
    public boolean W1;
    public VideoSink X1;
    public boolean Y1;
    public int Z1;
    public List a2;
    public Surface b2;
    public PlaceholderSurface c2;
    public Size d2;
    public boolean e2;
    public int f2;
    public int g2;
    public long h2;
    public int i2;
    public int j2;
    public int k2;
    public ScrubbingModeParameters l2;
    public long m2;
    public boolean n2;
    public long o2;
    public int p2;
    public long q2;
    public VideoSize r2;
    public VideoSize s2;
    public int t2;
    public boolean u2;
    public int v2;
    public OnFrameRenderedListener w2;
    public VideoFrameMetadataListener x2;
    public long y2;
    public long z2;

    /* JADX INFO: renamed from: androidx.media3.exoplayer.video.MediaCodecVideoRenderer$2, reason: invalid class name */
    class AnonymousClass2 implements VideoSink.VideoFrameHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MediaCodecAdapter f15891a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ int f15892b;

        public AnonymousClass2(MediaCodecAdapter mediaCodecAdapter, int i2, long j2) {
            this.f15891a = mediaCodecAdapter;
            this.f15892b = i2;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
        public final void e() {
            Trace.beginSection("dropVideoBuffer");
            this.f15891a.l(this.f15892b);
            Trace.endSection();
            MediaCodecVideoRenderer.this.i1(0, 1);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.VideoFrameHandler
        public final void f(long j2) {
            MediaCodecVideoRenderer.this.e1(this.f15891a, this.f15892b, j2);
        }
    }

    public static final class Api26 {
        public static boolean a(Context context) {
            Display.HdrCapabilities hdrCapabilities;
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display == null || !display.isHdr() || (hdrCapabilities = display.getHdrCapabilities()) == null) {
                return false;
            }
            for (int i2 : hdrCapabilities.getSupportedHdrTypes()) {
                if (i2 == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15894a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f15895b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public MediaCodecSelector f15896c = MediaCodecSelector.f0;
        public MediaCodecAdapter.Factory d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f15897e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f15898f;
        public Handler g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public VideoRendererEventListener f15899h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f15900i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f15901j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public VideoSink f15902k;
        public boolean l;
        public long m;

        public Builder(Context context) {
            this.f15894a = context;
            int i2 = MediaCodecAdapter.Factory.f15372a;
            this.d = new DefaultMediaCodecAdapterFactory(context);
            this.f15901j = 30.0f;
            this.l = true;
            this.m = 15000L;
        }
    }

    public static final class CodecMaxValues {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15903a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15904b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15905c;

        public CodecMaxValues(int i2, int i3, int i4) {
            this.f15903a = i2;
            this.f15904b = i3;
            this.f15905c = i4;
        }
    }

    public final class OnFrameRenderedListener implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Handler f15906b;

        public OnFrameRenderedListener(MediaCodecAdapter mediaCodecAdapter) {
            Handler handlerR = Util.r(this);
            this.f15906b = handlerR;
            mediaCodecAdapter.e(this, handlerR);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public final void a(long j2) {
            if (Build.VERSION.SDK_INT >= 30) {
                b(j2);
            } else {
                Handler handler = this.f15906b;
                handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 0, (int) (j2 >> 32), (int) j2));
            }
        }

        public final void b(long j2) {
            Surface surface;
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            OnFrameRenderedListener onFrameRenderedListener = mediaCodecVideoRenderer.w2;
            VideoRendererEventListener.EventDispatcher eventDispatcher = mediaCodecVideoRenderer.L1;
            if (this != onFrameRenderedListener || mediaCodecVideoRenderer.P == null) {
                return;
            }
            if (j2 == Long.MAX_VALUE) {
                mediaCodecVideoRenderer.w1 = true;
                return;
            }
            try {
                mediaCodecVideoRenderer.U0(j2);
                VideoSize videoSize = mediaCodecVideoRenderer.r2;
                if (!videoSize.equals(VideoSize.d) && !videoSize.equals(mediaCodecVideoRenderer.s2)) {
                    mediaCodecVideoRenderer.s2 = videoSize;
                    eventDispatcher.a(videoSize);
                }
                mediaCodecVideoRenderer.y1.f14576e++;
                VideoFrameReleaseControl videoFrameReleaseControl = mediaCodecVideoRenderer.O1;
                boolean z = videoFrameReleaseControl.f15955e != 3;
                videoFrameReleaseControl.f15955e = 3;
                videoFrameReleaseControl.g = Util.R(videoFrameReleaseControl.l.b());
                if (z && (surface = mediaCodecVideoRenderer.b2) != null) {
                    Handler handler = eventDispatcher.f15988a;
                    if (handler != null) {
                        handler.post(new kd0(eventDispatcher, surface, SystemClock.elapsedRealtime()));
                    }
                    mediaCodecVideoRenderer.e2 = true;
                }
                mediaCodecVideoRenderer.z0(j2);
            } catch (ExoPlaybackException e2) {
                mediaCodecVideoRenderer.x1 = e2;
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            int i2 = message.arg1;
            int i3 = message.arg2;
            String str = Util.f14242a;
            b(((((long) i2) & BodyPartID.bodyIdMax) << 32) | (BodyPartID.bodyIdMax & ((long) i3)));
            return true;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MediaCodecVideoRenderer(Builder builder) {
        Context context = builder.f15894a;
        super(context.getApplicationContext(), 2, builder.d, builder.f15896c, builder.f15898f, builder.f15901j);
        Context applicationContext = context.getApplicationContext();
        this.J1 = applicationContext;
        this.M1 = builder.f15900i;
        this.X1 = builder.f15902k;
        this.L1 = new VideoRendererEventListener.EventDispatcher(builder.g, builder.f15899h);
        this.K1 = this.X1 == null;
        this.O1 = new VideoFrameReleaseControl(applicationContext, this, builder.f15897e);
        this.P1 = new VideoFrameReleaseControl.FrameReleaseInfo();
        this.N1 = "NVIDIA".equals(Build.MANUFACTURER);
        this.d2 = Size.f14197c;
        this.f2 = 1;
        this.g2 = 0;
        this.r2 = VideoSize.d;
        this.v2 = 0;
        this.s2 = null;
        this.t2 = -1000;
        this.y2 = -9223372036854775807L;
        this.z2 = -9223372036854775807L;
        this.Q1 = builder.l ? new Av1SampleDependencyParser() : null;
        this.T1 = new PriorityQueue();
        long j2 = builder.m;
        if (j2 != -9223372036854775807L) {
            this.R1 = -j2;
            this.S1 = new VideoFrameReleaseEarlyTimeForecaster(1.0f);
        } else {
            this.R1 = -9223372036854775807L;
            this.S1 = null;
        }
        this.l2 = null;
    }

    public static boolean V0(String str) {
        boolean z = false;
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            try {
                if (!D2) {
                    String str2 = Build.MODEL;
                    str2.getClass();
                    switch (str2) {
                        case "AFTJMST12":
                        case "AFTKMST12":
                        case "AFTA":
                        case "AFTN":
                        case "AFTR":
                        case "AFTEU011":
                        case "AFTEU014":
                        case "AFTSO001":
                        case "AFTEUFF014":
                            z = true;
                            break;
                    }
                    E2 = z;
                    D2 = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return E2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    public static int W0(MediaCodecInfo mediaCodecInfo, Format format) {
        int i2 = format.v;
        int i3 = format.w;
        if (i2 != -1 && i3 != -1) {
            String str = format.o;
            str.getClass();
            if ("video/dolby-vision".equals(str)) {
                Pair pairB = CodecSpecificDataUtil.b(format);
                if (pairB == null) {
                    str = "video/hevc";
                } else {
                    int iIntValue = ((Integer) pairB.first).intValue();
                    if (iIntValue == 512 || iIntValue == 1 || iIntValue == 2) {
                        str = "video/avc";
                    } else if (iIntValue == 1024) {
                        str = "video/av01";
                    } else {
                        str = "video/hevc";
                    }
                }
            }
            switch (str) {
                case "video/3gpp":
                case "video/av01":
                case "video/mp4v-es":
                case "video/x-vnd.on2.vp8":
                    return ((i2 * i3) * 3) / 4;
                case "video/hevc":
                    return Math.max(PKIFailureInfo.badSenderNonce, ((i2 * i3) * 3) / 4);
                case "video/avc":
                    String str2 = Build.MODEL;
                    if (!"BRAVIA 4K 2015".equals(str2) && (!"Amazon".equals(Build.MANUFACTURER) || (!"KFSOWI".equals(str2) && (!"AFTS".equals(str2) || !mediaCodecInfo.f15378f)))) {
                        return ((Util.g(i3, 16) * Util.g(i2, 16)) * 768) / 4;
                    }
                    break;
                case "video/x-vnd.on2.vp9":
                    return ((i2 * i3) * 3) / 8;
            }
        }
        return -1;
    }

    public static List X0(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) {
        String str = format.o;
        if (str == null) {
            return ImmutableList.x();
        }
        if ("video/dolby-vision".equals(str) && !Api26.a(context)) {
            String strC = MediaCodecUtil.c(format);
            List listX = strC == null ? ImmutableList.x() : mediaCodecSelector.c(strC, z, z2);
            if (!listX.isEmpty()) {
                return listX;
            }
        }
        return MediaCodecUtil.g(mediaCodecSelector, format, z, z2);
    }

    public static int Y0(MediaCodecInfo mediaCodecInfo, Format format) {
        int i2 = format.p;
        List list = format.r;
        if (i2 == -1) {
            return W0(mediaCodecInfo, format);
        }
        int size = list.size();
        int length = 0;
        for (int i3 = 0; i3 < size; i3++) {
            length += ((byte[]) list.get(i3)).length;
        }
        return format.p + length;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void A0() {
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            videoSink.j();
            if (this.y2 == -9223372036854775807L) {
                this.y2 = k0();
            }
            this.X1.h(-this.y2);
        } else {
            this.O1.e(2);
        }
        this.A2 = true;
        d1();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void B0(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        Av1SampleDependencyParser av1SampleDependencyParser = this.Q1;
        if (av1SampleDependencyParser != null) {
            MediaCodecInfo mediaCodecInfo = this.X;
            mediaCodecInfo.getClass();
            if (mediaCodecInfo.f15375b.equals("video/av01") && decoderInputBuffer.f(1) && (byteBuffer = decoderInputBuffer.f14543e) != null) {
                int iPosition = byteBuffer.position();
                int iLimit = byteBuffer.limit();
                byteBuffer.limit(Math.min(iLimit, iPosition + 500));
                ByteBuffer byteBuffer2 = av1SampleDependencyParser.f15868a;
                byteBuffer2.clear();
                byteBuffer2.put(byteBuffer);
                byteBuffer2.flip();
                byteBuffer.position(iPosition);
                byteBuffer.limit(iLimit);
            }
        }
        this.B2 = 0;
        int iC0 = c0(decoderInputBuffer);
        if ((Build.VERSION.SDK_INT < 34 || (iC0 & 32) == 0) && !this.u2) {
            this.k2++;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public final void D(float f2, float f3) {
        super.D(f2, f3);
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            videoSink.t(f2);
        } else {
            this.O1.h(f2);
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.c(f2);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean D0(long j2, long j3, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i2, int i3, int i4, long j4, boolean z, boolean z2, Format format) {
        int i5;
        mediaCodecAdapter.getClass();
        long jJ0 = j4 - j0();
        int i6 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.T1;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j4) {
                break;
            }
            i6++;
            priorityQueue.poll();
        }
        i1(i6, 0);
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            if (!z || z2) {
                return videoSink.f(j4, new AnonymousClass2(mediaCodecAdapter, i2, jJ0));
            }
            h1(mediaCodecAdapter, i2);
            return true;
        }
        int iA = this.O1.a(j4, j2, j3, k0(), z, z2, this.P1);
        VideoFrameReleaseControl.FrameReleaseInfo frameReleaseInfo = this.P1;
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
        if (videoFrameReleaseEarlyTimeForecaster != null && iA != 5 && iA != 4) {
            videoFrameReleaseEarlyTimeForecaster.a(j4, frameReleaseInfo.f15961a);
        }
        if (iA == 0) {
            Clock clock = this.f14566h;
            clock.getClass();
            long jC = clock.c();
            VideoFrameMetadataListener videoFrameMetadataListener = this.x2;
            if (videoFrameMetadataListener != null) {
                videoFrameMetadataListener.d(jJ0, jC, format, this.R);
            }
            e1(mediaCodecAdapter, i2, jC);
            k1(frameReleaseInfo.f15961a);
            return true;
        }
        if (iA == 1) {
            long j5 = frameReleaseInfo.f15962b;
            long j6 = frameReleaseInfo.f15961a;
            if (j5 == this.q2) {
                h1(mediaCodecAdapter, i2);
            } else {
                VideoFrameMetadataListener videoFrameMetadataListener2 = this.x2;
                if (videoFrameMetadataListener2 != null) {
                    i5 = i2;
                    videoFrameMetadataListener2.d(jJ0, j5, format, this.R);
                } else {
                    i5 = i2;
                }
                e1(mediaCodecAdapter, i5, j5);
            }
            k1(j6);
            this.q2 = j5;
            return true;
        }
        if (iA == 2) {
            Trace.beginSection("dropVideoBuffer");
            mediaCodecAdapter.l(i2);
            Trace.endSection();
            i1(0, 1);
            k1(frameReleaseInfo.f15961a);
            return true;
        }
        if (iA == 3) {
            h1(mediaCodecAdapter, i2);
            k1(frameReleaseInfo.f15961a);
            return true;
        }
        if (iA != 4 && iA != 5) {
            md.k(String.valueOf(iA));
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public final boolean E(long j2, boolean z) {
        return j2 < -30000 && !z;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void G0() {
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            videoSink.j();
        } else if (g0() != -9223372036854775807L) {
            g0();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void I0() {
        super.I0();
        this.T1.clear();
        this.k2 = 0;
        this.B2 = 0;
        this.n2 = false;
        Av1SampleDependencyParser av1SampleDependencyParser = this.Q1;
        if (av1SampleDependencyParser != null) {
            av1SampleDependencyParser.f15869b = null;
            ByteBuffer byteBuffer = av1SampleDependencyParser.f15868a;
            byteBuffer.position(byteBuffer.limit());
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void K() {
        DecoderCounters decoderCounters;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        this.s2 = null;
        this.z2 = -9223372036854775807L;
        d1();
        this.e2 = false;
        this.w2 = null;
        this.n2 = true;
        try {
            super.K();
            decoderCounters = this.y1;
            eventDispatcher.getClass();
            synchronized (decoderCounters) {
            }
        } finally {
            decoderCounters = this.y1;
            eventDispatcher.getClass();
            synchronized (decoderCounters) {
                Handler handler = eventDispatcher.f15988a;
                if (handler != null) {
                    handler.post(new q51(eventDispatcher, decoderCounters, 1));
                }
                eventDispatcher.a(VideoSize.d);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void L(boolean z, boolean z2) {
        VideoSink videoSink;
        super.L(z, z2);
        RendererConfiguration rendererConfiguration = this.f14564e;
        rendererConfiguration.getClass();
        boolean z3 = rendererConfiguration.f14779b;
        Preconditions.q((z3 && this.v2 == 0) ? false : true);
        if (this.u2 != z3) {
            this.u2 = z3;
            F0();
        }
        DecoderCounters decoderCounters = this.y1;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        Handler handler = eventDispatcher.f15988a;
        if (handler != null) {
            handler.post(new q51(eventDispatcher, decoderCounters, 0));
        }
        boolean z4 = this.Y1;
        VideoFrameReleaseControl videoFrameReleaseControl = this.O1;
        if (!z4) {
            if (this.a2 != null && this.X1 == null) {
                PlaybackVideoGraphWrapper.Builder builder = new PlaybackVideoGraphWrapper.Builder(this.J1, videoFrameReleaseControl);
                builder.d = true;
                long j2 = this.R1;
                builder.g = j2 != -9223372036854775807L ? -j2 : -9223372036854775807L;
                Clock clock = this.f14566h;
                clock.getClass();
                builder.f15924e = clock;
                Preconditions.q(!builder.f15925f);
                if (builder.f15923c == null) {
                    builder.f15923c = new PlaybackVideoGraphWrapper.ReflectiveSingleInputVideoGraphFactory(false);
                }
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = new PlaybackVideoGraphWrapper(builder);
                builder.f15925f = true;
                if (1 >= playbackVideoGraphWrapper.u) {
                    playbackVideoGraphWrapper.u = 1;
                }
                SparseArray sparseArray = playbackVideoGraphWrapper.f15914c;
                if (Util.l(sparseArray, 0)) {
                    videoSink = (VideoSink) sparseArray.get(0);
                } else {
                    PlaybackVideoGraphWrapper.InputVideoSink inputVideoSink = playbackVideoGraphWrapper.new InputVideoSink(playbackVideoGraphWrapper.f15912a, 0);
                    playbackVideoGraphWrapper.g.add(inputVideoSink);
                    sparseArray.put(0, inputVideoSink);
                    videoSink = inputVideoSink;
                }
                this.X1 = videoSink;
            }
            this.Y1 = true;
        }
        VideoSink videoSink2 = this.X1;
        if (videoSink2 == null) {
            Clock clock2 = this.f14566h;
            clock2.getClass();
            videoFrameReleaseControl.l = clock2;
            videoFrameReleaseControl.e(!z2 ? 1 : 0);
            return;
        }
        videoSink2.z(new VideoSink.Listener() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.1
            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public final void a() {
                Renderer.WakeupListener wakeupListener = MediaCodecVideoRenderer.this.K;
                if (wakeupListener != null) {
                    wakeupListener.b();
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public final void b(VideoSize videoSize) {
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public final void c() {
                MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                Surface surface = mediaCodecVideoRenderer.b2;
                if (surface != null) {
                    VideoRendererEventListener.EventDispatcher eventDispatcher2 = mediaCodecVideoRenderer.L1;
                    Handler handler2 = eventDispatcher2.f15988a;
                    if (handler2 != null) {
                        handler2.post(new kd0(eventDispatcher2, surface, SystemClock.elapsedRealtime()));
                    }
                    mediaCodecVideoRenderer.e2 = true;
                }
            }

            @Override // androidx.media3.exoplayer.video.VideoSink.Listener
            public final void d() {
                MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
                if (mediaCodecVideoRenderer.b2 != null) {
                    mediaCodecVideoRenderer.i1(0, 1);
                }
            }
        }, MoreExecutors.b());
        VideoFrameMetadataListener videoFrameMetadataListener = this.x2;
        if (videoFrameMetadataListener != null) {
            this.X1.i(videoFrameMetadataListener);
        }
        if (this.b2 != null && !this.d2.equals(Size.f14197c)) {
            this.X1.r(this.b2, this.d2);
        }
        this.X1.v(this.g2);
        this.X1.t(this.N);
        List list = this.a2;
        if (list != null) {
            this.X1.l(list);
        }
        this.Z1 = !z2 ? 1 : 0;
        this.C1 = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void M(boolean z, boolean z2, long j2) {
        VideoSink videoSink = this.X1;
        if (videoSink != null && !z) {
            videoSink.x(true);
        }
        if (z2) {
            this.m2 = j2;
        }
        super.M(z, z2, j2);
        VideoSink videoSink2 = this.X1;
        VideoFrameReleaseControl videoFrameReleaseControl = this.O1;
        if (videoSink2 == null) {
            videoFrameReleaseControl.f15953b.b();
            videoFrameReleaseControl.f15957h = -9223372036854775807L;
            videoFrameReleaseControl.f15956f = -9223372036854775807L;
            videoFrameReleaseControl.f15955e = Math.min(videoFrameReleaseControl.f15955e, 1);
            videoFrameReleaseControl.f15958i = -9223372036854775807L;
            videoFrameReleaseControl.n = false;
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
        if (z) {
            VideoSink videoSink3 = this.X1;
            if (videoSink3 != null) {
                videoSink3.y(false);
            } else {
                videoFrameReleaseControl.c(false);
            }
        }
        d1();
        this.j2 = 0;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x003b  */
    /* JADX WARN: Code duplicated, block: B:90:0x013a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x013c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0144  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean M0(DecoderInputBuffer decoderInputBuffer) {
        boolean z;
        ByteBuffer byteBuffer;
        int iLimit;
        ObuParser.SequenceHeader sequenceHeader;
        ObuParser.FrameHeader frameHeader;
        boolean z2 = false;
        if (!b1(decoderInputBuffer)) {
            long j2 = decoderInputBuffer.g;
            boolean z3 = j2 < this.m;
            VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
            if (videoFrameReleaseEarlyTimeForecaster != null) {
                long j3 = videoFrameReleaseEarlyTimeForecaster.f15963a;
                long j4 = j3 == -9223372036854775807L ? -9223372036854775807L : (long) (((j2 - j3) * videoFrameReleaseEarlyTimeForecaster.f15965c) + videoFrameReleaseEarlyTimeForecaster.f15964b);
                if (j4 == -9223372036854775807L || j4 >= this.R1) {
                    z = false;
                } else {
                    z = true;
                }
            } else {
                z = false;
            }
            if ((z3 || z) && !decoderInputBuffer.f(268435456)) {
                if (!decoderInputBuffer.f(67108864)) {
                    Av1SampleDependencyParser av1SampleDependencyParser = this.Q1;
                    if (av1SampleDependencyParser != null) {
                        ByteBuffer byteBuffer2 = av1SampleDependencyParser.f15868a;
                        MediaCodecInfo mediaCodecInfo = this.X;
                        mediaCodecInfo.getClass();
                        if (mediaCodecInfo.f15375b.equals("video/av01") && (byteBuffer = decoderInputBuffer.f14543e) != null) {
                            boolean z4 = z3 || this.B2 <= 0;
                            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                            byteBufferAsReadOnlyBuffer.flip();
                            if (byteBuffer2.hasRemaining()) {
                                av1SampleDependencyParser.a(ObuParser.a(byteBuffer2));
                                byteBuffer2.position(byteBuffer2.limit());
                            }
                            ArrayList arrayListA = ObuParser.a(byteBufferAsReadOnlyBuffer);
                            av1SampleDependencyParser.a(arrayListA);
                            int size = arrayListA.size() - 1;
                            int i2 = 0;
                            while (size >= 0) {
                                ObuParser.Obu obu = (ObuParser.Obu) arrayListA.get(size);
                                int i3 = obu.f14338a;
                                if (i3 != 2 && i3 != 15) {
                                    if ((i3 == 3 && !z4) || ((i3 != 6 && i3 != 3) || (sequenceHeader = av1SampleDependencyParser.f15869b) == null)) {
                                        break;
                                    }
                                    try {
                                        frameHeader = new ObuParser.FrameHeader(sequenceHeader, obu);
                                    } catch (ObuParser.NotYetImplementedException unused) {
                                        frameHeader = null;
                                    }
                                    if (frameHeader == null || frameHeader.f14337a) {
                                        break;
                                    }
                                }
                                if (((ObuParser.Obu) arrayListA.get(size)).f14338a == 6 || ((ObuParser.Obu) arrayListA.get(size)).f14338a == 3) {
                                    i2++;
                                }
                                size--;
                            }
                            if (i2 > 1 || size + 1 >= 8) {
                                iLimit = byteBufferAsReadOnlyBuffer.limit();
                            } else {
                                iLimit = size >= 0 ? ((ObuParser.Obu) arrayListA.get(size)).f14339b.limit() : byteBufferAsReadOnlyBuffer.position();
                            }
                            if (iLimit == 0) {
                                decoderInputBuffer.g();
                            } else if (iLimit != byteBufferAsReadOnlyBuffer.limit()) {
                                CodecMaxValues codecMaxValues = this.U1;
                                codecMaxValues.getClass();
                                if (codecMaxValues.f15905c + iLimit < byteBufferAsReadOnlyBuffer.capacity() && !decoderInputBuffer.f(1073741824)) {
                                    ByteBuffer byteBuffer3 = decoderInputBuffer.f14543e;
                                    byteBuffer3.getClass();
                                    byteBuffer3.position(iLimit);
                                }
                            }
                        }
                    }
                    if (z2) {
                        if (z3) {
                            this.y1.d++;
                        } else {
                            this.T1.add(Long.valueOf(decoderInputBuffer.g));
                            this.B2++;
                        }
                    }
                    return z2;
                }
                decoderInputBuffer.g();
                z2 = true;
                if (z2) {
                    if (z3) {
                        this.y1.d++;
                    } else {
                        this.T1.add(Long.valueOf(decoderInputBuffer.g));
                        this.B2++;
                    }
                }
                return z2;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void N() {
        VideoSink videoSink = this.X1;
        if (videoSink == null || !this.K1) {
            return;
        }
        videoSink.release();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0029  */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean N0() {
        boolean z;
        Format format = this.Q;
        long j2 = this.z2;
        if (j2 != -9223372036854775807L) {
            if (this.E1 + j2 + 1 > Long.MAX_VALUE - (j0() + this.z2)) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = true;
        }
        ScrubbingModeParameters scrubbingModeParameters = this.l2;
        return scrubbingModeParameters == null || !scrubbingModeParameters.f14787c || this.n2 || this.u2 || (format != null && format.q > 0) || z || g0() != -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void O() {
        try {
            super.O();
        } finally {
            this.Y1 = false;
            this.y2 = -9223372036854775807L;
            PlaceholderSurface placeholderSurface = this.c2;
            if (placeholderSurface != null) {
                placeholderSurface.release();
                this.c2 = null;
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean O0(MediaCodecInfo mediaCodecInfo) {
        return a1(mediaCodecInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void P() {
        this.i2 = 0;
        Clock clock = this.f14566h;
        clock.getClass();
        this.h2 = clock.b();
        this.o2 = 0L;
        this.p2 = 0;
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            videoSink.u();
        } else {
            this.O1.d();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean P0() {
        MediaCodecInfo mediaCodecInfo = this.X;
        if (this.X1 != null && mediaCodecInfo != null) {
            String str = mediaCodecInfo.f15374a;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.P0();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void Q() {
        c1();
        int i2 = this.p2;
        if (i2 != 0) {
            long j2 = this.o2;
            VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
            Handler handler = eventDispatcher.f15988a;
            if (handler != null) {
                handler.post(new p51(eventDispatcher, j2, i2));
            }
            this.o2 = 0L;
            this.p2 = 0;
        }
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            videoSink.s();
        } else {
            VideoFrameReleaseControl videoFrameReleaseControl = this.O1;
            videoFrameReleaseControl.d = false;
            videoFrameReleaseControl.f15958i = -9223372036854775807L;
            VideoFrameReleaseHelper videoFrameReleaseHelper = videoFrameReleaseControl.f15953b;
            videoFrameReleaseHelper.d = false;
            VideoFrameReleaseHelper.VSyncSampler vSyncSampler = videoFrameReleaseHelper.f15968c;
            if (vSyncSampler != null) {
                vSyncSampler.b();
            }
            videoFrameReleaseHelper.a();
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    public final void R(Format[] formatArr, long j2, long j3, MediaSource.MediaPeriodId mediaPeriodId) {
        super.R(formatArr, j2, j3, mediaPeriodId);
        j1(mediaPeriodId);
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final int R0(MediaCodecSelector mediaCodecSelector, Format format) {
        boolean z;
        int i2 = 0;
        if (!MimeTypes.o(format.o)) {
            return RendererCapabilities.o(0, 0, 0, 0);
        }
        boolean z2 = format.s != null;
        Context context = this.J1;
        List listX0 = X0(context, mediaCodecSelector, format, z2, false);
        if (z2 && listX0.isEmpty()) {
            listX0 = X0(context, mediaCodecSelector, format, false, false);
        }
        if (listX0.isEmpty()) {
            return RendererCapabilities.o(1, 0, 0, 0);
        }
        int i3 = format.P;
        if (i3 != 0 && i3 != 2) {
            return RendererCapabilities.o(2, 0, 0, 0);
        }
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) listX0.get(0);
        boolean zE = mediaCodecInfo.e(context, format);
        if (!zE) {
            int i4 = 1;
            while (true) {
                if (i4 >= listX0.size()) {
                    z = true;
                    break;
                }
                MediaCodecInfo mediaCodecInfo2 = (MediaCodecInfo) listX0.get(i4);
                if (mediaCodecInfo2.e(context, format)) {
                    z = false;
                    zE = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
                i4++;
            }
        } else {
            z = true;
            break;
        }
        int i5 = zE ? 4 : 3;
        int i6 = mediaCodecInfo.f(format) ? 16 : 8;
        int i7 = mediaCodecInfo.g ? 64 : 0;
        int i8 = z ? 128 : 0;
        if ("video/dolby-vision".equals(format.o) && !Api26.a(context)) {
            i8 = 256;
        }
        if (zE) {
            List listX1 = X0(context, mediaCodecSelector, format, z2, true);
            if (!listX1.isEmpty()) {
                HashMap map = MediaCodecUtil.f15393a;
                ArrayList arrayList = new ArrayList(listX1);
                Collections.sort(arrayList, new g(new e(context, format)));
                MediaCodecInfo mediaCodecInfo3 = (MediaCodecInfo) arrayList.get(0);
                if (mediaCodecInfo3.e(context, format) && mediaCodecInfo3.f(format)) {
                    i2 = 32;
                }
            }
        }
        return i5 | i6 | i2 | i7 | i8;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void S() {
        MediaSource.MediaPeriodId mediaPeriodId = this.r;
        if (mediaPeriodId != null) {
            j1(mediaPeriodId);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation W(MediaCodecInfo mediaCodecInfo, Format format, Format format2, boolean z) {
        int i2;
        DecoderReuseEvaluation decoderReuseEvaluationB = mediaCodecInfo.b(format, format2);
        float f2 = format.z;
        float f3 = format2.z;
        int i3 = decoderReuseEvaluationB.f14585e;
        CodecMaxValues codecMaxValues = this.U1;
        codecMaxValues.getClass();
        if (format2.v > codecMaxValues.f15903a || format2.w > codecMaxValues.f15904b) {
            i3 |= 256;
        }
        if (Y0(mediaCodecInfo, format2) > codecMaxValues.f15905c) {
            i3 |= 64;
        }
        if (this.g2 != Integer.MIN_VALUE && (i2 = Build.VERSION.SDK_INT) < 31 && ((i2 != 30 || Build.MODEL.startsWith("MiTV")) && f2 != -1.0f && f3 != -1.0f && (!mediaCodecInfo.f15378f || !z))) {
            float fMax = Math.max(f3, f2) / Math.min(f3, f2);
            if (Math.abs(fMax - Math.round(fMax)) > 0.01f) {
                i3 |= 65536;
            }
        }
        int i4 = i3;
        return new DecoderReuseEvaluation(mediaCodecInfo.f15374a, format, format2, i4 != 0 ? 0 : decoderReuseEvaluationB.d, i4);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final MediaCodecDecoderException X(IllegalStateException illegalStateException, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(illegalStateException, mediaCodecInfo, this.b2);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    public final Surface Z0(MediaCodecInfo mediaCodecInfo) {
        boolean z;
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            return videoSink.p();
        }
        Surface surface = this.b2;
        if (surface != null) {
            return surface;
        }
        if (Build.VERSION.SDK_INT >= 35 && mediaCodecInfo.f15379h) {
            return null;
        }
        Preconditions.q(g1(mediaCodecInfo));
        PlaceholderSurface placeholderSurface = this.c2;
        if (placeholderSurface != null && placeholderSurface.f15910b != mediaCodecInfo.f15378f && placeholderSurface != null) {
            placeholderSurface.release();
            this.c2 = null;
        }
        if (this.c2 == null) {
            boolean z2 = mediaCodecInfo.f15378f;
            if (z2) {
                if (!PlaceholderSurface.a()) {
                    z = false;
                }
                Preconditions.q(z);
                this.c2 = new PlaceholderSurface.PlaceholderSurfaceThread().init(z2 ? PlaceholderSurface.f15908e : 0);
            } else {
                int i2 = PlaceholderSurface.f15908e;
            }
            z = true;
            Preconditions.q(z);
            this.c2 = new PlaceholderSurface.PlaceholderSurfaceThread().init(z2 ? PlaceholderSurface.f15908e : 0);
        }
        return this.c2;
    }

    public final boolean a1(MediaCodecInfo mediaCodecInfo) {
        if (this.X1 != null) {
            return true;
        }
        Surface surface = this.b2;
        if (surface == null || !surface.isValid()) {
            return (Build.VERSION.SDK_INT >= 35 && mediaCodecInfo.f15379h) || g1(mediaCodecInfo);
        }
        return true;
    }

    public final boolean b1(DecoderInputBuffer decoderInputBuffer) {
        if (j() || decoderInputBuffer.f(PKIFailureInfo.duplicateCertReq) || this.z2 == -9223372036854775807L) {
            return true;
        }
        return this.z2 - (decoderInputBuffer.g - j0()) <= 100000;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final int c0(DecoderInputBuffer decoderInputBuffer) {
        if (Build.VERSION.SDK_INT < 34) {
            return 0;
        }
        ScrubbingModeParameters scrubbingModeParameters = this.l2;
        return (((scrubbingModeParameters == null || !scrubbingModeParameters.f14788e) && !this.u2) || decoderInputBuffer.g >= this.m || b1(decoderInputBuffer)) ? 0 : 32;
    }

    public final void c1() {
        if (this.i2 > 0) {
            Clock clock = this.f14566h;
            clock.getClass();
            long jB = clock.b();
            long j2 = jB - this.h2;
            int i2 = this.i2;
            VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
            Handler handler = eventDispatcher.f15988a;
            if (handler != null) {
                handler.post(new p51(eventDispatcher, i2, j2));
            }
            this.i2 = 0;
            this.h2 = jB;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final float d0(float f2, Format format, Format[] formatArr) {
        MediaCodecInfo mediaCodecInfo;
        float fMax = -1.0f;
        for (Format format2 : formatArr) {
            float f3 = format2.z;
            if (f3 != -1.0f) {
                fMax = Math.max(fMax, f3);
            }
        }
        float f4 = fMax == -1.0f ? -1.0f : fMax * f2;
        if (this.l2 == null || (mediaCodecInfo = this.X) == null) {
            return f4;
        }
        int i2 = format.v;
        int i3 = format.w;
        float f5 = -3.4028235E38f;
        if (mediaCodecInfo.f15380i) {
            float f6 = mediaCodecInfo.l;
            if (f6 != -3.4028235E38f && mediaCodecInfo.f15381j == i2 && mediaCodecInfo.f15382k == i3) {
                f5 = f6;
            } else {
                f5 = 1024.0f;
                if (!mediaCodecInfo.g(1024.0d, i2, i3)) {
                    float f7 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    while (true) {
                        float f8 = f5 - f7;
                        if (Math.abs(f8) <= 5.0f) {
                            break;
                        }
                        float f9 = (f8 / 2.0f) + f7;
                        if (mediaCodecInfo.g(f9, i2, i3)) {
                            f7 = f9;
                        } else {
                            f5 = f9;
                        }
                    }
                    f5 = f7;
                }
                mediaCodecInfo.l = f5;
                mediaCodecInfo.f15381j = i2;
                mediaCodecInfo.f15382k = i3;
            }
        }
        return f4 != -1.0f ? Math.max(f4, f5) : f5;
    }

    public final void d1() {
        MediaCodecAdapter mediaCodecAdapter;
        if (this.u2 && (mediaCodecAdapter = this.P) != null) {
            this.w2 = new OnFrameRenderedListener(mediaCodecAdapter);
            if (Build.VERSION.SDK_INT >= 33) {
                Bundle bundle = new Bundle();
                bundle.putInt("tunnel-peek", 1);
                mediaCodecAdapter.b(bundle);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean e() {
        if (!this.u1) {
            return false;
        }
        VideoSink videoSink = this.X1;
        return videoSink == null || videoSink.e();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final ArrayList e0(MediaCodecSelector mediaCodecSelector, Format format, boolean z) {
        boolean z2 = this.u2;
        Context context = this.J1;
        List listX0 = X0(context, mediaCodecSelector, format, z, z2);
        HashMap map = MediaCodecUtil.f15393a;
        ArrayList arrayList = new ArrayList(listX0);
        Collections.sort(arrayList, new g(new e(context, format)));
        return arrayList;
    }

    public final void e1(MediaCodecAdapter mediaCodecAdapter, int i2, long j2) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.m(i2, j2);
        Trace.endSection();
        this.y1.f14576e++;
        this.j2 = 0;
        if (this.X1 == null) {
            VideoSize videoSize = this.r2;
            boolean zEquals = videoSize.equals(VideoSize.d);
            VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
            if (!zEquals && !videoSize.equals(this.s2)) {
                this.s2 = videoSize;
                eventDispatcher.a(videoSize);
            }
            VideoFrameReleaseControl videoFrameReleaseControl = this.O1;
            boolean z = videoFrameReleaseControl.f15955e != 3;
            videoFrameReleaseControl.f15955e = 3;
            videoFrameReleaseControl.g = Util.R(videoFrameReleaseControl.l.b());
            if (!z || (surface = this.b2) == null) {
                return;
            }
            Handler handler = eventDispatcher.f15988a;
            if (handler != null) {
                handler.post(new kd0(eventDispatcher, surface, SystemClock.elapsedRealtime()));
            }
            this.e2 = true;
        }
    }

    public final void f1(Object obj) {
        Handler handler;
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        Surface surface2 = this.b2;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        if (surface2 == surface) {
            if (surface != null) {
                VideoSize videoSize = this.s2;
                if (videoSize != null) {
                    eventDispatcher.a(videoSize);
                }
                Surface surface3 = this.b2;
                if (surface3 == null || !this.e2 || (handler = eventDispatcher.f15988a) == null) {
                    return;
                }
                handler.post(new kd0(eventDispatcher, surface3, SystemClock.elapsedRealtime()));
                return;
            }
            return;
        }
        this.b2 = surface;
        VideoSink videoSink = this.X1;
        VideoFrameReleaseControl videoFrameReleaseControl = this.O1;
        if (videoSink == null) {
            videoFrameReleaseControl.g(surface);
        }
        this.e2 = false;
        int i2 = this.f14567i;
        MediaCodecAdapter mediaCodecAdapter = this.P;
        if (mediaCodecAdapter != null && this.X1 == null) {
            MediaCodecInfo mediaCodecInfo = this.X;
            mediaCodecInfo.getClass();
            if (!a1(mediaCodecInfo) || this.V1) {
                F0();
                p0();
            } else {
                Surface surfaceZ0 = Z0(mediaCodecInfo);
                if (surfaceZ0 != null) {
                    mediaCodecAdapter.j(surfaceZ0);
                } else {
                    if (Build.VERSION.SDK_INT < 35) {
                        r81.b();
                        return;
                    }
                    mediaCodecAdapter.g();
                }
            }
        }
        if (surface != null) {
            VideoSize videoSize2 = this.s2;
            if (videoSize2 != null) {
                eventDispatcher.a(videoSize2);
            }
        } else {
            this.s2 = null;
            VideoSink videoSink2 = this.X1;
            if (videoSink2 != null) {
                videoSink2.w();
            }
        }
        if (i2 == 2) {
            VideoSink videoSink3 = this.X1;
            if (videoSink3 != null) {
                videoSink3.y(true);
            } else {
                videoFrameReleaseControl.c(true);
            }
        }
        d1();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public final void g(long j2, long j3) throws ExoPlaybackException {
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            try {
                videoSink.g(j2, j3);
            } catch (VideoSink.VideoSinkException e2) {
                throw J(e2, e2.f15991b, false, 7001);
            }
        }
        super.g(j2, j3);
    }

    public final boolean g1(MediaCodecInfo mediaCodecInfo) {
        if (this.u2 || V0(mediaCodecInfo.f15374a)) {
            return false;
        }
        return !mediaCodecInfo.f15378f || PlaceholderSurface.a();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "MediaCodecVideoRenderer";
    }

    public final void h1(MediaCodecAdapter mediaCodecAdapter, int i2) {
        Trace.beginSection("skipVideoBuffer");
        mediaCodecAdapter.l(i2);
        Trace.endSection();
        this.y1.f14577f++;
    }

    /* JADX WARN: Code duplicated, block: B:67:0x013b  */
    /* JADX WARN: Instruction removed from duplicated block: B:67:0x013b, please report this as an issue */
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final MediaCodecAdapter.Configuration i0(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f2) {
        int i2;
        CodecMaxValues codecMaxValues;
        Point point;
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities;
        Point point2;
        byte b2;
        boolean z;
        Pair pairB;
        int iW0;
        String str = mediaCodecInfo.f15376c;
        Format[] formatArr = this.f14569k;
        formatArr.getClass();
        int i3 = format.v;
        float f3 = format.z;
        ColorInfo colorInfo = format.E;
        int i4 = format.w;
        int iY0 = Y0(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (iY0 != -1 && (iW0 = W0(mediaCodecInfo, format)) != -1) {
                iY0 = Math.min((int) (iY0 * 1.5f), iW0);
            }
            codecMaxValues = new CodecMaxValues(i3, i4, iY0);
            colorInfo = colorInfo;
            i2 = i4;
        } else {
            int length = formatArr.length;
            int iMax = i3;
            int iMax2 = i4;
            int i5 = 0;
            boolean z2 = false;
            while (i5 < length) {
                Format format2 = formatArr[i5];
                Format[] formatArr2 = formatArr;
                if (colorInfo != null && format2.E == null) {
                    Format.Builder builderA = format2.a();
                    builderA.D = colorInfo;
                    format2 = new Format(builderA);
                }
                DecoderReuseEvaluation decoderReuseEvaluationB = mediaCodecInfo.b(format, format2);
                int i6 = length;
                int i7 = format2.w;
                if (decoderReuseEvaluationB.d != 0) {
                    int i8 = format2.v;
                    b2 = -1;
                    z2 |= i8 == -1 || i7 == -1;
                    iMax = Math.max(iMax, i8);
                    iMax2 = Math.max(iMax2, i7);
                    iY0 = Math.max(iY0, Y0(mediaCodecInfo, format2));
                } else {
                    b2 = -1;
                }
                length = i6;
                i5++;
                formatArr = formatArr2;
            }
            if (z2) {
                Log.g("Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
                boolean z3 = i4 > i3;
                int i9 = z3 ? i4 : i3;
                int i10 = z3 ? i3 : i4;
                boolean z4 = z3;
                float f4 = i10 / i9;
                int i11 = 0;
                while (true) {
                    if (i11 < 9) {
                        int i12 = C2[i11];
                        int i13 = i11;
                        int i14 = (int) (i12 * f4);
                        if (i12 > i9 && i14 > i10) {
                            if (z4) {
                                i12 = i14;
                            }
                            if (z4) {
                                i14 = i12;
                            }
                            int i15 = i9;
                            android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = mediaCodecInfo.d;
                            if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                                point2 = null;
                            } else {
                                int widthAlignment = videoCapabilities.getWidthAlignment();
                                int heightAlignment = videoCapabilities.getHeightAlignment();
                                point2 = new Point(Util.g(i12, widthAlignment) * widthAlignment, Util.g(i14, heightAlignment) * heightAlignment);
                            }
                            if (point2 != null) {
                                point = point2;
                                i2 = i4;
                                if (mediaCodecInfo.g(f3, point2.x, point2.y)) {
                                }
                            } else {
                                i2 = i4;
                            }
                            i11 = i13 + 1;
                            i4 = i2;
                            i9 = i15;
                            colorInfo = colorInfo;
                            i10 = i10;
                        }
                        if (point != null) {
                            iMax = Math.max(iMax, point.x);
                            iMax2 = Math.max(iMax2, point.y);
                            Format.Builder builderA2 = format.a();
                            builderA2.u = iMax;
                            builderA2.v = iMax2;
                            iY0 = Math.max(iY0, W0(mediaCodecInfo, new Format(builderA2)));
                            Log.g("Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                        }
                    }
                    colorInfo = colorInfo;
                    i2 = i4;
                    point = null;
                    if (point != null) {
                        iMax = Math.max(iMax, point.x);
                        iMax2 = Math.max(iMax2, point.y);
                        Format.Builder builderA3 = format.a();
                        builderA3.u = iMax;
                        builderA3.v = iMax2;
                        iY0 = Math.max(iY0, W0(mediaCodecInfo, new Format(builderA3)));
                        Log.g("Codec max resolution adjusted to: " + iMax + "x" + iMax2);
                    }
                }
            } else {
                colorInfo = colorInfo;
                i2 = i4;
            }
            codecMaxValues = new CodecMaxValues(iMax, iMax2, iY0);
        }
        this.U1 = codecMaxValues;
        int i16 = this.u2 ? this.v2 : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", i3);
        mediaFormat.setInteger("height", i2);
        MediaFormatUtil.b(mediaFormat, format.r);
        if (f3 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f3);
        }
        MediaFormatUtil.a(mediaFormat, "rotation-degrees", format.A);
        if (colorInfo != null) {
            ColorInfo colorInfo2 = colorInfo;
            MediaFormatUtil.a(mediaFormat, "color-transfer", colorInfo2.f13727c);
            MediaFormatUtil.a(mediaFormat, "color-standard", colorInfo2.f13725a);
            MediaFormatUtil.a(mediaFormat, "color-range", colorInfo2.f13726b);
            byte[] bArr = colorInfo2.d;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(format.o) && (pairB = CodecSpecificDataUtil.b(format)) != null) {
            MediaFormatUtil.a(mediaFormat, "profile", ((Integer) pairB.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.f15903a);
        mediaFormat.setInteger("max-height", codecMaxValues.f15904b);
        MediaFormatUtil.a(mediaFormat, "max-input-size", codecMaxValues.f15905c);
        mediaFormat.setInteger("priority", 0);
        if (f2 != -1.0f) {
            mediaFormat.setFloat("operating-rate", f2);
        }
        if (this.N1) {
            z = true;
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            z = true;
        }
        if (i16 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", z);
            mediaFormat.setInteger("audio-session-id", i16);
        }
        if (Build.VERSION.SDK_INT >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.t2));
        }
        U(mediaFormat);
        Surface surfaceZ0 = Z0(mediaCodecInfo);
        if (this.X1 != null && !Util.L(this.J1)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new MediaCodecAdapter.Configuration(mediaCodecInfo, mediaFormat, format, surfaceZ0, mediaCrypto, null);
    }

    public final void i1(int i2, int i3) {
        DecoderCounters decoderCounters = this.y1;
        decoderCounters.f14578h += i2;
        int i4 = i2 + i3;
        decoderCounters.g += i4;
        this.i2 += i4;
        int i5 = this.j2 + i4;
        this.j2 = i5;
        decoderCounters.f14579i = Math.max(i5, decoderCounters.f14579i);
        int i6 = this.M1;
        if (i6 <= 0 || this.i2 < i6) {
            return;
        }
        c1();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public final boolean isReady() {
        boolean zO0 = o0();
        VideoSink videoSink = this.X1;
        if (videoSink != null) {
            return videoSink.m(zO0);
        }
        if (zO0 && (this.P == null || this.u2)) {
            return true;
        }
        return this.O1.b(zO0);
    }

    public final void j1(MediaSource.MediaPeriodId mediaPeriodId) {
        Timeline timeline = this.q;
        if (timeline.p()) {
            this.z2 = -9223372036854775807L;
            return;
        }
        int iB = timeline.b(mediaPeriodId.f15516a);
        if (iB == -1) {
            this.z2 = -9223372036854775807L;
        } else {
            this.z2 = timeline.f(iB, new Timeline.Period(), false).d;
        }
    }

    public final void k1(long j2) {
        DecoderCounters decoderCounters = this.y1;
        decoderCounters.f14581k += j2;
        decoderCounters.l++;
        this.o2 += j2;
        this.p2++;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void l0(DecoderInputBuffer decoderInputBuffer) {
        if (this.W1) {
            ByteBuffer byteBuffer = decoderInputBuffer.f14545h;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b2 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b3 = byteBuffer.get();
                byte b4 = byteBuffer.get();
                byteBuffer.position(0);
                if (b2 == -75 && s == 60 && s2 == 1 && b3 == 4) {
                    if (b4 == 0 || b4 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        MediaCodecAdapter mediaCodecAdapter = this.P;
                        mediaCodecAdapter.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        mediaCodecAdapter.b(bundle);
                    }
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void m() {
        VideoSink videoSink = this.X1;
        if (videoSink == null) {
            VideoFrameReleaseControl videoFrameReleaseControl = this.O1;
            if (videoFrameReleaseControl.f15955e == 0) {
                videoFrameReleaseControl.f15955e = 1;
                return;
            }
            return;
        }
        int i2 = this.Z1;
        if (i2 == 0 || i2 == 1) {
            this.Z1 = 0;
        } else {
            videoSink.q();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void q(int i2, Object obj) {
        if (i2 == 1) {
            f1(obj);
            return;
        }
        if (i2 == 7) {
            obj.getClass();
            VideoFrameMetadataListener videoFrameMetadataListener = (VideoFrameMetadataListener) obj;
            this.x2 = videoFrameMetadataListener;
            VideoSink videoSink = this.X1;
            if (videoSink != null) {
                videoSink.i(videoFrameMetadataListener);
                return;
            }
            return;
        }
        if (i2 == 10) {
            obj.getClass();
            int iIntValue = ((Integer) obj).intValue();
            if (this.v2 != iIntValue) {
                this.v2 = iIntValue;
                if (this.u2) {
                    F0();
                    return;
                }
                return;
            }
            return;
        }
        if (i2 == 4) {
            obj.getClass();
            int iIntValue2 = ((Integer) obj).intValue();
            this.f2 = iIntValue2;
            MediaCodecAdapter mediaCodecAdapter = this.P;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.h(iIntValue2);
                return;
            }
            return;
        }
        if (i2 == 5) {
            obj.getClass();
            int iIntValue3 = ((Integer) obj).intValue();
            this.g2 = iIntValue3;
            VideoSink videoSink2 = this.X1;
            if (videoSink2 != null) {
                videoSink2.v(iIntValue3);
                return;
            }
            VideoFrameReleaseHelper videoFrameReleaseHelper = this.O1.f15953b;
            if (videoFrameReleaseHelper.f15973j == iIntValue3) {
                return;
            }
            videoFrameReleaseHelper.f15973j = iIntValue3;
            videoFrameReleaseHelper.d(true);
            return;
        }
        if (i2 == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(VideoFrameProcessor.f14021a)) {
                VideoSink videoSink3 = this.X1;
                if (videoSink3 == null || !videoSink3.a()) {
                    return;
                }
                this.X1.o();
                return;
            }
            this.a2 = list;
            VideoSink videoSink4 = this.X1;
            if (videoSink4 != null) {
                videoSink4.l(list);
                return;
            }
            return;
        }
        if (i2 == 14) {
            obj.getClass();
            Size size = (Size) obj;
            if (size.f14198a == 0 || size.f14199b == 0) {
                return;
            }
            this.d2 = size;
            VideoSink videoSink5 = this.X1;
            if (videoSink5 != null) {
                Surface surface = this.b2;
                surface.getClass();
                videoSink5.r(surface, size);
                return;
            }
            return;
        }
        switch (i2) {
            case 16:
                obj.getClass();
                this.t2 = ((Integer) obj).intValue();
                MediaCodecAdapter mediaCodecAdapter2 = this.P;
                if (mediaCodecAdapter2 != null && Build.VERSION.SDK_INT >= 35) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("importance", Math.max(0, -this.t2));
                    mediaCodecAdapter2.b(bundle);
                }
                break;
            case 17:
                Surface surface2 = this.b2;
                f1(null);
                obj.getClass();
                ((MediaCodecVideoRenderer) obj).q(1, surface2);
                break;
            case 18:
                ScrubbingModeParameters scrubbingModeParameters = this.l2;
                boolean z = scrubbingModeParameters != null && scrubbingModeParameters.f14786b;
                ScrubbingModeParameters scrubbingModeParameters2 = (ScrubbingModeParameters) obj;
                this.l2 = scrubbingModeParameters2;
                if (z != (scrubbingModeParameters2 != null && scrubbingModeParameters2.f14786b)) {
                    S0(this.Q);
                }
                break;
            default:
                super.q(i2, obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final boolean r0(Format format) throws ExoPlaybackException {
        VideoSink videoSink = this.X1;
        if (videoSink == null || videoSink.a()) {
            return true;
        }
        try {
            return this.X1.n(format);
        } catch (VideoSink.VideoSinkException e2) {
            throw J(e2, format, false, 7000);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void s0(Exception exc) {
        Log.e("Video codec error", exc);
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        Handler handler = eventDispatcher.f15988a;
        if (handler != null) {
            handler.post(new w21(eventDispatcher, exc, 14));
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public final boolean t(long j2, long j3) {
        return j2 < -30000 && j3 > 100000;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void t0(long j2, long j3, String str) {
        String str2;
        android.media.MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        Handler handler = eventDispatcher.f15988a;
        if (handler != null) {
            str2 = str;
            handler.post(new bc(1, j2, j3, eventDispatcher, str2));
        } else {
            str2 = str;
        }
        this.V1 = V0(str2);
        MediaCodecInfo mediaCodecInfo = this.X;
        mediaCodecInfo.getClass();
        boolean z = false;
        if ("video/x-vnd.on2.vp9".equals(mediaCodecInfo.f15375b)) {
            android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = mediaCodecInfo.d;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new android.media.MediaCodecInfo.CodecProfileLevel[0];
            }
            for (android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArr) {
                if (codecProfileLevel.profile == 16384) {
                    z = true;
                    break;
                }
            }
        }
        this.W1 = z;
        d1();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void u0(CodecParameters codecParameters) {
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        Handler handler = eventDispatcher.f15988a;
        if (handler != null) {
            handler.post(new w21(eventDispatcher, codecParameters, 15));
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean v(long j2) {
        if (this.s1 == -9223372036854775807L || j2 < this.m2) {
            return false;
        }
        long j3 = this.A1;
        return j3 == -9223372036854775807L || j2 > j3;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void v0(String str) {
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        Handler handler = eventDispatcher.f15988a;
        if (handler != null) {
            handler.post(new w21(eventDispatcher, str, 12));
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameReleaseControl.FrameTimingEvaluator
    public final boolean w(long j2, long j3, boolean z, boolean z2) {
        if (this.X1 != null && this.K1) {
            j3 -= -this.y2;
        }
        if (j2 < -500000 && !z) {
            SampleStream sampleStream = this.f14568j;
            sampleStream.getClass();
            int iB = sampleStream.b(j3 - this.l);
            if (iB != 0) {
                this.m2 = j3;
                DecoderCounters decoderCounters = this.y1;
                PriorityQueue priorityQueue = this.T1;
                if (z2) {
                    int i2 = decoderCounters.d + iB;
                    decoderCounters.d = i2;
                    decoderCounters.f14577f += this.k2;
                    decoderCounters.d = priorityQueue.size() + i2;
                } else {
                    decoderCounters.f14580j++;
                    i1(priorityQueue.size() + iB, this.k2);
                }
                if (this.P != null) {
                    if (P0()) {
                        F0();
                        p0();
                    } else if (N0()) {
                        a0();
                    } else {
                        this.D1 = true;
                    }
                }
                VideoSink videoSink = this.X1;
                if (videoSink != null) {
                    videoSink.x(false);
                }
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final DecoderReuseEvaluation w0(FormatHolder formatHolder) {
        DecoderReuseEvaluation decoderReuseEvaluationW0 = super.w0(formatHolder);
        Format format = formatHolder.f14697b;
        format.getClass();
        VideoRendererEventListener.EventDispatcher eventDispatcher = this.L1;
        Handler handler = eventDispatcher.f15988a;
        if (handler != null) {
            handler.post(new b5(eventDispatcher, format, decoderReuseEvaluationW0, 24));
        }
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = this.S1;
        if (videoFrameReleaseEarlyTimeForecaster != null) {
            videoFrameReleaseEarlyTimeForecaster.b();
        }
        return decoderReuseEvaluationW0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void x0(Format format, MediaFormat mediaFormat) {
        int integer;
        int i2;
        MediaCodecAdapter mediaCodecAdapter = this.P;
        if (mediaCodecAdapter != null) {
            mediaCodecAdapter.h(this.f2);
        }
        if (this.u2) {
            i2 = format.v;
            integer = format.w;
        } else {
            mediaFormat.getClass();
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            int integer2 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
            i2 = integer2;
        }
        float f2 = format.B;
        int i3 = format.A;
        if (i3 == 90 || i3 == 270) {
            f2 = 1.0f / f2;
            int i4 = integer;
            integer = i2;
            i2 = i4;
        }
        this.r2 = new VideoSize(i2, integer, f2);
        VideoSink videoSink = this.X1;
        if (videoSink == null || !this.A2) {
            this.O1.f(format.z);
        } else {
            Format.Builder builderA = format.a();
            builderA.u = i2;
            builderA.v = integer;
            builderA.A = f2;
            Format format2 = new Format(builderA);
            int i5 = this.Z1;
            List listX = this.a2;
            if (listX == null) {
                listX = ImmutableList.x();
            }
            videoSink.k(format2, k0(), i5, listX);
            this.Z1 = 2;
        }
        this.A2 = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    public final void z0(long j2) {
        super.z0(j2);
        if (this.u2) {
            return;
        }
        this.k2--;
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        this(builder);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j2) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        builder.f15897e = j2;
        this(builder);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j2, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        builder.f15897e = j2;
        builder.g = handler;
        builder.f15899h = videoRendererEventListener;
        builder.f15900i = i2;
        this(builder);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j2, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        builder.f15897e = j2;
        builder.f15898f = z;
        builder.g = handler;
        builder.f15899h = videoRendererEventListener;
        builder.f15900i = i2;
        this(builder);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j2, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        builder.d = factory;
        builder.f15897e = j2;
        builder.f15898f = z;
        builder.g = handler;
        builder.f15899h = videoRendererEventListener;
        builder.f15900i = i2;
        this(builder);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j2, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2, float f2) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        builder.d = factory;
        builder.f15897e = j2;
        builder.f15898f = z;
        builder.g = handler;
        builder.f15899h = videoRendererEventListener;
        builder.f15900i = i2;
        builder.f15901j = f2;
        this(builder);
    }

    @Deprecated
    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j2, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i2, float f2, VideoSink videoSink) {
        Builder builder = new Builder(context);
        builder.f15896c = mediaCodecSelector;
        builder.d = factory;
        builder.f15897e = j2;
        builder.f15898f = z;
        builder.g = handler;
        builder.f15899h = videoRendererEventListener;
        builder.f15900i = i2;
        builder.f15901j = f2;
        builder.f15902k = videoSink;
        this(builder);
    }
}

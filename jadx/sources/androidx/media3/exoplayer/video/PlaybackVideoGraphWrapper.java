package androidx.media3.exoplayer.video;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoCompositorSettings;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoGraph;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import defpackage.aa0;
import defpackage.bm;
import defpackage.hn0;
import defpackage.ko0;
import defpackage.l8;
import defpackage.ow;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackVideoGraphWrapper implements VideoGraph.Listener {
    public static final l8 w = new l8(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f15912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VideoGraph.Factory f15913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray f15914c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final VideoSink f15915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Clock f15916f;
    public final CopyOnWriteArraySet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15917h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final VideoFrameReleaseEarlyTimeForecaster f15918i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TimedValueQueue f15919j = new TimedValueQueue();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Format f15920k;
    public final VideoCompositorSettings l;
    public HandlerWrapper m;
    public VideoGraph n;
    public VideoFrameMetadataListener o;
    public Pair p;
    public int q;
    public int r;
    public long s;
    public boolean t;
    public int u;
    public int v;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15921a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final VideoFrameReleaseControl f15922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public VideoGraph.Factory f15923c;
        public boolean d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f15925f;
        public long g = 15000;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final VideoFrameReleaseEarlyTimeForecaster f15926h = new VideoFrameReleaseEarlyTimeForecaster(1.0f);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Clock f15924e = Clock.f14143a;

        public Builder(Context context, VideoFrameReleaseControl videoFrameReleaseControl) {
            this.f15921a = context.getApplicationContext();
            this.f15922b = videoFrameReleaseControl;
        }
    }

    public final class DefaultVideoSinkListener implements VideoSink.Listener {
        public DefaultVideoSinkListener() {
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public final void b(VideoSize videoSize) {
            Iterator it = PlaybackVideoGraphWrapper.this.g.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).b(videoSize);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public final void c() {
            Iterator it = PlaybackVideoGraphWrapper.this.g.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).c();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink.Listener
        public final void d() {
            Iterator it = PlaybackVideoGraphWrapper.this.g.iterator();
            while (it.hasNext()) {
                ((Listener) it.next()).d();
            }
        }
    }

    public final class InputVideoSink implements VideoSink, Listener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15928a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15929b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImmutableList f15930c;
        public Format d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f15931e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f15932f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public VideoSink.Listener f15933h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Executor f15934i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f15935j;

        public InputVideoSink(Context context, int i2) {
            this.f15929b = i2;
            this.f15928a = Util.L(context) ? 1 : 5;
            this.f15930c = ImmutableList.x();
            this.f15932f = -9223372036854775807L;
            this.f15933h = VideoSink.Listener.f15990a;
            this.f15934i = PlaybackVideoGraphWrapper.w;
        }

        public final void A(Format format) {
            Format.Builder builderA = format.a();
            ColorInfo colorInfo = format.E;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            playbackVideoGraphWrapper.getClass();
            if (colorInfo == null || !colorInfo.d()) {
                colorInfo = ColorInfo.f13721h;
            }
            builderA.D = colorInfo;
            new Format(builderA);
            VideoGraph videoGraph = playbackVideoGraphWrapper.n;
            videoGraph.getClass();
            videoGraph.v();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean a() {
            return this.f15935j;
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public final void b(VideoSize videoSize) {
            this.f15934i.execute(new aa0(this.f15933h, videoSize, 14));
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public final void c() {
            VideoSink.Listener listener = this.f15933h;
            Executor executor = this.f15934i;
            Objects.requireNonNull(listener);
            executor.execute(new ko0(listener, 1));
        }

        @Override // androidx.media3.exoplayer.video.PlaybackVideoGraphWrapper.Listener
        public final void d() {
            VideoSink.Listener listener = this.f15933h;
            Executor executor = this.f15934i;
            Objects.requireNonNull(listener);
            executor.execute(new ko0(listener, 0));
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean e() {
            if (!this.f15935j) {
                return false;
            }
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            return playbackVideoGraphWrapper.q == 0 && playbackVideoGraphWrapper.t && ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).e();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean f(long j2, VideoSink.VideoFrameHandler videoFrameHandler) {
            int i2;
            Preconditions.q(this.f15935j);
            long j3 = j2 + this.f15931e;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = playbackVideoGraphWrapper.f15918i;
            long j4 = videoFrameReleaseEarlyTimeForecaster.f15963a;
            long j5 = j4 == -9223372036854775807L ? -9223372036854775807L : (long) (((j3 - j4) * videoFrameReleaseEarlyTimeForecaster.f15965c) + videoFrameReleaseEarlyTimeForecaster.f15964b);
            if (j5 != -9223372036854775807L) {
                long j6 = playbackVideoGraphWrapper.f15917h;
                if (j6 != -9223372036854775807L && j5 < j6 && (i2 = this.g) < 2) {
                    this.g = i2 + 1;
                    ((MediaCodecVideoRenderer.AnonymousClass2) videoFrameHandler).e();
                    return true;
                }
            }
            int i3 = playbackVideoGraphWrapper.u;
            if (i3 != -1 && i3 == playbackVideoGraphWrapper.v) {
                VideoGraph videoGraph = playbackVideoGraphWrapper.n;
                videoGraph.getClass();
                if (videoGraph.u() < this.f15928a) {
                    VideoGraph videoGraph2 = playbackVideoGraphWrapper.n;
                    videoGraph2.getClass();
                    if (videoGraph2.t()) {
                        this.f15932f = j3;
                        ((MediaCodecVideoRenderer.AnonymousClass2) videoFrameHandler).f(j3 * 1000);
                        this.g = 0;
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void g(long j2, long j3) throws VideoSink.VideoSinkException {
            ((DefaultVideoSink) PlaybackVideoGraphWrapper.this.f15915e).g(j2 + this.f15931e, j3);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void h(long j2) {
            this.f15931e = j2;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void i(VideoFrameMetadataListener videoFrameMetadataListener) {
            if (this.f15929b == 0) {
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
                playbackVideoGraphWrapper.o = videoFrameMetadataListener;
                ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).f15877j = videoFrameMetadataListener;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void j() {
            long j2 = this.f15932f;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            playbackVideoGraphWrapper.getClass();
            if (playbackVideoGraphWrapper.s >= j2) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).j();
                playbackVideoGraphWrapper.t = true;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void k(Format format, long j2, int i2, List list) {
            Preconditions.q(this.f15935j);
            this.f15930c = ImmutableList.t(list);
            this.d = format;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            playbackVideoGraphWrapper.getClass();
            playbackVideoGraphWrapper.t = false;
            A(format);
            long j3 = this.f15932f;
            boolean z = j3 == -9223372036854775807L;
            if (playbackVideoGraphWrapper.d || (this.f15929b == 0 && z)) {
                long j4 = z ? -4611686018427387904L : j3 + 1;
                playbackVideoGraphWrapper.f15919j.a(j4, new StreamChangeInfo(j2 + this.f15931e, i2, j4));
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void l(List list) {
            if (this.f15930c.equals(list)) {
                return;
            }
            this.f15930c = ImmutableList.t(list);
            Format format = this.d;
            if (format != null) {
                A(format);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean m(boolean z) {
            boolean z2 = false;
            boolean z3 = z && this.f15935j;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            VideoSink videoSink = playbackVideoGraphWrapper.f15915e;
            if (z3 && playbackVideoGraphWrapper.q == 0) {
                z2 = true;
            }
            return ((DefaultVideoSink) videoSink).f15870a.b(z2);
        }

        /* JADX WARN: Code duplicated, block: B:27:0x0069 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:28:0x006b A[Catch: GlException -> 0x0043, TryCatch #0 {GlException -> 0x0043, blocks: (B:13:0x0029, B:16:0x0033, B:19:0x003b, B:26:0x0049, B:28:0x006b, B:30:0x006f, B:38:0x0084, B:43:0x00a4, B:35:0x007a), top: B:64:0x0029 }] */
        /* JADX WARN: Code duplicated, block: B:34:0x0078 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:35:0x007a A[Catch: GlException -> 0x0043, TryCatch #0 {GlException -> 0x0043, blocks: (B:13:0x0029, B:16:0x0033, B:19:0x003b, B:26:0x0049, B:28:0x006b, B:30:0x006f, B:38:0x0084, B:43:0x00a4, B:35:0x007a), top: B:64:0x0029 }] */
        /* JADX WARN: Code duplicated, block: B:36:0x0081  */
        /* JADX WARN: Code duplicated, block: B:38:0x0084 A[Catch: GlException -> 0x0043, TryCatch #0 {GlException -> 0x0043, blocks: (B:13:0x0029, B:16:0x0033, B:19:0x003b, B:26:0x0049, B:28:0x006b, B:30:0x006f, B:38:0x0084, B:43:0x00a4, B:35:0x007a), top: B:64:0x0029 }] */
        /* JADX WARN: Code duplicated, block: B:39:0x009d  */
        /* JADX WARN: Code duplicated, block: B:43:0x00a4 A[Catch: GlException -> 0x0043, TRY_LEAVE, TryCatch #0 {GlException -> 0x0043, blocks: (B:13:0x0029, B:16:0x0033, B:19:0x003b, B:26:0x0049, B:28:0x006b, B:30:0x006f, B:38:0x0084, B:43:0x00a4, B:35:0x007a), top: B:64:0x0029 }] */
        /* JADX WARN: Instruction removed from duplicated block: B:38:0x0084, please report this as an issue */
        @Override // androidx.media3.exoplayer.video.VideoSink
        public final boolean n(Format format) throws VideoSink.VideoSinkException {
            boolean zE;
            int i2;
            boolean z = true;
            Preconditions.q(!this.f15935j);
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            VideoSink videoSink = playbackVideoGraphWrapper.f15915e;
            int i3 = playbackVideoGraphWrapper.r;
            try {
                if (this.f15929b != 0) {
                    if (i3 != 1) {
                        z = false;
                    }
                    this.f15935j = z;
                    return z;
                }
                Preconditions.q(i3 == 0);
                ColorInfo colorInfoA = format.E;
                if (colorInfoA == null || !colorInfoA.d()) {
                    colorInfoA = ColorInfo.f13721h;
                }
                try {
                    int i4 = colorInfoA.f13727c;
                    if (i4 != 7 || (i2 = Build.VERSION.SDK_INT) >= 34) {
                        if (i4 == 6) {
                            if (Build.VERSION.SDK_INT >= 33 || !GlUtil.e("EGL_EXT_gl_colorspace_bt2020_pq")) {
                                zE = false;
                            } else {
                                zE = true;
                            }
                        } else if (i4 == 7) {
                            zE = GlUtil.e("EGL_EXT_gl_colorspace_bt2020_hlg");
                        } else {
                            zE = true;
                        }
                        if (!zE) {
                            Locale locale = Locale.US;
                            Log.g("Color transfer " + i4 + " is not supported. Falling back to OpenGl tone mapping.");
                            colorInfoA = ColorInfo.f13721h;
                        } else if (i4 != 2 || i4 == 10) {
                            colorInfoA = ColorInfo.f13721h;
                        }
                    } else {
                        if (i2 >= 33 && GlUtil.e("EGL_EXT_gl_colorspace_bt2020_pq")) {
                            ColorInfo.Builder builder = new ColorInfo.Builder();
                            builder.f13730a = colorInfoA.f13725a;
                            builder.f13731b = colorInfoA.f13726b;
                            builder.d = colorInfoA.d;
                            builder.f13733e = colorInfoA.f13728e;
                            builder.f13734f = colorInfoA.f13729f;
                            builder.f13732c = 6;
                            colorInfoA = builder.a();
                        } else {
                            if (i4 == 6) {
                                if (Build.VERSION.SDK_INT >= 33) {
                                }
                                zE = false;
                            } else if (i4 == 7) {
                                zE = GlUtil.e("EGL_EXT_gl_colorspace_bt2020_hlg");
                            } else {
                                zE = true;
                            }
                            if (!zE) {
                                Locale locale2 = Locale.US;
                                Log.g("Color transfer " + i4 + " is not supported. Falling back to OpenGl tone mapping.");
                                colorInfoA = ColorInfo.f13721h;
                            } else if (i4 != 2) {
                                colorInfoA = ColorInfo.f13721h;
                            } else {
                                colorInfoA = ColorInfo.f13721h;
                            }
                        }
                    }
                    Clock clock = playbackVideoGraphWrapper.f15916f;
                    Looper looperMyLooper = Looper.myLooper();
                    looperMyLooper.getClass();
                    HandlerWrapper handlerWrapperE = clock.e(looperMyLooper, null);
                    playbackVideoGraphWrapper.m = handlerWrapperE;
                    try {
                        VideoGraph videoGraphA = ((ReflectiveSingleInputVideoGraphFactory) playbackVideoGraphWrapper.f15913b).a(playbackVideoGraphWrapper.f15912a, colorInfoA, playbackVideoGraphWrapper, new ow(handlerWrapperE, 0));
                        playbackVideoGraphWrapper.n = videoGraphA;
                        videoGraphA.s();
                        playbackVideoGraphWrapper.n.r();
                        playbackVideoGraphWrapper.n.n();
                        Pair pair = playbackVideoGraphWrapper.p;
                        if (pair != null) {
                            Surface surface = (Surface) pair.first;
                            Size size = (Size) pair.second;
                            playbackVideoGraphWrapper.b(surface, size.f14198a, size.f14199b);
                        }
                        videoSink.getClass();
                        DefaultVideoSinkListener defaultVideoSinkListener = playbackVideoGraphWrapper.new DefaultVideoSinkListener();
                        HandlerWrapper handlerWrapper = playbackVideoGraphWrapper.m;
                        Objects.requireNonNull(handlerWrapper);
                        ow owVar = new ow(handlerWrapper, 1);
                        DefaultVideoSink defaultVideoSink = (DefaultVideoSink) videoSink;
                        defaultVideoSink.f15875h = defaultVideoSinkListener;
                        defaultVideoSink.f15876i = owVar;
                        playbackVideoGraphWrapper.r = 1;
                    } catch (VideoFrameProcessingException e2) {
                        throw new VideoSink.VideoSinkException(e2, format);
                    }
                } catch (GlUtil.GlException e3) {
                    throw new VideoSink.VideoSinkException(e3, format);
                }
                VideoGraph videoGraph = playbackVideoGraphWrapper.n;
                videoGraph.getClass();
                videoGraph.w();
                playbackVideoGraphWrapper.v++;
                this.f15935j = z;
                return z;
            } catch (VideoFrameProcessingException e4) {
                throw new VideoSink.VideoSinkException(e4, format);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void o() {
            if (this.f15935j) {
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
                long j2 = playbackVideoGraphWrapper.s;
                PlaybackVideoGraphWrapper.a(playbackVideoGraphWrapper, false);
                VideoGraph videoGraph = playbackVideoGraphWrapper.n;
                videoGraph.getClass();
                videoGraph.o();
                playbackVideoGraphWrapper.s = j2;
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final Surface p() {
            Preconditions.q(this.f15935j);
            VideoGraph videoGraph = PlaybackVideoGraphWrapper.this.n;
            videoGraph.getClass();
            return videoGraph.p();
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void q() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            TimedValueQueue timedValueQueue = playbackVideoGraphWrapper.f15919j;
            VideoSink videoSink = playbackVideoGraphWrapper.f15915e;
            if (timedValueQueue.h() == 0) {
                ((DefaultVideoSink) videoSink).q();
                return;
            }
            TimedValueQueue timedValueQueue2 = new TimedValueQueue();
            boolean z = true;
            while (playbackVideoGraphWrapper.f15919j.h() > 0) {
                StreamChangeInfo streamChangeInfo = (StreamChangeInfo) playbackVideoGraphWrapper.f15919j.e();
                streamChangeInfo.getClass();
                if (z) {
                    int i2 = streamChangeInfo.f15940b;
                    if (i2 == 0 || i2 == 1) {
                        streamChangeInfo = new StreamChangeInfo(streamChangeInfo.f15939a, 0, streamChangeInfo.f15941c);
                    } else {
                        ((DefaultVideoSink) videoSink).q();
                    }
                    z = false;
                }
                timedValueQueue2.a(streamChangeInfo.f15941c, streamChangeInfo);
            }
            playbackVideoGraphWrapper.f15919j = timedValueQueue2;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void r(Surface surface, Size size) {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            Pair pair = playbackVideoGraphWrapper.p;
            if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) playbackVideoGraphWrapper.p.second).equals(size)) {
                return;
            }
            playbackVideoGraphWrapper.p = Pair.create(surface, size);
            playbackVideoGraphWrapper.b(surface, size.f14198a, size.f14199b);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void release() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.r == 2) {
                return;
            }
            HandlerWrapper handlerWrapper = playbackVideoGraphWrapper.m;
            if (handlerWrapper != null) {
                handlerWrapper.c();
            }
            VideoGraph videoGraph = playbackVideoGraphWrapper.n;
            if (videoGraph != null) {
                videoGraph.release();
            }
            playbackVideoGraphWrapper.p = null;
            playbackVideoGraphWrapper.r = 2;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void s() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.d) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).s();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void t(float f2) {
            if (this.f15929b == 0) {
                PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
                playbackVideoGraphWrapper.f15918i.c(f2);
                ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).t(f2);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void u() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.d) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).u();
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void v(int i2) {
            if (this.f15929b == 0) {
                ((DefaultVideoSink) PlaybackVideoGraphWrapper.this.f15915e).v(i2);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void w() {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            playbackVideoGraphWrapper.getClass();
            Size size = Size.f14197c;
            playbackVideoGraphWrapper.b(null, size.f14198a, size.f14199b);
            playbackVideoGraphWrapper.p = null;
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void x(boolean z) {
            boolean z2 = this.f15935j;
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (z2) {
                VideoGraph videoGraph = playbackVideoGraphWrapper.n;
                videoGraph.getClass();
                videoGraph.flush();
            }
            this.f15932f = -9223372036854775807L;
            PlaybackVideoGraphWrapper.a(playbackVideoGraphWrapper, z);
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void y(boolean z) {
            PlaybackVideoGraphWrapper playbackVideoGraphWrapper = PlaybackVideoGraphWrapper.this;
            if (playbackVideoGraphWrapper.d) {
                ((DefaultVideoSink) playbackVideoGraphWrapper.f15915e).y(z);
            }
        }

        @Override // androidx.media3.exoplayer.video.VideoSink
        public final void z(VideoSink.Listener listener, Executor executor) {
            this.f15933h = listener;
            this.f15934i = executor;
        }
    }

    public interface Listener {
        default void b(VideoSize videoSize) {
        }

        default void c() {
        }

        default void d() {
        }
    }

    public static final class ReflectiveDefaultVideoFrameProcessorFactory implements VideoFrameProcessor.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Supplier f15937a = Suppliers.a(new d());

        public ReflectiveDefaultVideoFrameProcessorFactory(boolean z) {
        }
    }

    public static final class ReflectiveSingleInputVideoGraphFactory implements VideoGraph.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final VideoFrameProcessor.Factory f15938a;

        public ReflectiveSingleInputVideoGraphFactory(boolean z) {
            this.f15938a = new ReflectiveDefaultVideoFrameProcessorFactory(z);
        }

        @Override // androidx.media3.common.VideoGraph.Factory
        public final VideoGraph a(Context context, ColorInfo colorInfo, VideoGraph.Listener listener, ow owVar) {
            try {
                return ((VideoGraph.Factory) Class.forName("androidx.media3.effect.SingleInputVideoGraph$Factory").getConstructor(VideoFrameProcessor.Factory.class).newInstance(this.f15938a)).a(context, colorInfo, listener, owVar);
            } catch (Exception e2) {
                bm.i(e2);
                return null;
            }
        }
    }

    public static final class StreamChangeInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15939a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15940b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15941c;

        public StreamChangeInfo(long j2, int i2, long j3) {
            this.f15939a = j2;
            this.f15940b = i2;
            this.f15941c = j3;
        }
    }

    public PlaybackVideoGraphWrapper(Builder builder) {
        this.f15912a = builder.f15921a;
        VideoGraph.Factory factory = builder.f15923c;
        factory.getClass();
        this.f15913b = factory;
        this.f15914c = new SparseArray();
        ImmutableList.x();
        this.l = VideoCompositorSettings.f14020a;
        this.d = builder.d;
        Clock clock = builder.f15924e;
        this.f15916f = clock;
        long j2 = builder.g;
        this.f15917h = j2 != -9223372036854775807L ? -j2 : -9223372036854775807L;
        VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster = builder.f15926h;
        this.f15918i = videoFrameReleaseEarlyTimeForecaster;
        this.f15915e = new DefaultVideoSink(builder.f15922b, videoFrameReleaseEarlyTimeForecaster, clock);
        this.g = new CopyOnWriteArraySet();
        this.f15920k = new Format(new Format.Builder());
        this.s = -9223372036854775807L;
        this.u = -1;
        this.r = 0;
    }

    public static void a(PlaybackVideoGraphWrapper playbackVideoGraphWrapper, boolean z) {
        TimedValueQueue timedValueQueue;
        VideoSink videoSink = playbackVideoGraphWrapper.f15915e;
        if (playbackVideoGraphWrapper.r == 1) {
            playbackVideoGraphWrapper.q++;
            DefaultVideoSink defaultVideoSink = (DefaultVideoSink) videoSink;
            defaultVideoSink.x(z);
            while (true) {
                int iH = playbackVideoGraphWrapper.f15919j.h();
                timedValueQueue = playbackVideoGraphWrapper.f15919j;
                if (iH <= 1) {
                    break;
                } else {
                    timedValueQueue.e();
                }
            }
            if (timedValueQueue.h() == 1) {
                StreamChangeInfo streamChangeInfo = (StreamChangeInfo) playbackVideoGraphWrapper.f15919j.e();
                streamChangeInfo.getClass();
                defaultVideoSink.k(playbackVideoGraphWrapper.f15920k, streamChangeInfo.f15939a, streamChangeInfo.f15940b, ImmutableList.x());
            }
            playbackVideoGraphWrapper.s = -9223372036854775807L;
            if (z) {
                playbackVideoGraphWrapper.t = false;
            }
            HandlerWrapper handlerWrapper = playbackVideoGraphWrapper.m;
            handlerWrapper.getClass();
            handlerWrapper.k(new hn0(playbackVideoGraphWrapper, 4));
        }
    }

    public final void b(Surface surface, int i2, int i3) {
        VideoGraph videoGraph = this.n;
        if (videoGraph == null) {
            return;
        }
        VideoSink videoSink = this.f15915e;
        if (surface == null) {
            videoGraph.q();
            ((DefaultVideoSink) videoSink).w();
        } else {
            new SurfaceInfo(surface, i2, i3);
            videoGraph.q();
            ((DefaultVideoSink) videoSink).r(surface, new Size(i2, i3));
        }
    }
}

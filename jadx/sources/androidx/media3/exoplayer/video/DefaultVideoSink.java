package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.ExoPlaybackException;
import com.google.common.base.Preconditions;
import defpackage.ht;
import defpackage.l8;
import defpackage.r81;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class DefaultVideoSink implements VideoSink {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VideoFrameReleaseControl f15870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VideoFrameReleaseEarlyTimeForecaster f15871b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VideoFrameRenderControl f15872c;
    public final ArrayDeque d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Surface f15873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Format f15874f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public VideoSink.Listener f15875h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Executor f15876i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public VideoFrameMetadataListener f15877j;

    public final class FrameRendererImpl implements VideoFrameRenderControl.FrameRenderer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Format f15878a;

        public FrameRendererImpl() {
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public final void a() {
            DefaultVideoSink defaultVideoSink = DefaultVideoSink.this;
            defaultVideoSink.f15876i.execute(new b(this, 1));
            ((VideoSink.VideoFrameHandler) defaultVideoSink.d.remove()).e();
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public final void b(final VideoSize videoSize) {
            Format.Builder builder = new Format.Builder();
            builder.u = videoSize.f14024a;
            builder.v = videoSize.f14025b;
            builder.n = MimeTypes.p("video/raw");
            this.f15878a = new Format(builder);
            DefaultVideoSink.this.f15876i.execute(new Runnable() { // from class: androidx.media3.exoplayer.video.c
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultVideoSink.this.f15875h.b(videoSize);
                }
            });
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameRenderControl.FrameRenderer
        public final void c(long j2, long j3, boolean z) {
            DefaultVideoSink defaultVideoSink = DefaultVideoSink.this;
            if (z && defaultVideoSink.f15873e != null) {
                defaultVideoSink.f15876i.execute(new b(this, 0));
            }
            Format format = this.f15878a;
            defaultVideoSink.f15877j.d(j3, j2, format == null ? new Format(new Format.Builder()) : format, null);
            ((VideoSink.VideoFrameHandler) defaultVideoSink.d.remove()).f(j2);
        }
    }

    public DefaultVideoSink(VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster, Clock clock) {
        this.f15870a = videoFrameReleaseControl;
        this.f15871b = videoFrameReleaseEarlyTimeForecaster;
        videoFrameReleaseControl.l = clock;
        this.f15872c = new VideoFrameRenderControl(new FrameRendererImpl(), videoFrameReleaseControl, videoFrameReleaseEarlyTimeForecaster);
        this.d = new ArrayDeque();
        this.f15874f = new Format(new Format.Builder());
        this.g = -9223372036854775807L;
        this.f15875h = VideoSink.Listener.f15990a;
        this.f15876i = new l8(2);
        this.f15877j = new ht();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean a() {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean e() {
        VideoFrameRenderControl videoFrameRenderControl = this.f15872c;
        long j2 = videoFrameRenderControl.f15986j;
        return j2 != -9223372036854775807L && videoFrameRenderControl.f15985i == j2;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean f(long j2, VideoSink.VideoFrameHandler videoFrameHandler) {
        this.d.add(videoFrameHandler);
        VideoFrameRenderControl videoFrameRenderControl = this.f15872c;
        LongArrayQueue longArrayQueue = videoFrameRenderControl.f15983f;
        int i2 = longArrayQueue.f14177c;
        long[] jArr = longArrayQueue.d;
        if (i2 == jArr.length) {
            int length = jArr.length << 1;
            if (length < 0) {
                r81.b();
                return false;
            }
            long[] jArr2 = new long[length];
            int length2 = jArr.length;
            int i3 = longArrayQueue.f14175a;
            int i4 = length2 - i3;
            System.arraycopy(jArr, i3, jArr2, 0, i4);
            System.arraycopy(longArrayQueue.d, 0, jArr2, i4, i3);
            longArrayQueue.f14175a = 0;
            longArrayQueue.f14176b = longArrayQueue.f14177c - 1;
            longArrayQueue.d = jArr2;
            longArrayQueue.f14178e = length - 1;
        }
        int i5 = (longArrayQueue.f14176b + 1) & longArrayQueue.f14178e;
        longArrayQueue.f14176b = i5;
        longArrayQueue.d[i5] = j2;
        longArrayQueue.f14177c++;
        videoFrameRenderControl.f15984h = j2;
        videoFrameRenderControl.f15986j = -9223372036854775807L;
        this.f15876i.execute(new a(this, 0));
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void g(long j2, long j3) throws VideoSink.VideoSinkException {
        try {
            this.f15872c.a(j2, j3);
        } catch (ExoPlaybackException e2) {
            throw new VideoSink.VideoSinkException(e2, this.f15874f);
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void h(long j2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void i(VideoFrameMetadataListener videoFrameMetadataListener) {
        this.f15877j = videoFrameMetadataListener;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void j() {
        VideoFrameRenderControl videoFrameRenderControl = this.f15872c;
        if (videoFrameRenderControl.f15984h == -9223372036854775807L) {
            videoFrameRenderControl.f15984h = Long.MIN_VALUE;
            videoFrameRenderControl.f15985i = Long.MIN_VALUE;
        }
        videoFrameRenderControl.f15986j = videoFrameRenderControl.f15984h;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void k(Format format, long j2, int i2, List list) {
        Preconditions.q(list.isEmpty());
        int i3 = format.v;
        int i4 = format.w;
        Format format2 = this.f15874f;
        int i5 = format2.v;
        VideoFrameRenderControl videoFrameRenderControl = this.f15872c;
        if (i3 != i5 || i4 != format2.w) {
            TimedValueQueue timedValueQueue = videoFrameRenderControl.d;
            long j3 = videoFrameRenderControl.f15984h;
            timedValueQueue.a(j3 == -9223372036854775807L ? 0L : j3 + 1, new VideoSize(i3, i4));
        }
        float f2 = format.z;
        if (f2 != this.f15874f.z) {
            this.f15870a.f(f2);
        }
        this.f15874f = format;
        if (j2 != this.g) {
            if (videoFrameRenderControl.f15983f.f14177c == 0) {
                videoFrameRenderControl.f15980b.e(i2);
                videoFrameRenderControl.l = j2;
            } else {
                TimedValueQueue timedValueQueue2 = videoFrameRenderControl.f15982e;
                long j4 = videoFrameRenderControl.f15984h;
                timedValueQueue2.a(j4 == -9223372036854775807L ? -4611686018427387904L : j4 + 1, Long.valueOf(j2));
            }
            this.g = j2;
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void l(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean m(boolean z) {
        return this.f15870a.b(z);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final boolean n(Format format) {
        return true;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void o() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final Surface p() {
        Surface surface = this.f15873e;
        surface.getClass();
        return surface;
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void q() {
        VideoFrameReleaseControl videoFrameReleaseControl = this.f15870a;
        if (videoFrameReleaseControl.f15955e == 0) {
            videoFrameReleaseControl.f15955e = 1;
        }
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void r(Surface surface, Size size) {
        this.f15873e = surface;
        this.f15870a.g(surface);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void release() {
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void s() {
        this.f15871b.b();
        VideoFrameReleaseControl videoFrameReleaseControl = this.f15870a;
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

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void t(float f2) {
        this.f15870a.h(f2);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void u() {
        this.f15871b.b();
        this.f15870a.d();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void v(int i2) {
        VideoFrameReleaseHelper videoFrameReleaseHelper = this.f15870a.f15953b;
        if (videoFrameReleaseHelper.f15973j == i2) {
            return;
        }
        videoFrameReleaseHelper.f15973j = i2;
        videoFrameReleaseHelper.d(true);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void w() {
        this.f15873e = null;
        this.f15870a.g(null);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void x(boolean z) {
        if (z) {
            VideoFrameReleaseControl videoFrameReleaseControl = this.f15870a;
            videoFrameReleaseControl.f15953b.b();
            videoFrameReleaseControl.f15957h = -9223372036854775807L;
            videoFrameReleaseControl.f15956f = -9223372036854775807L;
            videoFrameReleaseControl.f15955e = Math.min(videoFrameReleaseControl.f15955e, 1);
            videoFrameReleaseControl.f15958i = -9223372036854775807L;
            videoFrameReleaseControl.n = false;
        }
        this.f15871b.b();
        VideoFrameRenderControl videoFrameRenderControl = this.f15872c;
        TimedValueQueue timedValueQueue = videoFrameRenderControl.d;
        LongArrayQueue longArrayQueue = videoFrameRenderControl.f15983f;
        longArrayQueue.f14175a = 0;
        longArrayQueue.f14176b = -1;
        longArrayQueue.f14177c = 0;
        videoFrameRenderControl.f15984h = -9223372036854775807L;
        videoFrameRenderControl.f15985i = -9223372036854775807L;
        videoFrameRenderControl.f15986j = -9223372036854775807L;
        TimedValueQueue timedValueQueue2 = videoFrameRenderControl.f15982e;
        if (timedValueQueue2.h() > 0) {
            Preconditions.g(timedValueQueue2.h() > 0);
            while (timedValueQueue2.h() > 1) {
                timedValueQueue2.e();
            }
            Object objE = timedValueQueue2.e();
            objE.getClass();
            videoFrameRenderControl.l = ((Long) objE).longValue();
        }
        if (timedValueQueue.h() > 0) {
            Preconditions.g(timedValueQueue.h() > 0);
            while (timedValueQueue.h() > 1) {
                timedValueQueue.e();
            }
            Object objE2 = timedValueQueue.e();
            objE2.getClass();
            timedValueQueue.a(0L, (VideoSize) objE2);
        }
        this.d.clear();
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void y(boolean z) {
        this.f15870a.c(z);
    }

    @Override // androidx.media3.exoplayer.video.VideoSink
    public final void z(VideoSink.Listener listener, Executor executor) {
        this.f15875h = listener;
        this.f15876i = executor;
    }
}

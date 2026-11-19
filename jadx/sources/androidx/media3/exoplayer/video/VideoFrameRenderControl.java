package androidx.media3.exoplayer.video;

import androidx.media3.common.VideoSize;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import defpackage.b21;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
final class VideoFrameRenderControl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FrameRenderer f15979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VideoFrameReleaseControl f15980b;
    public final VideoFrameReleaseEarlyTimeForecaster g;
    public long l;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final VideoFrameReleaseControl.FrameReleaseInfo f15981c = new VideoFrameReleaseControl.FrameReleaseInfo();
    public final TimedValueQueue d = new TimedValueQueue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimedValueQueue f15982e = new TimedValueQueue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LongArrayQueue f15983f = new LongArrayQueue();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f15984h = -9223372036854775807L;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public VideoSize f15987k = VideoSize.d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f15985i = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f15986j = -9223372036854775807L;

    public interface FrameRenderer {
        void a();

        void b(VideoSize videoSize);

        void c(long j2, long j3, boolean z);
    }

    public VideoFrameRenderControl(FrameRenderer frameRenderer, VideoFrameReleaseControl videoFrameReleaseControl, VideoFrameReleaseEarlyTimeForecaster videoFrameReleaseEarlyTimeForecaster) {
        this.f15979a = frameRenderer;
        this.f15980b = videoFrameReleaseControl;
        this.g = videoFrameReleaseEarlyTimeForecaster;
    }

    public final void a(long j2, long j3) {
        while (true) {
            LongArrayQueue longArrayQueue = this.f15983f;
            int i2 = longArrayQueue.f14177c;
            if (i2 == 0) {
                return;
            }
            if (i2 == 0) {
                b21.x();
                return;
            }
            long j4 = longArrayQueue.d[longArrayQueue.f14175a];
            Long l = (Long) this.f15982e.f(j4);
            VideoFrameReleaseControl videoFrameReleaseControl = this.f15980b;
            if (l != null && l.longValue() != this.l) {
                this.l = l.longValue();
                videoFrameReleaseControl.e(2);
            }
            int iA = this.f15980b.a(j4, j2, j3, this.l, false, false, this.f15981c);
            VideoFrameReleaseControl.FrameReleaseInfo frameReleaseInfo = this.f15981c;
            if (iA != 5 && iA != 4) {
                this.g.a(j4, frameReleaseInfo.f15961a);
            }
            FrameRenderer frameRenderer = this.f15979a;
            if (iA == 0 || iA == 1) {
                this.f15985i = j4;
                boolean z = iA == 0;
                long jA = longArrayQueue.a();
                VideoSize videoSize = (VideoSize) this.d.f(jA);
                if (videoSize != null && !videoSize.equals(VideoSize.d) && !videoSize.equals(this.f15987k)) {
                    this.f15987k = videoSize;
                    frameRenderer.b(videoSize);
                }
                long jNanoTime = z ? System.nanoTime() : frameReleaseInfo.f15962b;
                boolean z2 = videoFrameReleaseControl.f15955e != 3;
                videoFrameReleaseControl.f15955e = 3;
                videoFrameReleaseControl.g = Util.R(videoFrameReleaseControl.l.b());
                this.f15979a.c(jNanoTime, jA, z2);
            } else if (iA == 2 || iA == 3) {
                this.f15985i = j4;
                longArrayQueue.a();
                frameRenderer.a();
            } else {
                if (iA != 4) {
                    if (iA == 5) {
                        return;
                    }
                    md.k(String.valueOf(iA));
                    return;
                }
                this.f15985i = j4;
            }
        }
    }
}

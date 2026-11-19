package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.extractor.text.SubtitleParser;

/* JADX INFO: loaded from: classes.dex */
public interface MediaSource {

    public interface Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Factory f15515a = MediaSourceFactory.f15525b;

        default void a(SubtitleParser.Factory factory) {
        }

        default void b(int i2) {
        }

        MediaSource c(MediaItem mediaItem);

        default void d(boolean z) {
        }
    }

    public interface MediaSourceCaller {
        void a(BaseMediaSource baseMediaSource, Timeline timeline);
    }

    void a(Handler handler, MediaSourceEventListener mediaSourceEventListener);

    void b(MediaSourceEventListener mediaSourceEventListener);

    MediaPeriod c(MediaPeriodId mediaPeriodId, Allocator allocator, long j2);

    MediaItem d();

    void e(Handler handler, DrmSessionEventListener drmSessionEventListener);

    void f(DrmSessionEventListener drmSessionEventListener);

    void g(MediaPeriod mediaPeriod);

    void h(MediaSourceCaller mediaSourceCaller, TransferListener transferListener, PlayerId playerId);

    void j(MediaSourceCaller mediaSourceCaller);

    default void k(MediaItem mediaItem) {
    }

    void l(MediaSourceCaller mediaSourceCaller);

    void m(MediaSourceCaller mediaSourceCaller);

    void n();

    default boolean o() {
        return true;
    }

    default Timeline p() {
        return null;
    }

    default boolean q(MediaItem mediaItem) {
        return false;
    }

    public static final class MediaPeriodId {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f15516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15517b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15518c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f15519e;

        public MediaPeriodId(int i2, int i3, int i4, long j2, Object obj) {
            this.f15516a = obj;
            this.f15517b = i2;
            this.f15518c = i3;
            this.d = j2;
            this.f15519e = i4;
        }

        public final MediaPeriodId a(Object obj) {
            if (this.f15516a.equals(obj)) {
                return this;
            }
            long j2 = this.d;
            return new MediaPeriodId(this.f15517b, this.f15518c, this.f15519e, j2, obj);
        }

        public final boolean b() {
            return this.f15517b != -1;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaPeriodId)) {
                return false;
            }
            MediaPeriodId mediaPeriodId = (MediaPeriodId) obj;
            return this.f15516a.equals(mediaPeriodId.f15516a) && this.f15517b == mediaPeriodId.f15517b && this.f15518c == mediaPeriodId.f15518c && this.d == mediaPeriodId.d && this.f15519e == mediaPeriodId.f15519e;
        }

        public final int hashCode() {
            return ((((((((this.f15516a.hashCode() + 527) * 31) + this.f15517b) * 31) + this.f15518c) * 31) + ((int) this.d)) * 31) + this.f15519e;
        }

        public MediaPeriodId(Object obj, long j2) {
            this(-1, -1, -1, j2, obj);
        }

        public MediaPeriodId(Object obj, long j2, int i2) {
            this(-1, -1, i2, j2, obj);
        }

        public MediaPeriodId(Object obj, int i2, int i3, long j2) {
            this(i2, i3, -1, j2, obj);
        }

        public MediaPeriodId(Object obj) {
            this(obj, -1L);
        }
    }
}

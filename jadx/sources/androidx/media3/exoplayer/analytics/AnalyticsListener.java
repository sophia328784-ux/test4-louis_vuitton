package androidx.media3.exoplayer.analytics;

import android.util.SparseArray;
import androidx.media3.common.FlagSet;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.VideoSize;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface AnalyticsListener {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface EventFlags {
    }

    public static final class EventTime {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f14804a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Timeline f14805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14806c;
        public final MediaSource.MediaPeriodId d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f14807e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Timeline f14808f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MediaSource.MediaPeriodId f14809h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f14810i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f14811j;

        public EventTime(long j2, Timeline timeline, int i2, MediaSource.MediaPeriodId mediaPeriodId, long j3, Timeline timeline2, int i3, MediaSource.MediaPeriodId mediaPeriodId2, long j4, long j5) {
            this.f14804a = j2;
            this.f14805b = timeline;
            this.f14806c = i2;
            this.d = mediaPeriodId;
            this.f14807e = j3;
            this.f14808f = timeline2;
            this.g = i3;
            this.f14809h = mediaPeriodId2;
            this.f14810i = j4;
            this.f14811j = j5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && EventTime.class == obj.getClass()) {
                EventTime eventTime = (EventTime) obj;
                if (this.f14804a == eventTime.f14804a && this.f14806c == eventTime.f14806c && this.f14807e == eventTime.f14807e && this.g == eventTime.g && this.f14810i == eventTime.f14810i && this.f14811j == eventTime.f14811j && Objects.equals(this.f14805b, eventTime.f14805b) && Objects.equals(this.d, eventTime.d) && Objects.equals(this.f14808f, eventTime.f14808f) && Objects.equals(this.f14809h, eventTime.f14809h)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Long.valueOf(this.f14804a), this.f14805b, Integer.valueOf(this.f14806c), this.d, Long.valueOf(this.f14807e), this.f14808f, Integer.valueOf(this.g), this.f14809h, Long.valueOf(this.f14810i), Long.valueOf(this.f14811j));
        }
    }

    public static final class Events {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final FlagSet f14812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SparseArray f14813b;

        public Events(FlagSet flagSet, SparseArray<EventTime> sparseArray) {
            this.f14812a = flagSet;
            SparseArray sparseArray2 = new SparseArray(flagSet.f13752a.size());
            for (int i2 = 0; i2 < flagSet.f13752a.size(); i2++) {
                int iB = flagSet.b(i2);
                EventTime eventTime = sparseArray.get(iB);
                eventTime.getClass();
                sparseArray2.append(iB, eventTime);
            }
            this.f14813b = sparseArray2;
        }

        public final boolean a(int i2) {
            return this.f14812a.f13752a.get(i2);
        }
    }

    default void a(DecoderCounters decoderCounters) {
    }

    default void b(VideoSize videoSize) {
    }

    default void c(MediaLoadData mediaLoadData) {
    }

    default void d(EventTime eventTime, MediaLoadData mediaLoadData) {
    }

    default void e(Player player, Events events) {
    }

    default void f(EventTime eventTime, int i2, long j2) {
    }

    default void s(PlaybackException playbackException) {
    }

    default void v(int i2) {
    }
}

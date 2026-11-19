package androidx.media3.session;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class QueueTimeline extends Timeline {
    public static final QueueTimeline g = new QueueTimeline(ImmutableList.x(), null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f17523h = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmutableList f17524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QueuedMediaItem f17525f;

    public static final class QueuedMediaItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaItem f17526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f17527b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f17528c;

        public QueuedMediaItem(MediaItem mediaItem, long j2, long j3) {
            this.f17526a = mediaItem;
            this.f17527b = j2;
            this.f17528c = j3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof QueuedMediaItem)) {
                return false;
            }
            QueuedMediaItem queuedMediaItem = (QueuedMediaItem) obj;
            return this.f17527b == queuedMediaItem.f17527b && this.f17526a.equals(queuedMediaItem.f17526a) && this.f17528c == queuedMediaItem.f17528c;
        }

        public final int hashCode() {
            long j2 = this.f17527b;
            int iHashCode = (this.f17526a.hashCode() + ((217 + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
            long j3 = this.f17528c;
            return iHashCode + ((int) ((j3 >>> 32) ^ j3));
        }
    }

    public QueueTimeline(ImmutableList immutableList, QueuedMediaItem queuedMediaItem) {
        this.f17524e = immutableList;
        this.f17525f = queuedMediaItem;
    }

    @Override // androidx.media3.common.Timeline
    public final int b(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.common.Timeline
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QueueTimeline)) {
            return false;
        }
        QueueTimeline queueTimeline = (QueueTimeline) obj;
        return Objects.equals(this.f17524e, queueTimeline.f17524e) && Objects.equals(this.f17525f, queueTimeline.f17525f);
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Period f(int i2, Timeline.Period period, boolean z) {
        QueuedMediaItem queuedMediaItemS = s(i2);
        Long lValueOf = Long.valueOf(queuedMediaItemS.f17527b);
        long jR = Util.R(queuedMediaItemS.f17528c);
        period.getClass();
        period.i(lValueOf, null, i2, jR, 0L, AdPlaybackState.g, false);
        return period;
    }

    @Override // androidx.media3.common.Timeline
    public final int h() {
        return o();
    }

    @Override // androidx.media3.common.Timeline
    public final int hashCode() {
        return Objects.hash(this.f17524e, this.f17525f);
    }

    @Override // androidx.media3.common.Timeline
    public final Object l(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.common.Timeline
    public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
        QueuedMediaItem queuedMediaItemS = s(i2);
        window.b(f17523h, queuedMediaItemS.f17526a, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, true, false, null, 0L, Util.R(queuedMediaItemS.f17528c), i2, i2, 0L);
        return window;
    }

    @Override // androidx.media3.common.Timeline
    public final int o() {
        return this.f17524e.size() + (this.f17525f == null ? 0 : 1);
    }

    public final QueueTimeline q(int i2, List list) {
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList immutableList = this.f17524e;
        builder.g(immutableList.subList(0, i2));
        for (int i3 = 0; i3 < list.size(); i3++) {
            builder.e(new QueuedMediaItem((MediaItem) list.get(i3), -1L, -9223372036854775807L));
        }
        builder.g(immutableList.subList(i2, immutableList.size()));
        return new QueueTimeline(builder.j(), this.f17525f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long r(int i2) {
        if (i2 < 0) {
            return -1L;
        }
        ImmutableList immutableList = this.f17524e;
        if (i2 < immutableList.size()) {
            return ((QueuedMediaItem) immutableList.get(i2)).f17527b;
        }
        return -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final QueuedMediaItem s(int i2) {
        QueuedMediaItem queuedMediaItem;
        ImmutableList immutableList = this.f17524e;
        return (i2 != immutableList.size() || (queuedMediaItem = this.f17525f) == null) ? (QueuedMediaItem) immutableList.get(i2) : queuedMediaItem;
    }
}

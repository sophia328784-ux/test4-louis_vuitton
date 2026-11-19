package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.source.chunk.Chunk;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface ExoTrackSelection extends TrackSelection {

    public interface Factory {
        ExoTrackSelection[] a(Definition[] definitionArr, BandwidthMeter bandwidthMeter);
    }

    default long a() {
        return -2147483647L;
    }

    boolean b(int i2, long j2);

    void c();

    int d();

    void g(long j2, long j3, long j4, List list, MediaChunkIterator[] mediaChunkIteratorArr);

    boolean h(int i2, long j2);

    void i(float f2);

    Object j();

    default void k() {
    }

    default boolean n(long j2, Chunk chunk, List list) {
        return false;
    }

    default void o(boolean z) {
    }

    void p();

    int q(long j2, List list);

    int r();

    Format s();

    int t();

    default void u() {
    }

    public static final class Definition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TrackGroup f15720a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f15721b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f15722c;

        public Definition(TrackGroup trackGroup, int[] iArr, int i2) {
            if (iArr.length == 0) {
                Log.e("Empty tracks are not allowed", new IllegalArgumentException());
            }
            this.f15720a = trackGroup;
            this.f15721b = iArr;
            this.f15722c = i2;
        }

        public Definition(TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0);
        }
    }
}

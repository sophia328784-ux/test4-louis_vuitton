package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.TrackGroup;
import androidx.media3.exoplayer.source.chunk.MediaChunkIterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FixedTrackSelection extends BaseTrackSelection {
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f15723h;

    public FixedTrackSelection(TrackGroup trackGroup, int i2, int i3, int i4, Object obj) {
        super(trackGroup, new int[]{i2}, i3);
        this.g = i4;
        this.f15723h = obj;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int d() {
        return 0;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final void g(long j2, long j3, long j4, List list, MediaChunkIterator[] mediaChunkIteratorArr) {
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final Object j() {
        return this.f15723h;
    }

    @Override // androidx.media3.exoplayer.trackselection.ExoTrackSelection
    public final int t() {
        return this.g;
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i2, int i3) {
        this(trackGroup, i2, i3, 0, null);
    }

    public FixedTrackSelection(TrackGroup trackGroup, int i2) {
        this(trackGroup, i2, 0);
    }
}

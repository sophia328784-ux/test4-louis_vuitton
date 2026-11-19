package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;

/* JADX INFO: loaded from: classes.dex */
public abstract class WrappingMediaSource extends CompositeMediaSource<Void> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MediaSource f15639k;

    public WrappingMediaSource(MediaSource mediaSource) {
        this.f15639k = mediaSource;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public final void A(Object obj, BaseMediaSource baseMediaSource, Timeline timeline) {
        D(timeline);
    }

    public MediaSource.MediaPeriodId C(MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    public abstract void D(Timeline timeline);

    public final void E() {
        B(null, this.f15639k);
    }

    public void F() {
        E();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final MediaItem d() {
        return this.f15639k.d();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void k(MediaItem mediaItem) {
        this.f15639k.k(mediaItem);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final boolean o() {
        return this.f15639k.o();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public final Timeline p() {
        return this.f15639k.p();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    public final void u(TransferListener transferListener) {
        this.f15467j = transferListener;
        this.f15466i = Util.r(null);
        F();
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public final MediaSource.MediaPeriodId x(Object obj, MediaSource.MediaPeriodId mediaPeriodId) {
        return C(mediaPeriodId);
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public final long y(long j2, Object obj) {
        return j2;
    }

    @Override // androidx.media3.exoplayer.source.CompositeMediaSource
    public final int z(int i2, Object obj) {
        return i2;
    }
}

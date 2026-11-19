package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;

/* JADX INFO: loaded from: classes.dex */
public final class TimelineWithUpdatedMediaItem extends ForwardingTimeline {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MediaItem f15634f;

    public TimelineWithUpdatedMediaItem(Timeline timeline, MediaItem mediaItem) {
        super(timeline);
        this.f15634f = mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
    public final Timeline.Window m(int i2, Timeline.Window window, long j2) {
        super.m(i2, window, j2);
        MediaItem mediaItem = this.f15634f;
        window.f13969c = mediaItem;
        MediaItem.LocalConfiguration localConfiguration = mediaItem.f13788b;
        window.f13968b = localConfiguration != null ? localConfiguration.f13853h : null;
        return window;
    }
}

package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes.dex */
public abstract class TrackSelector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InvalidationListener f15730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BandwidthMeter f15731b;

    public interface Factory {
    }

    public interface InvalidationListener {
        void a();
    }

    public TrackSelectionParameters b() {
        return TrackSelectionParameters.J;
    }

    public RendererCapabilities.Listener c() {
        return null;
    }

    public abstract void d(Object obj);

    public void e() {
        this.f15730a = null;
        this.f15731b = null;
    }

    public abstract TrackSelectorResult f(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline);

    public void g(AudioAttributes audioAttributes) {
    }

    public void h(TrackSelectionParameters trackSelectionParameters) {
    }
}

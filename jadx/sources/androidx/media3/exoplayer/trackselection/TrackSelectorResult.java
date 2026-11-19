package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Tracks;
import androidx.media3.exoplayer.RendererConfiguration;
import com.google.common.base.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class TrackSelectorResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RendererConfiguration[] f15733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExoTrackSelection[] f15734c;
    public final Tracks d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f15735e;

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Tracks tracks, Object obj) {
        Preconditions.g(rendererConfigurationArr.length == exoTrackSelectionArr.length);
        this.f15733b = rendererConfigurationArr;
        this.f15734c = (ExoTrackSelection[]) exoTrackSelectionArr.clone();
        this.d = tracks;
        this.f15735e = obj;
        this.f15732a = rendererConfigurationArr.length;
    }

    public final boolean a(TrackSelectorResult trackSelectorResult, int i2) {
        return trackSelectorResult != null && Objects.equals(this.f15733b[i2], trackSelectorResult.f15733b[i2]) && Objects.equals(this.f15734c[i2], trackSelectorResult.f15734c[i2]);
    }

    public final boolean b(int i2) {
        return this.f15733b[i2] != null;
    }

    @Deprecated
    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Object obj) {
        this(rendererConfigurationArr, exoTrackSelectionArr, Tracks.f14010b, obj);
    }
}

package androidx.media3.exoplayer;

import androidx.media3.common.AudioAttributes;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements ListenerSet.Event, MediaPeriodHolder.Factory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f15039c;

    public /* synthetic */ b(Object obj, int i2) {
        this.f15038b = i2;
        this.f15039c = obj;
    }

    @Override // androidx.media3.exoplayer.MediaPeriodHolder.Factory
    public MediaPeriodHolder a(MediaPeriodInfo mediaPeriodInfo, long j2) {
        ExoPlayerImplInternal exoPlayerImplInternal = (ExoPlayerImplInternal) this.f15039c;
        return new MediaPeriodHolder(exoPlayerImplInternal.f14665c, j2, exoPlayerImplInternal.f14666e, exoPlayerImplInternal.g.j(exoPlayerImplInternal.x), exoPlayerImplInternal.u, mediaPeriodInfo, exoPlayerImplInternal.f14667f, exoPlayerImplInternal.f1.f14643a);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f15038b;
        Object obj2 = this.f15039c;
        switch (i2) {
            case 0:
                int i3 = ExoPlayerImpl.t0;
                ((Player.Listener) obj).Q((MediaMetadata) obj2);
                break;
            case 1:
                int i4 = ExoPlayerImpl.t0;
                ((Player.Listener) obj).i0((AudioAttributes) obj2);
                break;
            case 2:
                int i5 = ExoPlayerImpl.t0;
                ((Player.Listener) obj).R((TrackSelectionParameters) obj2);
                break;
            default:
                ((Player.Listener) obj).Q(ExoPlayerImpl.this.R);
                break;
        }
    }
}

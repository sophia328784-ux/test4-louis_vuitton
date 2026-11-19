package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i implements ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15314c;

    public /* synthetic */ i(int i2, int i3) {
        this.f15313b = i3;
        this.f15314c = i2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i2 = this.f15313b;
        int i3 = this.f15314c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 0:
                int i4 = ExoPlayerImpl.t0;
                listener.A(i3);
                break;
            default:
                int i5 = ExoPlayerImpl.t0;
                listener.f(i3);
                break;
        }
    }
}

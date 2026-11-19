package androidx.media3.exoplayer;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements ListenerSet.Event {
    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i2 = ExoPlayerImpl.t0;
        ((Player.Listener) obj).s(new ExoPlaybackException(2, new ExoTimeoutException(1), 1003));
    }
}

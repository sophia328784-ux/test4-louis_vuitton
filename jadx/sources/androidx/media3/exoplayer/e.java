package androidx.media3.exoplayer;

import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements ListenerSet.IterationFinishedEvent, ExoPlayerImplInternal.PlaybackInfoUpdateListener, BackgroundThreadStateHandler.StateChangeListener, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ExoPlayerImpl f15113c;

    public /* synthetic */ e(ExoPlayerImpl exoPlayerImpl, int i2) {
        this.f15112b = i2;
        this.f15113c = exoPlayerImpl;
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void a(Object obj, FlagSet flagSet) {
        ((Player.Listener) obj).f0(this.f15113c.f14647f, new Player.Events(flagSet));
    }

    @Override // androidx.media3.exoplayer.ExoPlayerImplInternal.PlaybackInfoUpdateListener
    public void b(ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        ExoPlayerImpl exoPlayerImpl = this.f15113c;
        exoPlayerImpl.f14650j.k(new u(exoPlayerImpl, playbackInfoUpdate, 3));
    }

    @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
    public void c(Object obj, Object obj2) {
        ((Integer) obj).getClass();
        Integer num = (Integer) obj2;
        int iIntValue = num.intValue();
        int i2 = ExoPlayerImpl.t0;
        ExoPlayerImpl exoPlayerImpl = this.f15113c;
        exoPlayerImpl.y1();
        exoPlayerImpl.p1(1, 10, num);
        exoPlayerImpl.p1(2, 10, num);
        exoPlayerImpl.m.f(21, new i(iIntValue, 1));
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f15112b;
        ExoPlayerImpl exoPlayerImpl = this.f15113c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 3:
                listener.Y(exoPlayerImpl.Q);
                break;
            default:
                listener.o0(exoPlayerImpl.S);
                break;
        }
    }
}

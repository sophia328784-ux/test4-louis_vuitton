package androidx.media3.session;

import androidx.media3.common.FlagSet;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k0 implements ListenerSet.Event, ListenerSet.IterationFinishedEvent {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplLegacy f17688b;

    public /* synthetic */ k0(MediaControllerImplLegacy mediaControllerImplLegacy) {
        this.f17688b = mediaControllerImplLegacy;
    }

    @Override // androidx.media3.common.util.ListenerSet.IterationFinishedEvent
    public void a(Object obj, FlagSet flagSet) {
        ((Player.Listener) obj).f0(this.f17688b.f17344b, new Player.Events(flagSet));
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        ((Player.Listener) obj).Q(this.f17688b.p.f17354a.B);
    }
}

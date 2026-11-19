package androidx.media3.session;

import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b0 implements ListenerSet.Event, MediaControllerImplBase.RemoteSessionTask {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaControllerImplBase f17608c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ b0(MediaControllerImplBase mediaControllerImplBase, boolean z, int i2) {
        this.f17607b = i2;
        this.f17608c = mediaControllerImplBase;
        this.d = z;
    }

    @Override // androidx.media3.session.MediaControllerImplBase.RemoteSessionTask
    public void d(IMediaSession iMediaSession, int i2) {
        int i3 = this.f17607b;
        boolean z = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17608c;
        switch (i3) {
            case 1:
                iMediaSession.P(mediaControllerImplBase.f17329c, i2, z);
                break;
            case 2:
                iMediaSession.U0(mediaControllerImplBase.f17329c, i2, z);
                break;
            default:
                iMediaSession.j2(mediaControllerImplBase.f17329c, i2, z);
                break;
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f17607b;
        boolean z = this.d;
        MediaControllerImplBase mediaControllerImplBase = this.f17608c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 0:
                listener.O(mediaControllerImplBase.r.t, z);
                break;
            default:
                listener.O(mediaControllerImplBase.r.t, z);
                break;
        }
    }
}

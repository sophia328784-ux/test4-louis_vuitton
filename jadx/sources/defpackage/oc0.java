package defpackage;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oc0 implements ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaybackParameters f76750c;

    public /* synthetic */ oc0(PlaybackParameters playbackParameters, int i2) {
        this.f76749b = i2;
        this.f76750c = playbackParameters;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i2 = this.f76749b;
        PlaybackParameters playbackParameters = this.f76750c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 0:
                listener.h(playbackParameters);
                break;
            default:
                listener.h(playbackParameters);
                break;
        }
    }
}

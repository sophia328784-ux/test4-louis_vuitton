package defpackage;

import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ls implements ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PlaybackException f76081c;

    public /* synthetic */ ls(AnalyticsListener.EventTime eventTime, PlaybackException playbackException) {
        this.f76080b = 0;
        this.f76081c = playbackException;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        int i2 = this.f76080b;
        PlaybackException playbackException = this.f76081c;
        switch (i2) {
            case 0:
                ((AnalyticsListener) obj).s(playbackException);
                break;
            case 1:
                ((Player.Listener) obj).t0(playbackException);
                break;
            case 2:
                ((Player.Listener) obj).s(playbackException);
                break;
            case 3:
                ((Player.Listener) obj).t0(playbackException);
                break;
            default:
                ((Player.Listener) obj).s(playbackException);
                break;
        }
    }

    public /* synthetic */ ls(int i2, PlaybackException playbackException) {
        this.f76080b = i2;
        this.f76081c = playbackException;
    }
}

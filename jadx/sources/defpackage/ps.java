package defpackage;

import androidx.media3.common.Player;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ps implements ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78918b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VideoSize f78919c;

    @Override // androidx.media3.common.util.ListenerSet.Event
    public final void invoke(Object obj) {
        switch (this.f78918b) {
            case 0:
                VideoSize videoSize = this.f78919c;
                ((AnalyticsListener) obj).b(videoSize);
                int i2 = videoSize.f14024a;
                break;
            default:
                ((Player.Listener) obj).b(this.f78919c);
                break;
        }
    }

    public /* synthetic */ ps(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        this.f78919c = videoSize;
    }
}

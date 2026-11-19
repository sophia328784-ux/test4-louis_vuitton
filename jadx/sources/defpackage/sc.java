package defpackage;

import androidx.compose.foundation.MarqueeSpacing;
import androidx.compose.ui.unit.Density;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sc implements MarqueeSpacing, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f79766c;

    public /* synthetic */ sc(float f2, int i2) {
        this.f79765b = i2;
        this.f79766c = f2;
    }

    @Override // androidx.compose.foundation.MarqueeSpacing
    public int d(Density density, int i2) {
        return density.B0(this.f79766c);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f79765b;
        float f2 = this.f79766c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 1:
                listener.h0(f2);
                break;
            default:
                listener.h0(f2);
                break;
        }
    }
}

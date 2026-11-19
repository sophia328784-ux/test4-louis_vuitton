package androidx.media3.exoplayer;

import android.os.Looper;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class PlayerMessage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Target f14766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Sender f14767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Clock f14768c;
    public final Timeline d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f14769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f14770f;
    public final Looper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f14771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f14772i;

    public interface Sender {
        void f(PlayerMessage playerMessage);
    }

    public interface Target {
        void q(int i2, Object obj);
    }

    public PlayerMessage(Sender sender, Target target, Timeline timeline, int i2, Clock clock, Looper looper) {
        this.f14767b = sender;
        this.f14766a = target;
        this.d = timeline;
        this.g = looper;
        this.f14768c = clock;
        this.f14771h = i2;
    }

    public final synchronized void a(boolean z) {
        notifyAll();
    }

    public final void b() {
        Preconditions.q(!this.f14772i);
        this.f14772i = true;
        this.f14767b.f(this);
    }
}

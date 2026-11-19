package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class PlaybackLooperProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f14763a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Looper f14764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HandlerThread f14765c;
    public int d;

    public PlaybackLooperProvider(Looper looper) {
        this.f14763a = new Object();
        this.f14764b = looper;
        this.f14765c = null;
        this.d = 0;
    }

    public final void a() {
        HandlerThread handlerThread;
        synchronized (this.f14763a) {
            try {
                Preconditions.q(this.d > 0);
                int i2 = this.d - 1;
                this.d = i2;
                if (i2 == 0 && (handlerThread = this.f14765c) != null) {
                    handlerThread.quit();
                    this.f14765c = null;
                    this.f14764b = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PlaybackLooperProvider() {
        this(null);
    }
}

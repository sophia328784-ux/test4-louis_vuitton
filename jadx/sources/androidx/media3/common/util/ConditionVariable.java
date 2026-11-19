package androidx.media3.common.util;

/* JADX INFO: loaded from: classes.dex */
public class ConditionVariable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Clock f14150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f14151b;

    public ConditionVariable() {
        this(Clock.f14143a);
    }

    public final synchronized void a() {
        while (!this.f14151b) {
            this.f14150a.getClass();
            wait();
        }
    }

    public final synchronized void b() {
        boolean z = false;
        while (!this.f14151b) {
            try {
                this.f14150a.getClass();
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean c(long j2) {
        try {
            if (j2 <= 0) {
                return this.f14151b;
            }
            long jB = this.f14150a.b();
            long j3 = j2 + jB;
            if (j3 < jB) {
                b();
            } else {
                boolean z = false;
                while (!this.f14151b && jB < j3) {
                    try {
                        this.f14150a.getClass();
                        wait(j3 - jB);
                    } catch (InterruptedException unused) {
                        z = true;
                    }
                    jB = this.f14150a.b();
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
            return this.f14151b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean d() {
        if (this.f14151b) {
            return false;
        }
        this.f14151b = true;
        notifyAll();
        return true;
    }

    public ConditionVariable(Clock clock) {
        this.f14150a = clock;
    }
}

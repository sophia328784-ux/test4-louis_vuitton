package androidx.core.os;

import defpackage.y81;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class CancellationSignal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f12078a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public y81 f12079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f12080c;

    public interface OnCancelListener {
    }

    public final void a() {
        synchronized (this) {
            try {
                if (this.f12078a) {
                    return;
                }
                this.f12078a = true;
                this.f12080c = true;
                y81 y81Var = this.f12079b;
                if (y81Var != null) {
                    try {
                        y81Var.b();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f12080c = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (this) {
                    this.f12080c = false;
                    notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

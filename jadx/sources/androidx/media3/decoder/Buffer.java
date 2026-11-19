package androidx.media3.decoder;

/* JADX INFO: loaded from: classes.dex */
public abstract class Buffer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f14531b;

    public final void e(int i2) {
        this.f14531b = i2 | this.f14531b;
    }

    public final boolean f(int i2) {
        return (this.f14531b & i2) == i2;
    }
}

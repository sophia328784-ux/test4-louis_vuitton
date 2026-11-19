package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes.dex */
public final class RendererConfiguration {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final RendererConfiguration f14777c = new RendererConfiguration(0, false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f14779b;

    public RendererConfiguration(boolean z) {
        this.f14778a = 0;
        this.f14779b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && RendererConfiguration.class == obj.getClass()) {
            RendererConfiguration rendererConfiguration = (RendererConfiguration) obj;
            if (this.f14778a == rendererConfiguration.f14778a && this.f14779b == rendererConfiguration.f14779b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f14778a << 1) + (this.f14779b ? 1 : 0);
    }

    public RendererConfiguration(int i2, boolean z) {
        this.f14778a = i2;
        this.f14779b = z;
    }
}

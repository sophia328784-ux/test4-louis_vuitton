package androidx.camera.core.processing.concurrent;

import androidx.camera.core.processing.util.OutConfig;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DualOutConfig extends DualOutConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutConfig f2578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutConfig f2579b;

    public AutoValue_DualOutConfig(OutConfig outConfig, OutConfig outConfig2) {
        this.f2578a = outConfig;
        this.f2579b = outConfig2;
    }

    @Override // androidx.camera.core.processing.concurrent.DualOutConfig
    public final OutConfig a() {
        return this.f2578a;
    }

    @Override // androidx.camera.core.processing.concurrent.DualOutConfig
    public final OutConfig b() {
        return this.f2579b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DualOutConfig)) {
            return false;
        }
        DualOutConfig dualOutConfig = (DualOutConfig) obj;
        return this.f2578a.equals(dualOutConfig.a()) && this.f2579b.equals(dualOutConfig.b());
    }

    public final int hashCode() {
        return this.f2579b.hashCode() ^ ((this.f2578a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "DualOutConfig{primaryOutConfig=" + this.f2578a + ", secondaryOutConfig=" + this.f2579b + "}";
    }
}

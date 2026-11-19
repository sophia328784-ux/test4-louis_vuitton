package androidx.camera.core.impl;

import android.os.Handler;
import defpackage.r81;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_CameraThreadConfig extends CameraThreadConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f2168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f2169b;

    public AutoValue_CameraThreadConfig(Executor executor, Handler handler) {
        if (executor == null) {
            r81.d("Null cameraExecutor");
            throw null;
        }
        this.f2168a = executor;
        if (handler != null) {
            this.f2169b = handler;
        } else {
            r81.d("Null schedulerHandler");
            throw null;
        }
    }

    @Override // androidx.camera.core.impl.CameraThreadConfig
    public final Executor b() {
        return this.f2168a;
    }

    @Override // androidx.camera.core.impl.CameraThreadConfig
    public final Handler c() {
        return this.f2169b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CameraThreadConfig)) {
            return false;
        }
        CameraThreadConfig cameraThreadConfig = (CameraThreadConfig) obj;
        return this.f2168a.equals(cameraThreadConfig.b()) && this.f2169b.equals(cameraThreadConfig.c());
    }

    public final int hashCode() {
        return this.f2169b.hashCode() ^ ((this.f2168a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "CameraThreadConfig{cameraExecutor=" + this.f2168a + ", schedulerHandler=" + this.f2169b + "}";
    }
}

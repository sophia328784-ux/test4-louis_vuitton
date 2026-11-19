package androidx.camera.core.processing;

import androidx.concurrent.futures.CallbackToFutureAdapter;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_DefaultSurfaceProcessor_PendingSnapshot extends DefaultSurfaceProcessor.PendingSnapshot {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CallbackToFutureAdapter.Completer f2522c;

    public AutoValue_DefaultSurfaceProcessor_PendingSnapshot(int i2, int i3, CallbackToFutureAdapter.Completer completer) {
        this.f2520a = i2;
        this.f2521b = i3;
        this.f2522c = completer;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof DefaultSurfaceProcessor.PendingSnapshot) {
            AutoValue_DefaultSurfaceProcessor_PendingSnapshot autoValue_DefaultSurfaceProcessor_PendingSnapshot = (AutoValue_DefaultSurfaceProcessor_PendingSnapshot) ((DefaultSurfaceProcessor.PendingSnapshot) obj);
            return this.f2520a == autoValue_DefaultSurfaceProcessor_PendingSnapshot.f2520a && this.f2521b == autoValue_DefaultSurfaceProcessor_PendingSnapshot.f2521b && this.f2522c == autoValue_DefaultSurfaceProcessor_PendingSnapshot.f2522c;
        }
        return false;
    }

    public final int hashCode() {
        return this.f2522c.hashCode() ^ ((((this.f2520a ^ 1000003) * 1000003) ^ this.f2521b) * 1000003);
    }

    public final String toString() {
        return "PendingSnapshot{jpegQuality=" + this.f2520a + ", rotationDegrees=" + this.f2521b + ", completer=" + this.f2522c + "}";
    }
}

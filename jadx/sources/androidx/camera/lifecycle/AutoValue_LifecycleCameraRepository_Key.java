package androidx.camera.lifecycle;

import androidx.camera.core.CameraIdentifier;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_LifecycleCameraRepository_Key extends LifecycleCameraRepository.Key {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CameraIdentifier f2683b;

    public AutoValue_LifecycleCameraRepository_Key(int i2, CameraIdentifier cameraIdentifier) {
        this.f2682a = i2;
        if (cameraIdentifier != null) {
            this.f2683b = cameraIdentifier;
        } else {
            r81.d("Null cameraIdentifier");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof LifecycleCameraRepository.Key) {
            AutoValue_LifecycleCameraRepository_Key autoValue_LifecycleCameraRepository_Key = (AutoValue_LifecycleCameraRepository_Key) ((LifecycleCameraRepository.Key) obj);
            if (this.f2682a == autoValue_LifecycleCameraRepository_Key.f2682a && this.f2683b.equals(autoValue_LifecycleCameraRepository_Key.f2683b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2683b.hashCode() ^ ((this.f2682a ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "Key{lifecycleOwnerHash=" + this.f2682a + ", cameraIdentifier=" + this.f2683b + "}";
    }
}

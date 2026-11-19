package androidx.camera.core.imagecapture;

import android.util.Size;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_PostviewSettings extends PostviewSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Size f2057a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2058b;

    public AutoValue_PostviewSettings(Size size, int i2) {
        if (size == null) {
            r81.d("Null resolution");
            throw null;
        }
        this.f2057a = size;
        this.f2058b = i2;
    }

    @Override // androidx.camera.core.imagecapture.PostviewSettings
    public final int b() {
        return this.f2058b;
    }

    @Override // androidx.camera.core.imagecapture.PostviewSettings
    public final Size c() {
        return this.f2057a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PostviewSettings)) {
            return false;
        }
        PostviewSettings postviewSettings = (PostviewSettings) obj;
        return this.f2057a.equals(postviewSettings.c()) && this.f2058b == postviewSettings.b();
    }

    public final int hashCode() {
        return this.f2058b ^ ((this.f2057a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PostviewSettings{resolution=");
        sb.append(this.f2057a);
        sb.append(", inputFormat=");
        return defpackage.a.i(this.f2058b, "}", sb);
    }
}

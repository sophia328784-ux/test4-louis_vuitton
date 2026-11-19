package androidx.camera.core;

import android.graphics.Matrix;
import androidx.camera.core.impl.TagBundle;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_ImmutableImageInfo extends ImmutableImageInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TagBundle f1868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f1869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1870c;
    public final Matrix d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1871e;

    public AutoValue_ImmutableImageInfo(TagBundle tagBundle, long j2, int i2, Matrix matrix, int i3) {
        if (tagBundle == null) {
            r81.d("Null tagBundle");
            throw null;
        }
        this.f1868a = tagBundle;
        this.f1869b = j2;
        this.f1870c = i2;
        if (matrix == null) {
            r81.d("Null sensorToBufferTransformMatrix");
            throw null;
        }
        this.d = matrix;
        this.f1871e = i3;
    }

    @Override // androidx.camera.core.ImmutableImageInfo, androidx.camera.core.ImageInfo
    public final int a() {
        return this.f1871e;
    }

    @Override // androidx.camera.core.ImageInfo
    public final TagBundle c() {
        return this.f1868a;
    }

    @Override // androidx.camera.core.ImageInfo
    public final long d() {
        return this.f1869b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableImageInfo)) {
            return false;
        }
        ImmutableImageInfo immutableImageInfo = (ImmutableImageInfo) obj;
        AutoValue_ImmutableImageInfo autoValue_ImmutableImageInfo = (AutoValue_ImmutableImageInfo) immutableImageInfo;
        return this.f1868a.equals(autoValue_ImmutableImageInfo.f1868a) && this.f1869b == autoValue_ImmutableImageInfo.f1869b && this.f1870c == immutableImageInfo.f() && this.d.equals(immutableImageInfo.g()) && this.f1871e == immutableImageInfo.a();
    }

    @Override // androidx.camera.core.ImmutableImageInfo
    public final int f() {
        return this.f1870c;
    }

    @Override // androidx.camera.core.ImmutableImageInfo
    public final Matrix g() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = (this.f1868a.hashCode() ^ 1000003) * 1000003;
        long j2 = this.f1869b;
        return this.f1871e ^ ((((((iHashCode ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.f1870c) * 1000003) ^ this.d.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmutableImageInfo{tagBundle=");
        sb.append(this.f1868a);
        sb.append(", timestamp=");
        sb.append(this.f1869b);
        sb.append(", rotationDegrees=");
        sb.append(this.f1870c);
        sb.append(", sensorToBufferTransformMatrix=");
        sb.append(this.d);
        sb.append(", flashState=");
        return defpackage.a.i(this.f1871e, "}", sb);
    }
}

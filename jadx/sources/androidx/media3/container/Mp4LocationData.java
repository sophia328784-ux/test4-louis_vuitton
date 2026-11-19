package androidx.media3.container;

import androidx.media3.common.Metadata;
import com.google.common.base.Preconditions;
import defpackage.pq0;

/* JADX INFO: loaded from: classes.dex */
public final class Mp4LocationData implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f14281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f14282b;

    public Mp4LocationData(float f2, float f3) {
        Preconditions.h(f2 >= -90.0f && f2 <= 90.0f && f3 >= -180.0f && f3 <= 180.0f, "Invalid latitude or longitude");
        this.f14281a = f2;
        this.f14282b = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Mp4LocationData.class == obj.getClass()) {
            Mp4LocationData mp4LocationData = (Mp4LocationData) obj;
            if (this.f14281a == mp4LocationData.f14281a && this.f14282b == mp4LocationData.f14282b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.f14282b) + pq0.b(527, 31, this.f14281a);
    }

    public final String toString() {
        return "xyz: latitude=" + this.f14281a + ", longitude=" + this.f14282b;
    }
}

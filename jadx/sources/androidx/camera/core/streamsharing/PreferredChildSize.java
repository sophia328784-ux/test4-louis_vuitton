package androidx.camera.core.streamsharing;

import android.graphics.Rect;
import android.util.Size;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/core/streamsharing/PreferredChildSize;", "", "Landroid/graphics/Rect;", "cropRectBeforeScaling", "Landroid/util/Size;", "childSizeToScale", "originalSelectedChildSize", "<init>", "(Landroid/graphics/Rect;Landroid/util/Size;Landroid/util/Size;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class PreferredChildSize {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f2640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Size f2641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Size f2642c;

    public PreferredChildSize(Rect rect, Size size, Size size2) {
        rect.getClass();
        size.getClass();
        size2.getClass();
        this.f2640a = rect;
        this.f2641b = size;
        this.f2642c = size2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreferredChildSize)) {
            return false;
        }
        PreferredChildSize preferredChildSize = (PreferredChildSize) obj;
        return Intrinsics.c(this.f2640a, preferredChildSize.f2640a) && Intrinsics.c(this.f2641b, preferredChildSize.f2641b) && Intrinsics.c(this.f2642c, preferredChildSize.f2642c);
    }

    public final int hashCode() {
        return this.f2642c.hashCode() + ((this.f2641b.hashCode() + (this.f2640a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PreferredChildSize(cropRectBeforeScaling=" + this.f2640a + ", childSizeToScale=" + this.f2641b + ", originalSelectedChildSize=" + this.f2642c + ')';
    }
}

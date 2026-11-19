package androidx.media3.common.util;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class Size {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Size f14197c = new Size(-1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f14198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14199b;

    static {
        new Size(0, 0);
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public Size(int i2, int i3) {
        Preconditions.g((i2 == -1 || i2 >= 0) && (i3 == -1 || i3 >= 0));
        this.f14198a = i2;
        this.f14199b = i3;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.f14198a == size.f14198a && this.f14199b == size.f14199b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f14198a;
        int i3 = i2 << 16;
        return this.f14199b ^ ((i2 >>> 16) | i3);
    }

    public final String toString() {
        return this.f14198a + "x" + this.f14199b;
    }
}

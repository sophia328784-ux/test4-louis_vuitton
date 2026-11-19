package com.otaliastudios.cameraview.size;

/* JADX INFO: loaded from: classes3.dex */
public class Size implements Comparable<Size> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39087c;

    public Size(int i2, int i3) {
        this.f39086b = i2;
        this.f39087c = i3;
    }

    public final Size a() {
        return new Size(this.f39087c, this.f39086b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Size size) {
        Size size2 = size;
        return (this.f39086b * this.f39087c) - (size2.f39086b * size2.f39087c);
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
            if (this.f39086b == size.f39086b && this.f39087c == size.f39087c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f39086b;
        int i3 = i2 << 16;
        return this.f39087c ^ ((i2 >>> 16) | i3);
    }

    public final String toString() {
        return this.f39086b + "x" + this.f39087c;
    }
}

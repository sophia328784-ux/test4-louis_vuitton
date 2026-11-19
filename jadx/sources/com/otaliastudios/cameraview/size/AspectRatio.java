package com.otaliastudios.cameraview.size;

import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public class AspectRatio implements Comparable<AspectRatio> {
    public static final HashMap d = new HashMap(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39084b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f39085c;

    public AspectRatio(int i2, int i3) {
        this.f39084b = i2;
        this.f39085c = i3;
    }

    public static AspectRatio a(int i2, int i3) {
        int i4 = i2;
        int i5 = i3;
        while (i5 != 0) {
            int i6 = i4 % i5;
            i4 = i5;
            i5 = i6;
        }
        if (i4 > 0) {
            i2 /= i4;
        }
        if (i4 > 0) {
            i3 /= i4;
        }
        String str = i2 + ":" + i3;
        HashMap map = d;
        AspectRatio aspectRatio = (AspectRatio) map.get(str);
        if (aspectRatio != null) {
            return aspectRatio;
        }
        AspectRatio aspectRatio2 = new AspectRatio(i2, i3);
        map.put(str, aspectRatio2);
        return aspectRatio2;
    }

    public static AspectRatio b(String str) {
        String[] strArrSplit = str.split(":");
        if (strArrSplit.length == 2) {
            return a(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]));
        }
        throw new NumberFormatException("Illegal AspectRatio string. Must be x:y");
    }

    public final float c() {
        return this.f39084b / this.f39085c;
    }

    @Override // java.lang.Comparable
    public final int compareTo(AspectRatio aspectRatio) {
        return Float.compare(c(), aspectRatio.c());
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return (obj instanceof AspectRatio) && c() == ((AspectRatio) obj).c();
    }

    public final int hashCode() {
        return Float.floatToIntBits(c());
    }

    public final String toString() {
        return this.f39084b + ":" + this.f39085c;
    }
}

package com.google.android.gms.internal.clearcut;

import defpackage.x1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class zzey {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzey f29737e = new zzey(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f29738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f29739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f29740c;
    public boolean d;

    public zzey(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.f29738a = i2;
        this.f29739b = iArr;
        this.f29740c = objArr;
        this.d = z;
    }

    public static zzey b() {
        return new zzey(0, new int[8], new Object[8], true);
    }

    public final void a(int i2, Object obj) {
        if (!this.d) {
            x1.i();
            return;
        }
        int i3 = this.f29738a;
        int[] iArr = this.f29739b;
        if (i3 == iArr.length) {
            int i4 = i3 + (i3 < 4 ? 8 : i3 >> 1);
            this.f29739b = Arrays.copyOf(iArr, i4);
            this.f29740c = Arrays.copyOf(this.f29740c, i4);
        }
        int[] iArr2 = this.f29739b;
        int i5 = this.f29738a;
        iArr2[i5] = i2;
        this.f29740c[i5] = obj;
        this.f29738a = i5 + 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzey)) {
            return false;
        }
        zzey zzeyVar = (zzey) obj;
        int i2 = this.f29738a;
        if (i2 == zzeyVar.f29738a) {
            int[] iArr = this.f29739b;
            int[] iArr2 = zzeyVar.f29739b;
            for (int i3 = 0; i3 < i2; i3++) {
                if (iArr[i3] == iArr2[i3]) {
                }
            }
            Object[] objArr = this.f29740c;
            Object[] objArr2 = zzeyVar.f29740c;
            int i4 = this.f29738a;
            for (int i5 = 0; i5 < i4; i5++) {
                if (objArr[i5].equals(objArr2[i5])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.f29738a;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.f29739b;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i3 + i4) * 31;
        Object[] objArr = this.f29740c;
        int i7 = this.f29738a;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }
}

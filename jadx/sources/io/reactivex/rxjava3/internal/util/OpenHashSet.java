package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.disposables.Disposable;

/* JADX INFO: loaded from: classes4.dex */
public final class OpenHashSet<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f71122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f71123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f71124c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object[] f71125e;

    public OpenHashSet(int i2, float f2) {
        this.f71122a = f2;
        int iNumberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(i2 - 1));
        this.f71123b = iNumberOfLeadingZeros - 1;
        this.d = (int) (f2 * iNumberOfLeadingZeros);
        this.f71125e = new Object[iNumberOfLeadingZeros];
    }

    public final void a(Disposable disposable) {
        Object obj;
        Object obj2;
        Object[] objArr = this.f71125e;
        int i2 = this.f71123b;
        int iHashCode = disposable.hashCode() * (-1640531527);
        int i3 = (iHashCode ^ (iHashCode >>> 16)) & i2;
        Object obj3 = objArr[i3];
        if (obj3 != null) {
            if (obj3.equals(disposable)) {
                return;
            }
            do {
                i3 = (i3 + 1) & i2;
                obj2 = objArr[i3];
                if (obj2 == null) {
                }
            } while (!obj2.equals(disposable));
            return;
        }
        objArr[i3] = disposable;
        int i4 = this.f71124c + 1;
        this.f71124c = i4;
        if (i4 < this.d) {
            return;
        }
        Object[] objArr2 = this.f71125e;
        int length = objArr2.length;
        int i5 = length << 1;
        int i6 = i5 - 1;
        Object[] objArr3 = new Object[i5];
        while (true) {
            int i7 = i4 - 1;
            if (i4 == 0) {
                this.f71123b = i6;
                this.d = (int) (i5 * this.f71122a);
                this.f71125e = objArr3;
                return;
            }
            do {
                length--;
                obj = objArr2[length];
            } while (obj == null);
            int iHashCode2 = obj.hashCode() * (-1640531527);
            int i8 = (iHashCode2 ^ (iHashCode2 >>> 16)) & i6;
            if (objArr3[i8] != null) {
                do {
                    i8 = (i8 + 1) & i6;
                } while (objArr3[i8] != null);
            }
            objArr3[i8] = objArr2[length];
            i4 = i7;
        }
    }

    public final void b(int i2, int i3, Object[] objArr) {
        int i4;
        Object obj;
        this.f71124c--;
        while (true) {
            int i5 = i2 + 1;
            while (true) {
                i4 = i5 & i3;
                obj = objArr[i4];
                if (obj != null) {
                    int iHashCode = obj.hashCode() * (-1640531527);
                    int i6 = (iHashCode ^ (iHashCode >>> 16)) & i3;
                    if (i2 > i4) {
                        if (i2 >= i6 && i6 > i4) {
                            break;
                        } else {
                            i5 = i4 + 1;
                        }
                    } else if (i2 >= i6 || i6 > i4) {
                        break;
                    } else {
                        i5 = i4 + 1;
                    }
                } else {
                    objArr[i2] = null;
                    return;
                }
            }
            objArr[i2] = obj;
            i2 = i4;
        }
    }

    public OpenHashSet(int i2) {
        this(i2, 0.75f);
    }

    public OpenHashSet() {
        this(16, 0.75f);
    }
}

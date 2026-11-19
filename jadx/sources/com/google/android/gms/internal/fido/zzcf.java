package com.google.android.gms.internal.fido;

import defpackage.md;
import defpackage.pq0;
import defpackage.r81;
import java.util.Arrays;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzcf extends zzby implements Set {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public transient zzcc f29851c;

    public static zzcf n(int i2, Object... objArr) {
        if (i2 == 0) {
            return zzcu.f29865k;
        }
        if (i2 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new zzcz(obj);
        }
        int iP = p(i2);
        Object[] objArr2 = new Object[iP];
        int i3 = iP - 1;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            Object obj2 = objArr[i6];
            if (obj2 == null) {
                r81.d(pq0.k(i6, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iRotateLeft = (int) (((long) Integer.rotateLeft((int) (((long) iHashCode) * (-862048943)), 15)) * 461845907);
            while (true) {
                int i7 = iRotateLeft & i3;
                Object obj3 = objArr2[i7];
                if (obj3 == null) {
                    objArr[i5] = obj2;
                    objArr2[i7] = obj2;
                    i4 += iHashCode;
                    i5++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iRotateLeft++;
            }
        }
        Arrays.fill(objArr, i5, i2, (Object) null);
        if (i5 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new zzcz(obj4);
        }
        if (p(i5) < iP / 2) {
            return n(i5, objArr);
        }
        if (i5 <= 0) {
            objArr = Arrays.copyOf(objArr, i5);
        }
        return new zzcu(objArr, objArr2, i4, i3, i5);
    }

    public static int p(int i2) {
        int iMax = Math.max(i2, 2);
        if (iMax < 751619276) {
            int iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
            return iHighestOneBit;
        }
        if (iMax < 1073741824) {
            return 1073741824;
        }
        md.n("collection too large");
        return 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzcf) && o() && ((zzcf) obj).o() && hashCode() != obj.hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        try {
            return size() == set.size() && containsAll(set);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzcy.a(this);
    }

    public boolean o() {
        return this instanceof zzcu;
    }

    public zzcc q() {
        zzcc zzccVar = this.f29851c;
        if (zzccVar != null) {
            return zzccVar;
        }
        zzcc zzccVarR = r();
        this.f29851c = zzccVarR;
        return zzccVarR;
    }

    public zzcc r() {
        Object[] array = toArray(zzby.f29844b);
        zzdd zzddVar = zzcc.f29848c;
        return zzcc.p(array.length, array);
    }
}

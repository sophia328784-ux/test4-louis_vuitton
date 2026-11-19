package com.google.android.gms.internal.measurement;

import com.google.common.collect.ImmutableSortedSet;
import defpackage.d21;
import defpackage.n91;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzmw f30752b = new zzmw(ImmutableSortedSet.D());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableSortedSet f30753a;

    public zzmw(ImmutableSortedSet immutableSortedSet) {
        this.f30753a = immutableSortedSet;
    }

    public static zzmw a(zzacv zzacvVar) throws zzaeh {
        String strW;
        long j2;
        zzmv zzmvVar;
        int iG = zzacvVar.G();
        if (iG < 0) {
            n91.c("Negative number of flags");
            return null;
        }
        ImmutableSortedSet.Builder builderA = ImmutableSortedSet.A();
        long j3 = 0;
        for (int i2 = 0; i2 < iG; i2++) {
            long jH = zzacvVar.H();
            int i3 = (int) jH;
            long j4 = jH >>> 3;
            if (j4 == 0) {
                j2 = 0;
                strW = zzacvVar.w();
            } else {
                long j5 = j4 + j3;
                if (j5 > 2305843009213693951L) {
                    n91.c("Flag name larger than max size");
                    return null;
                }
                strW = null;
                j2 = j5;
            }
            int i4 = i3 & 7;
            if (i4 == 0 || i4 == 1) {
                zzmvVar = new zzmv(i4, j2, 0L, null, strW);
            } else if (i4 == 2) {
                zzmvVar = new zzmv(i4, j2, zzacvVar.H(), null, strW);
            } else if (i4 == 3) {
                zzmvVar = new zzmv(i4, j2, Double.doubleToRawLongBits(zzacvVar.o()), null, strW);
            } else if (i4 == 4) {
                zzmvVar = new zzmv(i4, j2, 0L, zzacvVar.w(), strW);
            } else {
                if (i4 != 5) {
                    n91.c(d21.f(i4, "Unrecognized flag type ", new StringBuilder(String.valueOf(i4).length() + 23)));
                    return null;
                }
                zzmvVar = new zzmv(i4, j2, 0L, zzacvVar.z(), strW);
            }
            long j6 = zzmvVar.f30748b;
            if (j6 != 0) {
                j3 = j6;
            }
            builderA.c(zzmvVar);
        }
        return new zzmw(builderA.l());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzmw)) {
            return false;
        }
        return this.f30753a.equals(((zzmw) obj).f30753a);
    }

    public final int hashCode() {
        return this.f30753a.hashCode();
    }
}

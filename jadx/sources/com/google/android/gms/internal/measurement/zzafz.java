package com.google.android.gms.internal.measurement;

import defpackage.n91;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzafz {
    public abstract zzaga a(Object obj);

    public final boolean b(int i2, zzacw zzacwVar, Object obj) throws zzaeh {
        int i3 = zzacwVar.f30383b;
        int i4 = i3 >>> 3;
        int i5 = i3 & 7;
        if (i5 == 0) {
            ((zzaga) obj).d(i4 << 3, Long.valueOf(zzacwVar.B()));
            return true;
        }
        if (i5 == 1) {
            ((zzaga) obj).d((i4 << 3) | 1, Long.valueOf(zzacwVar.D()));
            return true;
        }
        if (i5 == 2) {
            ((zzaga) obj).d((i4 << 3) | 2, zzacwVar.K());
            return true;
        }
        if (i5 != 3) {
            if (i5 == 4) {
                if (i2 != 0) {
                    return false;
                }
                n91.c("Protocol message end-group tag did not match expected tag.");
                return false;
            }
            if (i5 != 5) {
                r81.k();
                return false;
            }
            ((zzaga) obj).d(5 | (i4 << 3), Integer.valueOf(zzacwVar.E()));
            return true;
        }
        zzaga zzagaVarA = zzaga.a();
        int i6 = i4 << 3;
        int i7 = i2 + 1;
        if (i7 >= 100) {
            n91.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return false;
        }
        while (zzacwVar.x() != Integer.MAX_VALUE && b(i7, zzacwVar, zzagaVarA)) {
        }
        if ((i6 | 4) != zzacwVar.f30383b) {
            n91.c("Protocol message end-group tag did not match expected tag.");
            return false;
        }
        if (zzagaVarA.f30474e) {
            zzagaVarA.f30474e = false;
        }
        ((zzaga) obj).d(i6 | 3, zzagaVarA);
        return true;
    }
}

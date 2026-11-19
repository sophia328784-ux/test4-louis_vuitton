package com.google.android.gms.internal.measurement;

import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class zzaax implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzabd zzabdVarA = zzabd.a(obj);
        zzabd zzabdVarA2 = zzabd.a(obj2);
        if (zzabdVarA != zzabdVarA2) {
            return zzabdVarA.compareTo(zzabdVarA2);
        }
        int iOrdinal = zzabdVarA.ordinal();
        if (iOrdinal == 0) {
            return ((Boolean) obj).compareTo((Boolean) obj2);
        }
        if (iOrdinal == 1) {
            return ((String) obj).compareTo((String) obj2);
        }
        if (iOrdinal == 2) {
            return ((Long) obj).compareTo((Long) obj2);
        }
        if (iOrdinal == 3) {
            return ((Double) obj).compareTo((Double) obj2);
        }
        throw null;
    }
}

package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes2.dex */
final class zzaeo {
    public static final zzaef a(long j2, Object obj) {
        zzaef zzaefVar = (zzaef) zzagg.i(j2, obj);
        if (zzaefVar.d0()) {
            return zzaefVar;
        }
        int size = zzaefVar.size();
        zzaef zzaefVarD = zzaefVar.d(size == 0 ? 10 : size + size);
        zzagg.j(j2, obj, zzaefVarD);
        return zzaefVarD;
    }
}

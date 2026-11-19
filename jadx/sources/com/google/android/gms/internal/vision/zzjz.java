package com.google.android.gms.internal.vision;

/* JADX INFO: loaded from: classes2.dex */
final class zzjz extends zzju {
    @Override // com.google.android.gms.internal.vision.zzju
    public final void a(long j2, Object obj, Object obj2) {
        zzjl zzjlVarE = (zzjl) zzma.m(j2, obj);
        zzjl zzjlVar = (zzjl) zzma.m(j2, obj2);
        int size = zzjlVarE.size();
        int size2 = zzjlVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzjlVarE.d0()) {
                zzjlVarE = zzjlVarE.e(size2 + size);
            }
            zzjlVarE.addAll(zzjlVar);
        }
        if (size > 0) {
            zzjlVar = zzjlVarE;
        }
        zzma.d(j2, obj, zzjlVar);
    }

    @Override // com.google.android.gms.internal.vision.zzju
    public final void b(long j2, Object obj) {
        ((zzjl) zzma.m(j2, obj)).e0();
    }
}

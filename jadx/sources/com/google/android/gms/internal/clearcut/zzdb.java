package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzdb extends zzcy {
    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final void a(long j2, Object obj) {
        ((zzcn) zzfd.k(j2, obj)).p0();
    }

    @Override // com.google.android.gms.internal.clearcut.zzcy
    public final void b(long j2, Object obj, Object obj2) {
        zzcn zzcnVarV0 = (zzcn) zzfd.k(j2, obj);
        zzcn zzcnVar = (zzcn) zzfd.k(j2, obj2);
        int size = zzcnVarV0.size();
        int size2 = zzcnVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzcnVarV0.o0()) {
                zzcnVarV0 = zzcnVarV0.v0(size2 + size);
            }
            zzcnVarV0.addAll(zzcnVar);
        }
        if (size > 0) {
            zzcnVar = zzcnVarV0;
        }
        zzfd.b(j2, obj, zzcnVar);
    }
}

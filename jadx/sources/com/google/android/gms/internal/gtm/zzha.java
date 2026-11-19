package com.google.android.gms.internal.gtm;

/* JADX INFO: loaded from: classes2.dex */
public final class zzha extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbr f30075a;

    public zzha(zzbr zzbrVar) {
        this.f30075a = zzbrVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        int length = zzkkVarArr.length;
        if (length != 0) {
            zzkk zzkkVar2 = zzkkVarArr[0];
            zzko zzkoVar = zzko.f30172h;
            if (zzkkVar2 != zzkoVar) {
                Object obj = this.f30075a.d0().c().get("_ldl");
                if (obj == null) {
                    return new zzkv("");
                }
                zzkk zzkkVarB = zzkw.b(obj);
                if (!(zzkkVarB instanceof zzkv)) {
                    return new zzkv("");
                }
                String str = ((zzkv) zzkkVarB).f30188b;
                if (!zzbf.a(str, "conv").equals(zzdj.d(zzkkVarArr[0]))) {
                    return new zzkv("");
                }
                String strD = null;
                if (length > 1 && (zzkkVar = zzkkVarArr[1]) != zzkoVar) {
                    strD = zzdj.d(zzkkVar);
                }
                String strA = zzbf.a(str, strD);
                return strA != null ? new zzkv(strA) : new zzkv("");
            }
        }
        return new zzkv("");
    }
}

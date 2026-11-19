package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbb extends zzav {
    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 1) {
            zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.AND, 2, arrayList, 0));
            if (!zzaoVarB.h0().booleanValue()) {
                return zzaoVarB;
            }
            return zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
        }
        if (iOrdinal == 47) {
            return new zzaf(Boolean.valueOf(!zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.NOT, 1, arrayList, 0)).h0().booleanValue()));
        }
        if (iOrdinal != 50) {
            b(str);
            throw null;
        }
        zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.OR, 2, arrayList, 0));
        if (zzaoVarB2.h0().booleanValue()) {
            return zzaoVarB2;
        }
        return zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
    }
}

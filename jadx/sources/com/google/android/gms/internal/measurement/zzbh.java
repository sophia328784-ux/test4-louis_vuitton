package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbh extends zzav {
    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 0) {
            zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.ADD, 2, arrayList, 0));
            zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
            if (!(zzaoVarB instanceof zzak) && !(zzaoVarB instanceof zzas) && !(zzaoVarB2 instanceof zzak) && !(zzaoVarB2 instanceof zzas)) {
                return new zzah(Double.valueOf(zzaoVarB2.g0().doubleValue() + zzaoVarB.g0().doubleValue()));
            }
            return new zzas(String.valueOf(zzaoVarB.f0()).concat(String.valueOf(zzaoVarB2.f0())));
        }
        if (iOrdinal == 21) {
            return new zzah(Double.valueOf(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.DIVIDE, 2, arrayList, 0)).g0().doubleValue() / zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue()));
        }
        if (iOrdinal == 59) {
            zzao zzaoVarB3 = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.SUBTRACT, 2, arrayList, 0));
            zzah zzahVar = new zzah(Double.valueOf(-zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue()));
            return new zzah(Double.valueOf(zzahVar.f30493b.doubleValue() + zzaoVarB3.g0().doubleValue()));
        }
        if (iOrdinal == 52 || iOrdinal == 53) {
            zzh.a(2, arrayList, str);
            zzao zzaoVarB4 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
            zzgVar.a((zzao) arrayList.get(1));
            return zzaoVarB4;
        }
        if (iOrdinal == 55 || iOrdinal == 56) {
            zzh.a(1, arrayList, str);
            return zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
        }
        switch (iOrdinal) {
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                return new zzah(Double.valueOf(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.MODULUS, 2, arrayList, 0)).g0().doubleValue() % zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue()));
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                return new zzah(Double.valueOf(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue() * zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.MULTIPLY, 2, arrayList, 0)).g0().doubleValue()));
            case 46:
                return new zzah(Double.valueOf(-zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.NEGATE, 1, arrayList, 0)).g0().doubleValue()));
            default:
                b(str);
                throw null;
        }
    }
}

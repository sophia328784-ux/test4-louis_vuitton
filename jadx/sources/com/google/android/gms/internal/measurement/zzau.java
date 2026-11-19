package com.google.android.gms.internal.measurement;

import defpackage.z81;
import java.util.ArrayList;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
public final class zzau extends zzav {
    public zzau() {
        this.f30573a.add(zzbk.BITWISE_AND);
        this.f30573a.add(zzbk.BITWISE_LEFT_SHIFT);
        this.f30573a.add(zzbk.BITWISE_NOT);
        this.f30573a.add(zzbk.BITWISE_OR);
        this.f30573a.add(zzbk.BITWISE_RIGHT_SHIFT);
        this.f30573a.add(zzbk.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.f30573a.add(zzbk.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        zzbk zzbkVar = zzbk.ADD;
        switch (zzh.e(str).ordinal()) {
            case 4:
                return new zzah(Double.valueOf(zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_AND, 2, arrayList, 0)).g0().doubleValue()) & zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())));
            case 5:
                return new zzah(Double.valueOf(zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_LEFT_SHIFT, 2, arrayList, 0)).g0().doubleValue()) << ((int) (((long) zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())) & 31))));
            case 6:
                return new zzah(Double.valueOf(~zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_NOT, 1, arrayList, 0)).g0().doubleValue())));
            case 7:
                return new zzah(Double.valueOf(zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_OR, 2, arrayList, 0)).g0().doubleValue()) | zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())));
            case 8:
                return new zzah(Double.valueOf(zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_RIGHT_SHIFT, 2, arrayList, 0)).g0().doubleValue()) >> ((int) (((long) zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())) & 31))));
            case 9:
                return new zzah(Double.valueOf((((long) zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_UNSIGNED_RIGHT_SHIFT, 2, arrayList, 0)).g0().doubleValue())) & BodyPartID.bodyIdMax) >>> ((int) (((long) zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())) & 31))));
            case 10:
                return new zzah(Double.valueOf(zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.BITWISE_XOR, 2, arrayList, 0)).g0().doubleValue()) ^ zzh.g(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).g0().doubleValue())));
            default:
                b(str);
                throw null;
        }
    }
}

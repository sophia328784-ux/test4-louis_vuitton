package com.google.android.gms.internal.measurement;

import defpackage.d20;
import defpackage.fc;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbj extends zzav {
    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        String str2;
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        int i2 = 0;
        if (iOrdinal == 3) {
            zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.ASSIGN, 2, arrayList, 0));
            if (!(zzaoVarB instanceof zzas)) {
                md.n(tr.g("Expected string for assign var. got ", zzaoVarB.getClass().getCanonicalName()));
                return null;
            }
            String str3 = ((zzas) zzaoVarB).f30572b;
            if (!zzgVar.d(str3)) {
                md.n("Attempting to assign undefined value ".concat(str3));
                return null;
            }
            zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
            zzgVar.e(str3, zzaoVarB2);
            return zzaoVarB2;
        }
        if (iOrdinal == 14) {
            zzh.b(2, arrayList, zzbk.CONST.name());
            if (arrayList.size() % 2 != 0) {
                md.n(pq0.k(arrayList.size(), "CONST requires an even number of arguments, found "));
                return null;
            }
            while (i2 < arrayList.size() - 1) {
                zzao zzaoVarB3 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(i2));
                if (!(zzaoVarB3 instanceof zzas)) {
                    md.n(tr.g("Expected string for const name. got ", zzaoVarB3.getClass().getCanonicalName()));
                    return null;
                }
                String str4 = ((zzas) zzaoVarB3).f30572b;
                zzgVar.f(str4, zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(i2 + 1)));
                zzgVar.d.put(str4, Boolean.TRUE);
                i2 += 2;
            }
            return zzao.k0;
        }
        if (iOrdinal == 24) {
            zzh.b(1, arrayList, zzbk.EXPRESSION_LIST.name());
            zzao zzaoVarB4 = zzao.k0;
            while (i2 < arrayList.size()) {
                zzaoVarB4 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(i2));
                if (zzaoVarB4 instanceof zzag) {
                    md.k("ControlValue cannot be in an expression list");
                    return null;
                }
                i2++;
            }
            return zzaoVarB4;
        }
        if (iOrdinal == 33) {
            zzao zzaoVarB5 = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.GET, 1, arrayList, 0));
            if (zzaoVarB5 instanceof zzas) {
                return zzgVar.g(((zzas) zzaoVarB5).f30572b);
            }
            md.n(tr.g("Expected string for get var. got ", zzaoVarB5.getClass().getCanonicalName()));
            return null;
        }
        if (iOrdinal == 49) {
            zzh.a(0, arrayList, zzbk.NULL.name());
            return zzao.l0;
        }
        if (iOrdinal == 58) {
            zzao zzaoVar = (zzao) z81.e(zzbk.SET_PROPERTY, 3, arrayList, 0);
            zzaw zzawVar = zzgVar.f30629b;
            zzaw zzawVar2 = zzgVar.f30629b;
            zzao zzaoVarB6 = zzawVar.b(zzgVar, zzaoVar);
            zzao zzaoVarB7 = zzawVar2.b(zzgVar, (zzao) arrayList.get(1));
            zzao zzaoVarB8 = zzawVar2.b(zzgVar, (zzao) arrayList.get(2));
            if (zzaoVarB6 == zzao.k0 || zzaoVarB6 == zzao.l0) {
                md.k(fc.i("Can't set property ", zzaoVarB7.f0(), " of ", zzaoVarB6.f0()));
                return null;
            }
            if ((zzaoVarB6 instanceof zzae) && (zzaoVarB7 instanceof zzah)) {
                ((zzae) zzaoVarB6).q(((zzah) zzaoVarB7).f30493b.intValue(), zzaoVarB8);
                return zzaoVarB8;
            }
            if (!(zzaoVarB6 instanceof zzak)) {
                return zzaoVarB8;
            }
            ((zzak) zzaoVarB6).b(zzaoVarB7.f0(), zzaoVarB8);
            return zzaoVarB8;
        }
        if (iOrdinal == 17) {
            if (arrayList.isEmpty()) {
                return new zzae();
            }
            zzae zzaeVar = new zzae();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                zzao zzaoVarB9 = zzgVar.f30629b.b(zzgVar, (zzao) it.next());
                if (zzaoVarB9 instanceof zzag) {
                    md.k("Failed to evaluate array element");
                    return null;
                }
                zzaeVar.q(i2, zzaoVarB9);
                i2++;
            }
            return zzaeVar;
        }
        if (iOrdinal == 18) {
            if (arrayList.isEmpty()) {
                return new zzal();
            }
            if (arrayList.size() % 2 != 0) {
                md.n(pq0.k(arrayList.size(), "CREATE_OBJECT requires an even number of arguments, found "));
                return null;
            }
            zzal zzalVar = new zzal();
            while (i2 < arrayList.size() - 1) {
                zzao zzaoVarB10 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(i2));
                zzao zzaoVarB11 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(i2 + 1));
                if ((zzaoVarB10 instanceof zzag) || (zzaoVarB11 instanceof zzag)) {
                    md.k("Failed to evaluate map entry");
                    return null;
                }
                zzalVar.b(zzaoVarB10.f0(), zzaoVarB11);
                i2 += 2;
            }
            return zzalVar;
        }
        if (iOrdinal == 35 || iOrdinal == 36) {
            zzao zzaoVarB12 = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.GET_PROPERTY, 2, arrayList, 0));
            zzao zzaoVarB13 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
            if ((zzaoVarB12 instanceof zzae) && zzh.d(zzaoVarB13)) {
                return ((zzae) zzaoVarB12).p(zzaoVarB13.g0().intValue());
            }
            if (zzaoVarB12 instanceof zzak) {
                return ((zzak) zzaoVarB12).a(zzaoVarB13.f0());
            }
            if (zzaoVarB12 instanceof zzas) {
                if ("length".equals(zzaoVarB13.f0())) {
                    return new zzah(Double.valueOf(((zzas) zzaoVarB12).f30572b.length()));
                }
                if (zzh.d(zzaoVarB13)) {
                    double dDoubleValue = zzaoVarB13.g0().doubleValue();
                    String str5 = ((zzas) zzaoVarB12).f30572b;
                    if (dDoubleValue < str5.length()) {
                        return new zzas(String.valueOf(str5.charAt(zzaoVarB13.g0().intValue())));
                    }
                }
            }
            return zzao.k0;
        }
        switch (iOrdinal) {
            case 62:
                zzao zzaoVarB14 = zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.TYPEOF, 1, arrayList, 0));
                if (zzaoVarB14 instanceof zzat) {
                    str2 = "undefined";
                } else if (zzaoVarB14 instanceof zzaf) {
                    str2 = "boolean";
                } else if (zzaoVarB14 instanceof zzah) {
                    str2 = "number";
                } else if (zzaoVarB14 instanceof zzas) {
                    str2 = "string";
                } else if (zzaoVarB14 instanceof zzan) {
                    str2 = "function";
                } else {
                    if ((zzaoVarB14 instanceof zzap) || (zzaoVarB14 instanceof zzag)) {
                        d20.j("Unsupported value type %s in typeof", new Object[]{zzaoVarB14});
                        return null;
                    }
                    str2 = "object";
                }
                return new zzas(str2);
            case 63:
                zzh.a(0, arrayList, zzbk.UNDEFINED.name());
                return zzao.k0;
            case 64:
                zzh.b(1, arrayList, zzbk.VAR.name());
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    zzao zzaoVarB15 = zzgVar.f30629b.b(zzgVar, (zzao) it2.next());
                    if (!(zzaoVarB15 instanceof zzas)) {
                        md.n(tr.g("Expected string for var name. got ", zzaoVarB15.getClass().getCanonicalName()));
                        return null;
                    }
                    zzgVar.f(((zzas) zzaoVarB15).f30572b, zzao.k0);
                }
                return zzao.k0;
            default:
                b(str);
                throw null;
        }
    }
}

package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.tr;
import defpackage.z81;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class zzay extends zzav {
    public static zzan c(zzg zzgVar, List list) {
        zzh.b(2, list, zzbk.FN.name());
        zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) list.get(0));
        zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) list.get(1));
        if (!(zzaoVarB2 instanceof zzae)) {
            md.n(tr.g("FN requires an ArrayValue of parameter names found ", zzaoVarB2.getClass().getCanonicalName()));
            return null;
        }
        List listM = ((zzae) zzaoVarB2).m();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new zzan(zzaoVarB.f0(), listM, arrayList, zzgVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 2) {
            zzao zzaoVar = (zzao) z81.e(zzbk.APPLY, 3, arrayList, 0);
            zzaw zzawVar = zzgVar.f30629b;
            zzaw zzawVar2 = zzgVar.f30629b;
            zzao zzaoVarB = zzawVar.b(zzgVar, zzaoVar);
            String strF0 = zzawVar2.b(zzgVar, (zzao) arrayList.get(1)).f0();
            zzao zzaoVarB2 = zzawVar2.b(zzgVar, (zzao) arrayList.get(2));
            if (!(zzaoVarB2 instanceof zzae)) {
                md.n(tr.g("Function arguments for Apply are not a list found ", zzaoVarB2.getClass().getCanonicalName()));
                return null;
            }
            if (!strF0.isEmpty()) {
                return zzaoVarB.h(strF0, zzgVar, (ArrayList) ((zzae) zzaoVarB2).m());
            }
            md.n("Function name for apply is undefined");
            return null;
        }
        if (iOrdinal == 15) {
            zzh.a(0, arrayList, zzbk.BREAK.name());
            return zzao.m0;
        }
        if (iOrdinal == 25) {
            return c(zzgVar, arrayList);
        }
        if (iOrdinal == 41) {
            zzh.b(2, arrayList, zzbk.IF.name());
            zzao zzaoVar2 = (zzao) arrayList.get(0);
            zzaw zzawVar3 = zzgVar.f30629b;
            zzaw zzawVar4 = zzgVar.f30629b;
            zzao zzaoVarB3 = zzawVar3.b(zzgVar, zzaoVar2);
            zzao zzaoVarB4 = zzawVar4.b(zzgVar, (zzao) arrayList.get(1));
            zzao zzaoVarB5 = arrayList.size() > 2 ? zzawVar4.b(zzgVar, (zzao) arrayList.get(2)) : null;
            zzao zzaoVar3 = zzao.k0;
            zzao zzaoVarB6 = zzaoVarB3.h0().booleanValue() ? zzgVar.b((zzae) zzaoVarB4) : zzaoVarB5 != null ? zzgVar.b((zzae) zzaoVarB5) : zzaoVar3;
            return true != (zzaoVarB6 instanceof zzag) ? zzaoVar3 : zzaoVarB6;
        }
        if (iOrdinal == 54) {
            return new zzae(arrayList);
        }
        if (iOrdinal == 57) {
            if (arrayList.isEmpty()) {
                return zzao.o0;
            }
            return new zzag("return", zzgVar.f30629b.b(zzgVar, (zzao) z81.e(zzbk.RETURN, 1, arrayList, 0)));
        }
        if (iOrdinal != 19) {
            if (iOrdinal == 20) {
                zzh.b(2, arrayList, zzbk.DEFINE_FUNCTION.name());
                zzan zzanVarC = c(zzgVar, arrayList);
                String str2 = zzanVarC.f30528b;
                if (str2 == null) {
                    zzgVar.e("", zzanVarC);
                    return zzanVarC;
                }
                zzgVar.e(str2, zzanVarC);
                return zzanVarC;
            }
            if (iOrdinal == 60) {
                zzao zzaoVar4 = (zzao) z81.e(zzbk.SWITCH, 3, arrayList, 0);
                zzaw zzawVar5 = zzgVar.f30629b;
                zzaw zzawVar6 = zzgVar.f30629b;
                zzao zzaoVarB7 = zzawVar5.b(zzgVar, zzaoVar4);
                zzao zzaoVarB8 = zzawVar6.b(zzgVar, (zzao) arrayList.get(1));
                zzao zzaoVarB9 = zzawVar6.b(zzgVar, (zzao) arrayList.get(2));
                if (!(zzaoVarB8 instanceof zzae)) {
                    md.n("Malformed SWITCH statement, cases are not a list");
                    return null;
                }
                if (!(zzaoVarB9 instanceof zzae)) {
                    md.n("Malformed SWITCH statement, case statements are not a list");
                    return null;
                }
                zzae zzaeVar = (zzae) zzaoVarB8;
                zzae zzaeVar2 = (zzae) zzaoVarB9;
                boolean z = false;
                for (int i2 = 0; i2 < zzaeVar.o(); i2++) {
                    if (z || zzaoVarB7.equals(zzawVar6.b(zzgVar, zzaeVar.p(i2)))) {
                        zzao zzaoVarB10 = zzawVar6.b(zzgVar, zzaeVar2.p(i2));
                        if (zzaoVarB10 instanceof zzag) {
                            return ((zzag) zzaoVarB10).f30469c.equals("break") ? zzao.k0 : zzaoVarB10;
                        }
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (zzaeVar.o() + 1 == zzaeVar2.o()) {
                    zzao zzaoVarB11 = zzawVar6.b(zzgVar, zzaeVar2.p(zzaeVar.o()));
                    if (zzaoVarB11 instanceof zzag) {
                        String str3 = ((zzag) zzaoVarB11).f30469c;
                        if (str3.equals("return") || str3.equals("continue")) {
                            return zzaoVarB11;
                        }
                    }
                }
                return zzao.k0;
            }
            if (iOrdinal == 61) {
                zzao zzaoVar5 = (zzao) z81.e(zzbk.TERNARY, 3, arrayList, 0);
                zzaw zzawVar7 = zzgVar.f30629b;
                zzaw zzawVar8 = zzgVar.f30629b;
                return zzawVar7.b(zzgVar, zzaoVar5).h0().booleanValue() ? zzawVar8.b(zzgVar, (zzao) arrayList.get(1)) : zzawVar8.b(zzgVar, (zzao) arrayList.get(2));
            }
            switch (iOrdinal) {
                case 11:
                    return zzgVar.c().b(new zzae(arrayList));
                case 12:
                    zzh.a(0, arrayList, zzbk.BREAK.name());
                    return zzao.n0;
                case 13:
                    break;
                default:
                    b(str);
                    throw null;
            }
        }
        if (arrayList.isEmpty()) {
            return zzao.k0;
        }
        zzao zzaoVarB12 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
        return zzaoVarB12 instanceof zzae ? zzgVar.b((zzae) zzaoVarB12) : zzao.k0;
    }
}

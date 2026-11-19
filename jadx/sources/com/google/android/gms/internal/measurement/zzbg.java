package com.google.android.gms.internal.measurement;

import defpackage.md;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbg extends zzav {
    public static zzao c(zzbe zzbeVar, zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar instanceof Iterable) {
            return d(zzbeVar, ((Iterable) zzaoVar).iterator(), zzaoVar2);
        }
        md.n("Non-iterable type in for...of loop.");
        return null;
    }

    public static zzao d(zzbe zzbeVar, Iterator it, zzao zzaoVar) {
        if (it != null) {
            while (it.hasNext()) {
                zzao zzaoVarB = zzbeVar.a((zzao) it.next()).b((zzae) zzaoVar);
                if (zzaoVarB instanceof zzag) {
                    zzag zzagVar = (zzag) zzaoVarB;
                    String str = zzagVar.f30469c;
                    if ("break".equals(str)) {
                        return zzao.k0;
                    }
                    if ("return".equals(str)) {
                        return zzagVar;
                    }
                }
            }
        }
        return zzao.k0;
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        zzbk zzbkVar = zzbk.ADD;
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal == 65) {
            zzao zzaoVar = (zzao) z81.e(zzbk.WHILE, 4, arrayList, 0);
            zzao zzaoVar2 = (zzao) arrayList.get(1);
            zzao zzaoVar3 = (zzao) arrayList.get(2);
            zzao zzaoVar4 = (zzao) arrayList.get(3);
            zzaw zzawVar = zzgVar.f30629b;
            zzaw zzawVar2 = zzgVar.f30629b;
            zzao zzaoVarB = zzawVar.b(zzgVar, zzaoVar4);
            if (zzawVar2.b(zzgVar, zzaoVar3).h0().booleanValue()) {
                zzao zzaoVarB2 = zzgVar.b((zzae) zzaoVarB);
                if (zzaoVarB2 instanceof zzag) {
                    zzag zzagVar = (zzag) zzaoVarB2;
                    String str2 = zzagVar.f30469c;
                    if ("break".equals(str2)) {
                        return zzao.k0;
                    }
                    if ("return".equals(str2)) {
                        return zzagVar;
                    }
                }
            }
            while (zzawVar2.b(zzgVar, zzaoVar).h0().booleanValue()) {
                zzao zzaoVarB3 = zzgVar.b((zzae) zzaoVarB);
                if (zzaoVarB3 instanceof zzag) {
                    zzag zzagVar2 = (zzag) zzaoVarB3;
                    String str3 = zzagVar2.f30469c;
                    if ("break".equals(str3)) {
                        return zzao.k0;
                    }
                    if ("return".equals(str3)) {
                        return zzagVar2;
                    }
                }
                zzgVar.a(zzaoVar2);
            }
            return zzao.k0;
        }
        switch (iOrdinal) {
            case 26:
                if (!(z81.e(zzbk.FOR_IN, 3, arrayList, 0) instanceof zzas)) {
                    md.n("Variable name in FOR_IN must be a string");
                    return null;
                }
                return d(new zzbf(zzgVar, ((zzao) arrayList.get(0)).f0()), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).I(), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(2)));
            case 27:
                if (!(z81.e(zzbk.FOR_IN_CONST, 3, arrayList, 0) instanceof zzas)) {
                    md.n("Variable name in FOR_IN_CONST must be a string");
                    return null;
                }
                return d(new zzbc(zzgVar, ((zzao) arrayList.get(0)).f0()), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).I(), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(2)));
            case 28:
                if (!(z81.e(zzbk.FOR_IN_LET, 3, arrayList, 0) instanceof zzas)) {
                    md.n("Variable name in FOR_IN_LET must be a string");
                    return null;
                }
                return d(new zzbd(zzgVar, ((zzao) arrayList.get(0)).f0()), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)).I(), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(2)));
            case 29:
                zzao zzaoVar5 = (zzao) z81.e(zzbk.FOR_LET, 4, arrayList, 0);
                zzaw zzawVar3 = zzgVar.f30629b;
                zzaw zzawVar4 = zzgVar.f30629b;
                zzao zzaoVarB4 = zzawVar3.b(zzgVar, zzaoVar5);
                if (!(zzaoVarB4 instanceof zzae)) {
                    md.n("Initializer variables in FOR_LET must be an ArrayList");
                    return null;
                }
                zzae zzaeVar = (zzae) zzaoVarB4;
                zzao zzaoVar6 = (zzao) arrayList.get(1);
                zzao zzaoVar7 = (zzao) arrayList.get(2);
                zzao zzaoVarB5 = zzawVar4.b(zzgVar, (zzao) arrayList.get(3));
                zzg zzgVarC = zzgVar.c();
                for (int i2 = 0; i2 < zzaeVar.o(); i2++) {
                    String strF0 = zzaeVar.p(i2).f0();
                    zzgVarC.e(strF0, zzgVar.g(strF0));
                }
                while (zzawVar4.b(zzgVar, zzaoVar6).h0().booleanValue()) {
                    zzao zzaoVarB6 = zzgVar.b((zzae) zzaoVarB5);
                    if (zzaoVarB6 instanceof zzag) {
                        zzag zzagVar3 = (zzag) zzaoVarB6;
                        String str4 = zzagVar3.f30469c;
                        if ("break".equals(str4)) {
                            return zzao.k0;
                        }
                        if ("return".equals(str4)) {
                            return zzagVar3;
                        }
                    }
                    zzg zzgVarC2 = zzgVar.c();
                    for (int i3 = 0; i3 < zzaeVar.o(); i3++) {
                        String strF1 = zzaeVar.p(i3).f0();
                        zzgVarC2.e(strF1, zzgVarC.g(strF1));
                    }
                    zzgVarC2.a(zzaoVar7);
                    zzgVarC = zzgVarC2;
                }
                return zzao.k0;
            case 30:
                if (!(z81.e(zzbk.FOR_OF, 3, arrayList, 0) instanceof zzas)) {
                    md.n("Variable name in FOR_OF must be a string");
                    return null;
                }
                return c(new zzbf(zzgVar, ((zzao) arrayList.get(0)).f0()), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(2)));
            case 31:
                if (!(z81.e(zzbk.FOR_OF_CONST, 3, arrayList, 0) instanceof zzas)) {
                    md.n("Variable name in FOR_OF_CONST must be a string");
                    return null;
                }
                return c(new zzbc(zzgVar, ((zzao) arrayList.get(0)).f0()), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(2)));
            case 32:
                if (!(z81.e(zzbk.FOR_OF_LET, 3, arrayList, 0) instanceof zzas)) {
                    md.n("Variable name in FOR_OF_LET must be a string");
                    return null;
                }
                return c(new zzbd(zzgVar, ((zzao) arrayList.get(0)).f0()), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1)), zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(2)));
            default:
                b(str);
                throw null;
        }
    }
}

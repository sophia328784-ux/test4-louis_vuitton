package com.google.android.gms.internal.measurement;

import com.google.common.base.Function;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class zzqp implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ zzqp f30845b = new zzqp();

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        zzmg zzmgVar = (zzmg) obj;
        zzqu zzquVarG = zzqv.G();
        if (zzmgVar == null) {
            return (zzqv) zzquVarG.v();
        }
        for (zzmi zzmiVar : zzmgVar.E()) {
            zzqw zzqwVarG = zzqx.G();
            String strA = zzmiVar.A();
            zzqwVarG.l();
            ((zzqx) zzqwVarG.f30406c).H(strA);
            int iO = zzmiVar.O();
            int i2 = iO - 1;
            if (iO == 0) {
                throw null;
            }
            if (i2 == 0) {
                long jB = zzmiVar.B();
                zzqwVarG.l();
                ((zzqx) zzqwVarG.f30406c).I(jB);
            } else if (i2 == 1) {
                boolean zC = zzmiVar.C();
                zzqwVarG.l();
                ((zzqx) zzqwVarG.f30406c).J(zC);
            } else if (i2 == 2) {
                double D = zzmiVar.D();
                zzqwVarG.l();
                ((zzqx) zzqwVarG.f30406c).K(D);
            } else if (i2 == 3) {
                String strE = zzmiVar.E();
                zzqwVarG.l();
                ((zzqx) zzqwVarG.f30406c).L(strE);
            } else {
                if (i2 != 4) {
                    md.k("No known flag type");
                    return null;
                }
                zzacr zzacrVarF = zzmiVar.F();
                zzqwVarG.l();
                ((zzqx) zzqwVarG.f30406c).M(zzacrVarF);
            }
            zzqx zzqxVar = (zzqx) zzqwVarG.v();
            zzquVarG.l();
            ((zzqv) zzquVarG.f30406c).M(zzqxVar);
        }
        String strD = zzmgVar.D();
        zzquVarG.l();
        ((zzqv) zzquVarG.f30406c).K(strD);
        String strA2 = zzmgVar.A();
        zzquVarG.l();
        ((zzqv) zzquVarG.f30406c).I(strA2);
        long jF = zzmgVar.F();
        zzquVarG.l();
        ((zzqv) zzquVarG.f30406c).L(jF);
        if (zzmgVar.B()) {
            zzacr zzacrVarC = zzmgVar.C();
            zzquVarG.l();
            ((zzqv) zzquVarG.f30406c).J(zzacrVarC);
        }
        return (zzqv) zzquVarG.v();
    }
}

package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzahn;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes2.dex */
final class zzac extends zzab {
    public final com.google.android.gms.internal.measurement.zzfn g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ zzad f31537h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzac(zzad zzadVar, String str, int i2, com.google.android.gms.internal.measurement.zzfn zzfnVar) {
        super(str, i2);
        this.f31537h = zzadVar;
        this.g = zzfnVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final int a() {
        return this.g.B();
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean b() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zzab
    public final boolean c() {
        return false;
    }

    public final boolean g(Long l, Long l2, com.google.android.gms.internal.measurement.zziu zziuVar, boolean z) {
        boolean z2;
        Boolean boolD;
        Boolean boolF;
        Boolean boolF2;
        Boolean boolF3;
        zzahn.a();
        zzic zzicVar = this.f31537h.f31850a;
        zzal zzalVar = zzicVar.d;
        zzgn zzgnVar = zzicVar.f31845j;
        zzgu zzguVar = zzicVar.f31842f;
        boolean zR = zzalVar.r(this.f31532a, zzfy.D0);
        com.google.android.gms.internal.measurement.zzfn zzfnVar = this.g;
        boolean zE = zzfnVar.E();
        boolean zF = zzfnVar.F();
        boolean zH = zzfnVar.H();
        boolean z3 = zE || zF || zH;
        if (z && !z3) {
            zzic.m(zzguVar);
            zzguVar.n.c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.f31533b), zzfnVar.A() ? Integer.valueOf(zzfnVar.B()) : null);
            return true;
        }
        com.google.android.gms.internal.measurement.zzfh zzfhVarD = zzfnVar.D();
        boolean zF2 = zzfhVarD.F();
        if (!zziuVar.F()) {
            z2 = zH;
            if (!zziuVar.J()) {
                if (!zziuVar.D()) {
                    zzic.m(zzguVar);
                    zzguVar.f31771i.b(zzgnVar.c(zziuVar.C()), "User property has no value, property");
                } else if (zzfhVarD.A()) {
                    String strE = zziuVar.E();
                    com.google.android.gms.internal.measurement.zzfr zzfrVarB = zzfhVarD.B();
                    zzic.m(zzguVar);
                    boolD = zzab.d(zzab.e(strE, zzfrVarB, zzguVar), zF2);
                } else if (!zzfhVarD.C()) {
                    zzic.m(zzguVar);
                    zzguVar.f31771i.b(zzgnVar.c(zziuVar.C()), "No string or number filter defined. property");
                } else if (zzpk.K(zziuVar.E())) {
                    String strE2 = zziuVar.E();
                    com.google.android.gms.internal.measurement.zzfl zzflVarD = zzfhVarD.D();
                    if (zzpk.K(strE2)) {
                        try {
                            boolF = zzab.f(new BigDecimal(strE2), zzflVarD, 0.0d);
                        } catch (NumberFormatException unused) {
                            boolF = null;
                        }
                    } else {
                        boolF = null;
                    }
                    boolD = zzab.d(boolF, zF2);
                } else {
                    zzic.m(zzguVar);
                    zzguVar.f31771i.c("Invalid user property value for Numeric number filter. property, value", zzgnVar.c(zziuVar.C()), zziuVar.E());
                }
                boolD = null;
            } else if (zzfhVarD.C()) {
                double dK = zziuVar.K();
                try {
                    boolF2 = zzab.f(new BigDecimal(dK), zzfhVarD.D(), Math.ulp(dK));
                } catch (NumberFormatException unused2) {
                    boolF2 = null;
                }
                boolD = zzab.d(boolF2, zF2);
            } else {
                zzic.m(zzguVar);
                zzguVar.f31771i.b(zzgnVar.c(zziuVar.C()), "No number filter for double property. property");
                boolD = null;
            }
        } else if (zzfhVarD.C()) {
            z2 = zH;
            try {
                boolF3 = zzab.f(new BigDecimal(zziuVar.G()), zzfhVarD.D(), 0.0d);
            } catch (NumberFormatException unused3) {
                boolF3 = null;
            }
            boolD = zzab.d(boolF3, zF2);
        } else {
            zzic.m(zzguVar);
            zzguVar.f31771i.b(zzgnVar.c(zziuVar.C()), "No number filter for long property. property");
            z2 = zH;
            boolD = null;
        }
        zzic.m(zzguVar);
        zzguVar.n.b(boolD == null ? "null" : boolD, "Property filter result");
        if (boolD == null) {
            return false;
        }
        this.f31534c = Boolean.TRUE;
        if (!z2 || boolD.booleanValue()) {
            if (!z || zzfnVar.E()) {
                this.d = boolD;
            }
            if (boolD.booleanValue() && z3 && zziuVar.A()) {
                long jB = zziuVar.B();
                if (l != null) {
                    jB = l.longValue();
                }
                if (zR && zzfnVar.E() && !zzfnVar.F() && l2 != null) {
                    jB = l2.longValue();
                }
                if (zzfnVar.F()) {
                    this.f31536f = Long.valueOf(jB);
                } else {
                    this.f31535e = Long.valueOf(jB);
                }
            }
        }
        return true;
    }
}

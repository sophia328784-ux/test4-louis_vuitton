package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzax extends zzav {
    public zzax() {
        this.f30573a.add(zzbk.EQUALS);
        this.f30573a.add(zzbk.GREATER_THAN);
        this.f30573a.add(zzbk.GREATER_THAN_EQUALS);
        this.f30573a.add(zzbk.IDENTITY_EQUALS);
        this.f30573a.add(zzbk.IDENTITY_NOT_EQUALS);
        this.f30573a.add(zzbk.LESS_THAN);
        this.f30573a.add(zzbk.LESS_THAN_EQUALS);
        this.f30573a.add(zzbk.NOT_EQUALS);
    }

    public static boolean c(zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar instanceof zzak) {
            zzaoVar = new zzas(zzaoVar.f0());
        }
        if (zzaoVar2 instanceof zzak) {
            zzaoVar2 = new zzas(zzaoVar2.f0());
        }
        if ((zzaoVar instanceof zzas) && (zzaoVar2 instanceof zzas)) {
            return ((zzas) zzaoVar).f30572b.compareTo(((zzas) zzaoVar2).f30572b) < 0;
        }
        double dDoubleValue = zzaoVar.g0().doubleValue();
        double dDoubleValue2 = zzaoVar2.g0().doubleValue();
        if (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2)) {
            return false;
        }
        if (dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) {
            return false;
        }
        return !(dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) && Double.compare(dDoubleValue, dDoubleValue2) < 0;
    }

    public static boolean d(zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar.getClass().equals(zzaoVar2.getClass())) {
            if ((zzaoVar instanceof zzat) || (zzaoVar instanceof zzam)) {
                return true;
            }
            if (zzaoVar instanceof zzah) {
                Double d = ((zzah) zzaoVar).f30493b;
                return (Double.isNaN(d.doubleValue()) || Double.isNaN(zzaoVar2.g0().doubleValue()) || d.doubleValue() != zzaoVar2.g0().doubleValue()) ? false : true;
            }
            if (zzaoVar instanceof zzas) {
                return ((zzas) zzaoVar).f30572b.equals(zzaoVar2.f0());
            }
            if (zzaoVar instanceof zzaf) {
                return Boolean.valueOf(((zzaf) zzaoVar).f30433b).equals(zzaoVar2.h0());
            }
            return zzaoVar == zzaoVar2;
        }
        if (((zzaoVar instanceof zzat) || (zzaoVar instanceof zzam)) && ((zzaoVar2 instanceof zzat) || (zzaoVar2 instanceof zzam))) {
            return true;
        }
        boolean z = zzaoVar instanceof zzah;
        if (z && (zzaoVar2 instanceof zzas)) {
            return d(zzaoVar, new zzah(((zzas) zzaoVar2).g0()));
        }
        boolean z2 = zzaoVar instanceof zzas;
        if (z2 && (zzaoVar2 instanceof zzah)) {
            return d(new zzah(((zzas) zzaoVar).g0()), zzaoVar2);
        }
        if (zzaoVar instanceof zzaf) {
            return d(new zzah(((zzaf) zzaoVar).g0()), zzaoVar2);
        }
        if (zzaoVar2 instanceof zzaf) {
            return d(zzaoVar, new zzah(((zzaf) zzaoVar2).g0()));
        }
        if ((z2 || z) && (zzaoVar2 instanceof zzak)) {
            return d(zzaoVar, new zzas(zzaoVar2.f0()));
        }
        if (!(zzaoVar instanceof zzak)) {
            return false;
        }
        if ((zzaoVar2 instanceof zzas) || (zzaoVar2 instanceof zzah)) {
            return d(new zzas(zzaoVar.f0()), zzaoVar2);
        }
        return false;
    }

    public static boolean e(zzao zzaoVar, zzao zzaoVar2) {
        if (zzaoVar instanceof zzak) {
            zzaoVar = new zzas(zzaoVar.f0());
        }
        if (zzaoVar2 instanceof zzak) {
            zzaoVar2 = new zzas(zzaoVar2.f0());
        }
        return (((zzaoVar instanceof zzas) && (zzaoVar2 instanceof zzas)) || !(Double.isNaN(zzaoVar.g0().doubleValue()) || Double.isNaN(zzaoVar2.g0().doubleValue()))) && !c(zzaoVar2, zzaoVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        boolean zD;
        boolean zD2;
        zzh.a(2, arrayList, zzh.e(str).name());
        zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
        zzao zzaoVarB2 = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
        int iOrdinal = zzh.e(str).ordinal();
        if (iOrdinal != 23) {
            if (iOrdinal == 48) {
                zD2 = d(zzaoVarB, zzaoVarB2);
            } else if (iOrdinal == 42) {
                zD = c(zzaoVarB, zzaoVarB2);
            } else if (iOrdinal != 43) {
                switch (iOrdinal) {
                    case 37:
                        zD = c(zzaoVarB2, zzaoVarB);
                        break;
                    case 38:
                        zD = e(zzaoVarB2, zzaoVarB);
                        break;
                    case 39:
                        zD = zzh.f(zzaoVarB, zzaoVarB2);
                        break;
                    case 40:
                        zD2 = zzh.f(zzaoVarB, zzaoVarB2);
                        break;
                    default:
                        b(str);
                        throw null;
                }
            } else {
                zD = e(zzaoVarB, zzaoVarB2);
            }
            zD = !zD2;
        } else {
            zD = d(zzaoVarB, zzaoVarB2);
        }
        return zD ? zzao.p0 : zzao.q0;
    }
}

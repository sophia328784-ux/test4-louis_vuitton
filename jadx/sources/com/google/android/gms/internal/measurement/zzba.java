package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzba {
    public static zzao a(zzae zzaeVar, zzg zzgVar, ArrayList arrayList, boolean z) {
        zzao zzaoVarC;
        zzh.b(1, arrayList, "reduce");
        zzh.c(2, "reduce", arrayList);
        zzao zzaoVarB = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0));
        if (!(zzaoVarB instanceof zzai)) {
            md.n("Callback should be a method");
            return null;
        }
        if (arrayList.size() == 2) {
            zzaoVarC = zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(1));
            if (zzaoVarC instanceof zzag) {
                md.n("Failed to parse initial value");
                return null;
            }
        } else {
            if (zzaeVar.o() == 0) {
                md.k("Empty array with no initial value error");
                return null;
            }
            zzaoVarC = null;
        }
        zzai zzaiVar = (zzai) zzaoVarB;
        int iO = zzaeVar.o();
        int i2 = z ? 0 : iO - 1;
        int i3 = z ? iO - 1 : 0;
        int i4 = true == z ? 1 : -1;
        if (zzaoVarC == null) {
            zzaoVarC = zzaeVar.p(i2);
            i2 += i4;
        }
        while ((i3 - i2) * i4 >= 0) {
            if (zzaeVar.r(i2)) {
                zzaoVarC = zzaiVar.c(zzgVar, Arrays.asList(zzaoVarC, zzaeVar.p(i2), new zzah(Double.valueOf(i2)), zzaeVar));
                if (zzaoVarC instanceof zzag) {
                    md.k("Reduce operation failed");
                    return null;
                }
                i2 += i4;
            } else {
                i2 += i4;
            }
        }
        return zzaoVarC;
    }

    public static zzae b(zzae zzaeVar, zzg zzgVar, zzan zzanVar, Boolean bool, Boolean bool2) {
        zzae zzaeVar2 = new zzae();
        Iterator itN = zzaeVar.n();
        while (itN.hasNext()) {
            int iIntValue = ((Integer) itN.next()).intValue();
            if (zzaeVar.r(iIntValue)) {
                zzao zzaoVarC = zzanVar.c(zzgVar, Arrays.asList(zzaeVar.p(iIntValue), new zzah(Double.valueOf(iIntValue)), zzaeVar));
                if (zzaoVarC.h0().equals(bool)) {
                    break;
                }
                if (bool2 == null || zzaoVarC.h0().equals(bool2)) {
                    zzaeVar2.q(iIntValue, zzaoVarC);
                }
            }
        }
        return zzaeVar2;
    }
}

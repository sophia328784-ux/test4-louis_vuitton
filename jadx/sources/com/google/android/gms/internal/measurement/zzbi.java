package com.google.android.gms.internal.measurement;

import defpackage.fc;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbi extends zzav {
    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao a(String str, zzg zzgVar, ArrayList arrayList) {
        if (str == null || str.isEmpty() || !zzgVar.d(str)) {
            md.n(tr.g("Command not found: ", str));
            return null;
        }
        zzao zzaoVarG = zzgVar.g(str);
        if (zzaoVarG instanceof zzai) {
            return ((zzai) zzaoVarG).c(zzgVar, arrayList);
        }
        md.n(fc.h("Function ", str, " is not defined"));
        return null;
    }
}

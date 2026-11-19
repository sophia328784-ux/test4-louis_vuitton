package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public interface zzak {
    static zzao f(zzak zzakVar, zzas zzasVar, zzg zzgVar, ArrayList arrayList) {
        String str = zzasVar.f30572b;
        if (zzakVar.i(str)) {
            zzao zzaoVarA = zzakVar.a(str);
            if (zzaoVarA instanceof zzai) {
                return ((zzai) zzaoVarA).c(zzgVar, arrayList);
            }
            md.n(str.concat(" is not a function"));
            return null;
        }
        if ("hasOwnProperty".equals(str)) {
            zzh.a(1, arrayList, "hasOwnProperty");
            return zzakVar.i(zzgVar.f30629b.b(zzgVar, (zzao) arrayList.get(0)).f0()) ? zzao.p0 : zzao.q0;
        }
        md.n("Object has no function ".concat(str));
        return null;
    }

    zzao a(String str);

    void b(String str, zzao zzaoVar);

    boolean i(String str);
}

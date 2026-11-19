package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzex extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 3);
        Preconditions.a(zzkkVarArr[1] instanceof zzkv);
        Preconditions.a(zzkkVarArr[2] instanceof zzkr);
        zzkk zzkkVar = zzkkVarArr[0];
        String str = ((zzkv) zzkkVarArr[1]).f30188b;
        ArrayList arrayList = ((zzkr) zzkkVarArr[2]).f30180b;
        Map map = zzkkVar.f30163a;
        if (map != null && map.containsKey(str)) {
            zzkk zzkkVarB = zzkkVar.b(str);
            if (zzkkVarB instanceof zzkn) {
                return ((zzkn) zzkkVarB).f30169b.a(zzbvVar, (zzkk[]) arrayList.toArray(new zzkk[arrayList.size()]));
            }
            md.n(fc.h("Apply TypeError: ", str, " is not a function"));
            return null;
        }
        if (!zzkkVar.g(str)) {
            md.n(fc.h("Apply TypeError: object has no ", str, " property"));
            return null;
        }
        zzdi zzdiVarA = zzkkVar.a(str);
        arrayList.add(0, zzkkVar);
        return zzdiVarA.a(zzbvVar, (zzkk[]) arrayList.toArray(new zzkk[arrayList.size()]));
    }
}

package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdz extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        if (length == 2) {
            z = true;
        } else if (length == 3) {
            z = true;
            length = 3;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        int iA = (int) zzdj.a(zzkkVarArr[1]);
        int iMax = iA < 0 ? Math.max(zzkrVar.f30180b.size() + iA, 0) : Math.min(iA, zzkrVar.f30180b.size());
        ArrayList arrayList = zzkrVar.f30180b;
        int size = arrayList.size();
        if (length == 3) {
            int iA2 = (int) zzdj.a(zzkkVarArr[2]);
            size = iA2 < 0 ? Math.max(arrayList.size() + iA2, 0) : Math.min(iA2, arrayList.size());
        }
        return new zzkr(new ArrayList(arrayList.subList(iMax, Math.max(iMax, size))));
    }
}

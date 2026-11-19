package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfc extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        ArrayList arrayList = new ArrayList();
        for (zzkk zzkkVar : zzkkVarArr) {
            boolean z = true;
            if ((zzkkVar instanceof zzko) && zzkkVar != zzko.f30172h && zzkkVar != zzko.g) {
                z = false;
            }
            Preconditions.a(z);
            arrayList.add(zzkkVar);
        }
        return new zzkr(arrayList);
    }
}

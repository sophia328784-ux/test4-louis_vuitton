package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfm implements zzdi {
    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        ArrayList arrayList = new ArrayList(zzkkVarArr.length);
        for (zzkk zzkkVar : zzkkVarArr) {
            arrayList.add(zzkkVar);
        }
        return new zzkr(arrayList);
    }
}

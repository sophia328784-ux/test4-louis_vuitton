package com.google.android.gms.internal.gtm;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdq extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        if (length == 1) {
            z = true;
        } else if (length == 2) {
            length = 2;
            z = true;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        ArrayList<zzkk> arrayList = ((zzkr) zzkkVarArr[0]).f30180b;
        zzkk zzkkVar = length < 2 ? zzko.f30172h : zzkkVarArr[1];
        zzko zzkoVar = zzko.f30172h;
        String strD = zzkkVar == zzkoVar ? "," : zzdj.d(zzkkVar);
        ArrayList arrayList2 = new ArrayList();
        for (zzkk zzkkVar2 : arrayList) {
            if (zzkkVar2 == zzko.g || zzkkVar2 == zzkoVar) {
                arrayList2.add("");
            } else {
                arrayList2.add(zzdj.d(zzkkVar2));
            }
        }
        return new zzkv(TextUtils.join(strD, arrayList2));
    }
}

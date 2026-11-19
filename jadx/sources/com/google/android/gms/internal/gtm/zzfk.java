package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfk extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        if (length == 2) {
            z = true;
        } else if (length == 3) {
            length = 3;
            z = true;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[1] instanceof zzkr);
        if (length == 3) {
            Preconditions.a(zzkkVarArr[2] instanceof zzkr);
        }
        ArrayList arrayList = new ArrayList();
        if (zzdj.g(zzkkVarArr[0])) {
            arrayList = ((zzkr) zzkkVarArr[1]).f30180b;
        } else if (length > 2) {
            arrayList = ((zzkr) zzkkVarArr[2]).f30180b;
        }
        zzko zzkoVarE = zzkw.e(zzbvVar, arrayList);
        return zzkw.f(zzkoVarE) ? zzkoVarE : zzko.f30172h;
    }
}

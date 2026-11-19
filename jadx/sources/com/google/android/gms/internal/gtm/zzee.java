package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Collections;

/* JADX INFO: loaded from: classes2.dex */
public final class zzee extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        zzkn zzknVar;
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
        zzkr zzkrVar = (zzkr) zzkkVarArr[0];
        if (length == 2) {
            Preconditions.a(zzkkVarArr[1] instanceof zzkn);
            zzknVar = (zzkn) zzkkVarArr[1];
        } else {
            zzknVar = new zzkn(new zzec());
        }
        Collections.sort(zzkrVar.f30180b, new zzeb(zzknVar, zzbvVar));
        return zzkkVarArr[0];
    }
}

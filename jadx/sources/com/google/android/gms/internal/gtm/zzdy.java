package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdy extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        zzko zzkoVar = zzko.f30172h;
        ArrayList arrayList = ((zzkr) zzkkVarArr[0]).f30180b;
        return !arrayList.isEmpty() ? (zzkk) arrayList.remove(0) : zzkoVar;
    }
}

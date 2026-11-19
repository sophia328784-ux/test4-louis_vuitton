package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class zzdt extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        ArrayList arrayList = ((zzkr) zzkkVarArr[0]).f30180b;
        return !arrayList.isEmpty() ? (zzkk) arrayList.remove(arrayList.size() - 1) : zzko.f30172h;
    }
}

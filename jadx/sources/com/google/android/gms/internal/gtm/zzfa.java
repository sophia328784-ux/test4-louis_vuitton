package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfa extends zzdk {
    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkr);
        Iterator it = ((zzkr) zzkkVarArr[0]).f30180b.iterator();
        while (it.hasNext()) {
            zzkk zzkkVarC = zzkw.c(zzbvVar, (zzkk) it.next());
            if ((zzkkVarC instanceof zzko) && (zzkkVarC == zzko.f30170e || zzkkVarC == zzko.f30171f || ((zzko) zzkkVarC).f30174c)) {
                return zzkkVarC;
            }
        }
        return zzko.f30172h;
    }
}

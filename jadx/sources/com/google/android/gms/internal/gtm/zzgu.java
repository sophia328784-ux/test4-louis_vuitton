package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgu extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzgt f30066a;

    public zzgu(zzgt zzgtVar) {
        this.f30066a = zzgtVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        HashMap map = new HashMap();
        if (length >= 2 && (zzkkVar = zzkkVarArr[1]) != zzko.f30172h) {
            Preconditions.a(zzkkVar instanceof zzks);
            for (Map.Entry entry : ((zzks) zzkkVarArr[1]).f30163a.entrySet()) {
                Preconditions.k(!(entry.getValue() instanceof zzkt));
                Preconditions.k(!zzkw.f((zzkk) entry.getValue()));
                map.put((String) entry.getKey(), ((zzkk) entry.getValue()).c());
            }
        }
        return zzkw.b(this.f30066a.a(str, map));
    }
}

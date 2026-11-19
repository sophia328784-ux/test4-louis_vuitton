package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.md;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfh implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static zzbt f30064a;

    public zzfh(zzbt zzbtVar) {
        f30064a = zzbtVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 1);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        zzbt zzbtVar = f30064a;
        String str = ((zzkv) zzkkVarArr[0]).f30188b;
        HashSet hashSet = zzbtVar.f29999h;
        if (hashSet.contains(str)) {
            md.k(fc.i("Macro cycle detected.  Current macro reference: ", str, ". Previous macro references: ", hashSet.toString()));
            return null;
        }
        zzbtVar.f30000i = 0;
        return zzbtVar.e(str);
    }
}

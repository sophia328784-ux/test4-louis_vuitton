package com.google.android.gms.internal.gtm;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhw extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbr f30091a;

    public zzhw(zzbr zzbrVar) {
        this.f30091a = zzbrVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        int length = zzkkVarArr.length;
        Preconditions.a(length > 0);
        Object obj = this.f30091a.d0().c().get(zzdj.d(zzkkVarArr[0]));
        Object obj2 = obj;
        obj2 = obj;
        if (obj == null && length > 1) {
            obj2 = zzkkVarArr[1];
        }
        return zzkw.b(obj2);
    }
}

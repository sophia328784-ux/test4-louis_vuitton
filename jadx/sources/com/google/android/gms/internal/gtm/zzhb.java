package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhb implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30076a;

    public zzhb(Context context) {
        this.f30076a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        return new zzkv(this.f30076a.getPackageName());
    }
}

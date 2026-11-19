package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhc implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30077a;

    public zzhc(Context context) {
        this.f30077a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        try {
            Context context = this.f30077a;
            PackageManager packageManager = context.getPackageManager();
            return new zzkv(packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0)).toString());
        } catch (PackageManager.NameNotFoundException unused) {
            return new zzkv("");
        }
    }
}

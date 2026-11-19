package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhe implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30079a;

    public zzhe(Context context) {
        Preconditions.h(context);
        this.f30079a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Context context = this.f30079a;
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        try {
            return new zzkv(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException e2) {
            context.getPackageName();
            e2.toString();
            zzbg.a();
            return zzko.f30172h;
        }
    }
}

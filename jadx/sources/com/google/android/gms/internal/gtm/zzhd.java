package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhd implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30078a;

    public zzhd(Context context) {
        Preconditions.h(context);
        this.f30078a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Context context = this.f30078a;
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        try {
            return new zzkm(Double.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
        } catch (PackageManager.NameNotFoundException e2) {
            context.getPackageName();
            e2.getMessage();
            zzbg.a();
            return zzko.f30172h;
        }
    }
}

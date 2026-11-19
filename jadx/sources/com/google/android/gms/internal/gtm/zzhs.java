package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhs implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30090a;

    public zzhs(Context context) {
        Preconditions.h(context);
        this.f30090a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        zzkk zzkkVar;
        Preconditions.a(zzkkVarArr != null);
        String strD = null;
        if (zzkkVarArr.length > 0 && (zzkkVar = zzkkVarArr[0]) != zzko.f30172h) {
            strD = zzdj.d(zzkw.c(zzbvVar, zzkkVar));
        }
        Context context = this.f30090a;
        if (zzbf.f29972a == null) {
            synchronized (zzbf.class) {
                try {
                    if (zzbf.f29972a == null) {
                        SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                        if (sharedPreferences != null) {
                            zzbf.f29972a = sharedPreferences.getString(Payload.RFR, "");
                        } else {
                            zzbf.f29972a = "";
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String strA = zzbf.a(zzbf.f29972a, strD);
        return strA != null ? new zzkv(strA) : zzko.f30172h;
    }
}

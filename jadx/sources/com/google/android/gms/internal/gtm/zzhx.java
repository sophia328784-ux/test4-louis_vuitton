package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhx implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30092a;

    public zzhx(Context context) {
        Preconditions.h(context);
        this.f30092a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        String string = Settings.Secure.getString(this.f30092a.getContentResolver(), "android_id");
        return string != null ? new zzkv(string) : zzko.f30172h;
    }
}

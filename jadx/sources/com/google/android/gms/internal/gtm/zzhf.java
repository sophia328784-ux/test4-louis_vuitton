package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.telephony.TelephonyManager;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhf implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30080a;

    public zzhf(Context context) {
        Preconditions.h(context);
        this.f30080a = context;
    }

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        String networkOperatorName;
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        TelephonyManager telephonyManager = (TelephonyManager) this.f30080a.getSystemService("phone");
        zzko zzkoVar = zzko.f30172h;
        return (telephonyManager == null || (networkOperatorName = telephonyManager.getNetworkOperatorName()) == null) ? zzkoVar : new zzkv(networkOperatorName);
    }
}

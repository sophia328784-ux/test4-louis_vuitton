package com.google.android.gms.internal.gtm;

import android.os.Build;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhm implements zzdi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f30086a = Build.MANUFACTURER;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30087b = Build.MODEL;

    @Override // com.google.android.gms.internal.gtm.zzdi
    public final zzkk a(zzbv zzbvVar, zzkk... zzkkVarArr) {
        Preconditions.a(zzkkVarArr != null);
        Preconditions.a(zzkkVarArr.length == 0);
        String strH = this.f30087b;
        String str = this.f30086a;
        if (!strH.startsWith(str) && !str.equals("unknown")) {
            strH = tr.h(str, " ", strH);
        }
        return new zzkv(strH);
    }
}

package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.wrappers.PackageManagerWrapper;
import com.google.android.gms.common.wrappers.Wrappers;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f31817a;

    public zzhk(zzpg zzpgVar) {
        this.f31817a = zzpgVar.l;
    }

    public final boolean a() {
        zzic zzicVar = this.f31817a;
        try {
            PackageManagerWrapper packageManagerWrapperA = Wrappers.a(zzicVar.f31838a);
            if (packageManagerWrapperA != null) {
                return packageManagerWrapperA.b(128, "com.android.vending").versionCode >= 80837300;
            }
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.a("Failed to get PackageManager for Install Referrer Play Store compatibility check");
            return false;
        } catch (Exception e2) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.n.b(e2, "Failed to retrieve Play Store version for Install Referrer");
            return false;
        }
    }
}

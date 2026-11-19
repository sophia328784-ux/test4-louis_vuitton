package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzhj implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f31815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzhk f31816c;

    public zzhj(zzhk zzhkVar, String str) {
        Objects.requireNonNull(zzhkVar);
        this.f31816c = zzhkVar;
        this.f31815b = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzhk zzhkVar = this.f31816c;
        if (iBinder == null) {
            zzgu zzguVar = zzhkVar.f31817a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i2 = com.google.android.gms.internal.measurement.zzbr.f30587a;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            com.google.android.gms.internal.measurement.zzbs zzbqVar = iInterfaceQueryLocalInterface instanceof com.google.android.gms.internal.measurement.zzbs ? (com.google.android.gms.internal.measurement.zzbs) iInterfaceQueryLocalInterface : new com.google.android.gms.internal.measurement.zzbq(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            zzic zzicVar = zzhkVar.f31817a;
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.n.a("Install Referrer Service connected");
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new zzhi(this, zzbqVar, this));
        } catch (RuntimeException e2) {
            zzgu zzguVar3 = zzhkVar.f31817a.f31842f;
            zzic.m(zzguVar3);
            zzguVar3.f31771i.b(e2, "Exception occurred while calling Install Referrer API");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzgu zzguVar = this.f31816c.f31817a.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.a("Install Referrer Service disconnected");
    }
}

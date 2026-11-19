package com.google.android.gms.internal.gtm;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tagmanager.zzq;

/* JADX INFO: loaded from: classes2.dex */
public final class zziq extends zzdk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzq f30099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzbr f30100b;

    public zziq(zzq zzqVar, zzbr zzbrVar) {
        this.f30099a = zzqVar;
        this.f30100b = zzbrVar;
    }

    @Override // com.google.android.gms.internal.gtm.zzdk
    public final zzkk b(zzbv zzbvVar, zzkk... zzkkVarArr) {
        boolean z;
        int length = zzkkVarArr.length;
        boolean z2 = true;
        if (length == 1) {
            z = true;
        } else if (length == 2) {
            length = 2;
            z = true;
        } else {
            z = false;
        }
        Preconditions.a(z);
        Preconditions.a(zzkkVarArr[0] instanceof zzkv);
        zzkk zzkkVar = length > 1 ? zzkkVarArr[1] : zzko.f30172h;
        zzko zzkoVar = zzko.f30172h;
        if (zzkkVar != zzkoVar && !(zzkkVar instanceof zzks)) {
            z2 = false;
        }
        Preconditions.a(z2);
        zzar zzarVarD0 = this.f30100b.d0();
        try {
            this.f30099a.J(zzarVarD0.d, ((zzkv) zzkkVarArr[0]).f30188b, zzkkVar != zzkoVar ? zzkw.a(((zzks) zzkkVar).f30163a) : null, zzarVarD0.f29962c.getTime());
        } catch (RemoteException e2) {
            "Error calling measurement proxy:".concat(String.valueOf(e2.getMessage()));
            zzbg.a();
        }
        return zzko.f30172h;
    }
}

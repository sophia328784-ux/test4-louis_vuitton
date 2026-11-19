package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zabm implements Runnable {
    final /* synthetic */ ConnectionResult zaa;
    final /* synthetic */ zabn zab;

    public zabm(zabn zabnVar, ConnectionResult connectionResult) {
        this.zaa = connectionResult;
        Objects.requireNonNull(zabnVar);
        this.zab = zabnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IAccountAccessor iAccountAccessor;
        zabn zabnVar = this.zab;
        GoogleApiManager googleApiManager = zabnVar.f29084f;
        Api.Client client = zabnVar.f29080a;
        zabk zabkVar = (zabk) googleApiManager.f29034k.get(zabnVar.f29081b);
        if (zabkVar == null) {
            return;
        }
        if (!this.zaa.W1()) {
            zabkVar.m(this.zaa, null);
            return;
        }
        zabnVar.f29083e = true;
        if (client.g()) {
            if (!zabnVar.f29083e || (iAccountAccessor = zabnVar.f29082c) == null) {
                return;
            }
            client.i(iAccountAccessor, zabnVar.d);
            return;
        }
        try {
            client.i(null, client.h());
        } catch (SecurityException unused) {
            this.zab.f29080a.a("Failed to get service from broker.");
            zabkVar.m(new ConnectionResult(10), null);
        }
    }
}

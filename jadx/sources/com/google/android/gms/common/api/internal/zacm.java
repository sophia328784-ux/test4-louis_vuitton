package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.internal.zak;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zacm extends com.google.android.gms.signin.internal.zac implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    public static final Api.AbstractClientBuilder o = com.google.android.gms.signin.zad.f32065a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f29105b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Api.AbstractClientBuilder f29106j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Set f29107k;
    public final ClientSettings l;
    public com.google.android.gms.signin.zae m;
    public zacl n;

    public zacm(Context context, Handler handler, ClientSettings clientSettings) {
        this.f29104a = context;
        this.f29105b = handler;
        Preconditions.i(clientSettings, "ClientSettings must not be null");
        this.l = clientSettings;
        this.f29107k = clientSettings.f29165b;
        this.f29106j = o;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.m.k(this);
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        this.n.b(connectionResult);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        zabn zabnVar = (zabn) this.n;
        zabk zabkVar = (zabk) zabnVar.f29084f.f29034k.get(zabnVar.f29081b);
        if (zabkVar != null) {
            if (zabkVar.p) {
                zabkVar.l(new ConnectionResult(17));
            } else {
                zabkVar.onConnectionSuspended(i2);
            }
        }
    }

    @Override // com.google.android.gms.signin.internal.zac, com.google.android.gms.signin.internal.zae
    public final void z(zak zakVar) {
        this.f29105b.post(new zack(this, zakVar));
    }
}

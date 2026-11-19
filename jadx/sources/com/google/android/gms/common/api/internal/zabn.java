package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.IAccountAccessor;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zabn implements BaseGmsClient.ConnectionProgressReportCallbacks, zacl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Api.Client f29080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ApiKey f29081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IAccountAccessor f29082c;
    public Set d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f29083e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ GoogleApiManager f29084f;

    public zabn(GoogleApiManager googleApiManager, Api.Client client, ApiKey apiKey) {
        Objects.requireNonNull(googleApiManager);
        this.f29084f = googleApiManager;
        this.f29082c = null;
        this.d = null;
        this.f29083e = false;
        this.f29080a = client;
        this.f29081b = apiKey;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
    public final void a(ConnectionResult connectionResult) {
        this.f29084f.o.post(new zabm(this, connectionResult));
    }

    @Override // com.google.android.gms.common.api.internal.zacl
    public final void b(ConnectionResult connectionResult) {
        zabk zabkVar = (zabk) this.f29084f.f29034k.get(this.f29081b);
        if (zabkVar != null) {
            zabkVar.l(connectionResult);
        }
    }
}

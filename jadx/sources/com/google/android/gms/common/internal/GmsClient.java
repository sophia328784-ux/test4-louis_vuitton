package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import defpackage.md;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class GmsClient<T extends IInterface> extends BaseGmsClient<T> implements Api.Client, zam {
    public final ClientSettings A;
    public final Set B;
    public final Account C;

    /* JADX WARN: Illegal instructions before constructor call */
    public GmsClient(Context context, Looper looper, int i2, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        GmsClientSupervisor gmsClientSupervisorA = GmsClientSupervisor.a(context);
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f28961e;
        Preconditions.h(connectionCallbacks);
        Preconditions.h(onConnectionFailedListener);
        super(context, looper, gmsClientSupervisorA, googleApiAvailability, i2, new zak(connectionCallbacks), new zal(onConnectionFailedListener), clientSettings.g);
        this.A = clientSettings;
        this.C = clientSettings.f29164a;
        Set set = clientSettings.f29166c;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (!set.contains((Scope) it.next())) {
                md.k("Expanding scopes is not permitted, use implied scopes instead");
                throw null;
            }
        }
        this.B = set;
    }

    @Override // com.google.android.gms.common.api.Api.Client
    public final Set h() {
        return g() ? this.B : Collections.EMPTY_SET;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Account q() {
        return this.C;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Executor s() {
        return null;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Set u() {
        return this.B;
    }
}

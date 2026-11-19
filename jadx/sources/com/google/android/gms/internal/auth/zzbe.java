package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.auth.api.AuthProxyOptions;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.zae;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbe extends GmsClient {
    public final Bundle D;

    public zzbe(Context context, Looper looper, ClientSettings clientSettings, AuthProxyOptions authProxyOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 16, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.D = new Bundle();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean A() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean g() {
        ClientSettings clientSettings = this.A;
        Account account = clientSettings.f29164a;
        if (TextUtils.isEmpty(account != null ? account.name : null)) {
            return false;
        }
        Api api = AuthProxy.f28696a;
        Set set = clientSettings.f29165b;
        zae zaeVar = (zae) clientSettings.d.get(api);
        if (zaeVar != null) {
            Set set2 = zaeVar.f29223a;
            if (!set2.isEmpty()) {
                HashSet hashSet = new HashSet(set);
                hashSet.addAll(set2);
                set = hashSet;
            }
        }
        return !set.isEmpty();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int l() {
        return 12451000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
        return iInterfaceQueryLocalInterface instanceof zzbh ? (zzbh) iInterfaceQueryLocalInterface : new zzbh(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle t() {
        return this.D;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String w() {
        return "com.google.android.gms.auth.api.internal.IAuthService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String x() {
        return "com.google.android.gms.auth.service.START";
    }
}

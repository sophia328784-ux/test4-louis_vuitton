package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.internal.Storage;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.zacm;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaw;

/* JADX INFO: loaded from: classes2.dex */
public class SignInClientImpl extends GmsClient<zaf> implements com.google.android.gms.signin.zae {
    public final boolean D;
    public final ClientSettings E;
    public final Bundle F;
    public final Integer G;

    public SignInClientImpl(Context context, Looper looper, boolean z, ClientSettings clientSettings, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 44, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.D = true;
        this.E = clientSettings;
        this.F = bundle;
        this.G = clientSettings.f29170i;
    }

    @Override // com.google.android.gms.signin.zae
    public final void f() {
        d(new BaseGmsClient.LegacyClientCallbackAdapter(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean g() {
        return this.D;
    }

    @Override // com.google.android.gms.signin.zae
    public final void k(zacm zacmVar) {
        try {
            Account account = this.E.f29164a;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
            GoogleSignInAccount googleSignInAccountB = "<<default account>>".equals(account.name) ? Storage.a(this.d).b() : null;
            Integer num = this.G;
            Preconditions.h(num);
            zaw zawVar = new zaw(account, num.intValue(), googleSignInAccountB);
            zaf zafVar = (zaf) v();
            zai zaiVar = new zai(1, zawVar);
            Parcel parcelObtain = Parcel.obtain();
            parcelObtain.writeInterfaceToken(zafVar.f29615b);
            int i2 = com.google.android.gms.internal.base.zac.f29616a;
            parcelObtain.writeInt(1);
            zaiVar.writeToParcel(parcelObtain, 0);
            parcelObtain.writeStrongBinder(zacmVar);
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                zafVar.f29614a.transact(12, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
            } finally {
                parcelObtain.recycle();
                parcelObtain2.recycle();
            }
        } catch (RemoteException e2) {
            try {
                zacmVar.z(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e2);
            }
        }
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
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return iInterfaceQueryLocalInterface instanceof zaf ? (zaf) iInterfaceQueryLocalInterface : new zaf(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle t() {
        ClientSettings clientSettings = this.E;
        boolean zEquals = this.d.getPackageName().equals(clientSettings.f29168f);
        Bundle bundle = this.F;
        if (!zEquals) {
            bundle.putString("com.google.android.gms.signin.internal.realClientPackageName", clientSettings.f29168f);
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String w() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String x() {
        return "com.google.android.gms.signin.service.START";
    }
}

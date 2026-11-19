package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzt;
import com.google.android.gms.signin.internal.zak;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zack implements Runnable {
    final /* synthetic */ zak zaa;
    final /* synthetic */ zacm zab;

    public zack(zacm zacmVar, zak zakVar) {
        this.zaa = zakVar;
        Objects.requireNonNull(zacmVar);
        this.zab = zacmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IAccountAccessor zztVar;
        zacm zacmVar = this.zab;
        zak zakVar = this.zaa;
        zacmVar.getClass();
        ConnectionResult connectionResult = zakVar.f32064c;
        if (connectionResult.W1()) {
            com.google.android.gms.common.internal.zay zayVar = zakVar.d;
            Preconditions.h(zayVar);
            ConnectionResult connectionResult2 = zayVar.d;
            if (!connectionResult2.W1()) {
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(String.valueOf(connectionResult2)), new Exception());
                ((zabn) zacmVar.n).b(connectionResult2);
                zacmVar.m.disconnect();
                return;
            }
            zacl zaclVar = zacmVar.n;
            IBinder iBinder = zayVar.f29241c;
            if (iBinder == null) {
                zztVar = null;
            } else {
                int i2 = IAccountAccessor.Stub.f29189a;
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
                zztVar = iInterfaceQueryLocalInterface instanceof IAccountAccessor ? (IAccountAccessor) iInterfaceQueryLocalInterface : new zzt(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }
            Set set = zacmVar.f29107k;
            zabn zabnVar = (zabn) zaclVar;
            zabnVar.getClass();
            if (zztVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                zabnVar.b(new ConnectionResult(4));
            } else {
                zabnVar.f29082c = zztVar;
                zabnVar.d = set;
                if (zabnVar.f29083e) {
                    zabnVar.f29080a.i(zztVar, set);
                }
            }
        } else {
            ((zabn) zacmVar.n).b(connectionResult);
        }
        zacmVar.m.disconnect();
    }
}

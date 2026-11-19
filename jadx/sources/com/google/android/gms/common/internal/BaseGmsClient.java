package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.AttributionSource;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.auth.blockstore.restorecredential.internal.RestoreCredentialClientImpl;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import defpackage.v7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseGmsClient<T extends IInterface> {
    public static final Feature[] z = new Feature[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzs f29153c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GmsClientSupervisor f29154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GoogleApiAvailabilityLight f29155f;
    public final Handler g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public IGmsServiceBroker f29158j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ConnectionProgressReportCallbacks f29159k;
    public IInterface l;
    public zze n;
    public final BaseConnectionCallbacks p;
    public final BaseOnConnectionFailedListener q;
    public final int r;
    public final String s;
    public volatile String t;
    public volatile AttributionSourceWrapper u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile String f29152b = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f29156h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f29157i = new Object();
    public final ArrayList m = new ArrayList();
    public int o = 1;
    public ConnectionResult v = null;
    public boolean w = false;
    public volatile zzj x = null;
    public final AtomicInteger y = new AtomicInteger(0);

    public interface BaseConnectionCallbacks {
        void a();

        void onConnectionSuspended(int i2);
    }

    public interface BaseOnConnectionFailedListener {
        void onConnectionFailed(ConnectionResult connectionResult);
    }

    public interface ConnectionProgressReportCallbacks {
        void a(ConnectionResult connectionResult);
    }

    public class LegacyClientCallbackAdapter implements ConnectionProgressReportCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ BaseGmsClient f29160a;

        public LegacyClientCallbackAdapter(BaseGmsClient baseGmsClient) {
            java.util.Objects.requireNonNull(baseGmsClient);
            this.f29160a = baseGmsClient;
        }

        @Override // com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks
        public final void a(ConnectionResult connectionResult) {
            boolean zW1 = connectionResult.W1();
            BaseGmsClient baseGmsClient = this.f29160a;
            if (zW1) {
                baseGmsClient.i(null, baseGmsClient.u());
                return;
            }
            BaseOnConnectionFailedListener baseOnConnectionFailedListener = baseGmsClient.q;
            if (baseOnConnectionFailedListener != null) {
                baseOnConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    public interface SignOutCallbacks {
        void a();
    }

    public BaseGmsClient(Context context, Looper looper, GmsClientSupervisor gmsClientSupervisor, GoogleApiAvailabilityLight googleApiAvailabilityLight, int i2, BaseConnectionCallbacks baseConnectionCallbacks, BaseOnConnectionFailedListener baseOnConnectionFailedListener, String str) {
        Preconditions.i(context, "Context must not be null");
        this.d = context;
        Preconditions.i(looper, "Looper must not be null");
        Preconditions.i(gmsClientSupervisor, "Supervisor must not be null");
        this.f29154e = gmsClientSupervisor;
        Preconditions.i(googleApiAvailabilityLight, "API availability must not be null");
        this.f29155f = googleApiAvailabilityLight;
        this.g = new zzb(this, looper);
        this.r = i2;
        this.p = baseConnectionCallbacks;
        this.q = baseOnConnectionFailedListener;
        this.s = str;
    }

    public boolean A() {
        return this instanceof RestoreCredentialClientImpl;
    }

    public final /* synthetic */ boolean B(int i2, int i3, IInterface iInterface) {
        synchronized (this.f29156h) {
            try {
                if (this.o != i2) {
                    return false;
                }
                C(i3, iInterface);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void C(int i2, IInterface iInterface) {
        zzs zzsVar;
        Preconditions.a((i2 == 4) == (iInterface != null));
        synchronized (this.f29156h) {
            try {
                this.o = i2;
                this.l = iInterface;
                Bundle bundle = null;
                if (i2 == 1) {
                    zze zzeVar = this.n;
                    if (zzeVar != null) {
                        GmsClientSupervisor gmsClientSupervisor = this.f29154e;
                        String str = this.f29153c.f29278a;
                        Preconditions.h(str);
                        String str2 = this.f29153c.f29279b;
                        if (this.s == null) {
                            this.d.getClass();
                        }
                        boolean z2 = this.f29153c.f29280c;
                        gmsClientSupervisor.getClass();
                        gmsClientSupervisor.c(new zzn(str, str2, 4225, z2), zzeVar);
                        this.n = null;
                    }
                } else if (i2 == 2 || i2 == 3) {
                    zze zzeVar2 = this.n;
                    if (zzeVar2 != null && (zzsVar = this.f29153c) != null) {
                        new StringBuilder(String.valueOf(zzsVar.f29278a).length() + 70 + String.valueOf(zzsVar.f29279b).length());
                        GmsClientSupervisor gmsClientSupervisor2 = this.f29154e;
                        String str3 = this.f29153c.f29278a;
                        Preconditions.h(str3);
                        String str4 = this.f29153c.f29279b;
                        if (this.s == null) {
                            this.d.getClass();
                        }
                        boolean z3 = this.f29153c.f29280c;
                        gmsClientSupervisor2.getClass();
                        gmsClientSupervisor2.c(new zzn(str3, str4, 4225, z3), zzeVar2);
                        this.y.incrementAndGet();
                    }
                    zze zzeVar3 = new zze(this, this.y.get());
                    this.n = zzeVar3;
                    zzs zzsVar2 = new zzs("com.google.android.gms", x(), false, 4225, y());
                    this.f29153c = zzsVar2;
                    if (zzsVar2.f29280c && l() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f29153c.f29278a)));
                    }
                    GmsClientSupervisor gmsClientSupervisor3 = this.f29154e;
                    String str5 = this.f29153c.f29278a;
                    Preconditions.h(str5);
                    String str6 = this.f29153c.f29279b;
                    String name = this.s;
                    if (name == null) {
                        name = this.d.getClass().getName();
                    }
                    ConnectionResult connectionResultB = gmsClientSupervisor3.b(new zzn(str5, str6, 4225, this.f29153c.f29280c), zzeVar3, name, s());
                    if (!connectionResultB.W1()) {
                        zzs zzsVar3 = this.f29153c;
                        new StringBuilder(String.valueOf(zzsVar3.f29278a).length() + 34 + String.valueOf(zzsVar3.f29279b).length());
                        int i3 = connectionResultB.f28953c;
                        if (i3 == -1) {
                            i3 = 16;
                        }
                        if (connectionResultB.d != null) {
                            bundle = new Bundle();
                            bundle.putParcelable("pendingIntent", connectionResultB.d);
                        }
                        int i4 = this.y.get();
                        zzg zzgVar = new zzg(this, i3, bundle);
                        Handler handler = this.g;
                        handler.sendMessage(handler.obtainMessage(7, i4, -1, zzgVar));
                    }
                } else if (i2 == 4) {
                    Preconditions.h(iInterface);
                    System.currentTimeMillis();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str) {
        this.f29152b = str;
        disconnect();
    }

    public final boolean b() {
        boolean z2;
        synchronized (this.f29156h) {
            int i2 = this.o;
            z2 = true;
            if (i2 != 2 && i2 != 3) {
                z2 = false;
            }
        }
        return z2;
    }

    public final String c() {
        zzs zzsVar;
        if (isConnected() && (zzsVar = this.f29153c) != null) {
            return zzsVar.f29279b;
        }
        v7.h("Failed to connect when checking package");
        return null;
    }

    public final void d(ConnectionProgressReportCallbacks connectionProgressReportCallbacks) {
        this.f29159k = connectionProgressReportCallbacks;
        C(2, null);
    }

    public final void disconnect() {
        this.y.incrementAndGet();
        ArrayList arrayList = this.m;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    zzc zzcVar = (zzc) arrayList.get(i2);
                    synchronized (zzcVar) {
                        zzcVar.f29254a = null;
                    }
                }
                arrayList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f29157i) {
            this.f29158j = null;
        }
        C(1, null);
    }

    public final boolean e() {
        return true;
    }

    public boolean g() {
        return false;
    }

    public final void i(IAccountAccessor iAccountAccessor, Set set) {
        AttributionSource attributionSource;
        Bundle bundleT = t();
        String attributionTag = (Build.VERSION.SDK_INT < 31 || this.u == null || (attributionSource = this.u.f29353a) == null || attributionSource.getAttributionTag() == null) ? this.t : attributionSource.getAttributionTag();
        String str = attributionTag;
        int i2 = this.r;
        int i3 = GoogleApiAvailabilityLight.f28963a;
        Scope[] scopeArr = GetServiceRequest.p;
        Bundle bundle = new Bundle();
        Feature[] featureArr = GetServiceRequest.q;
        GetServiceRequest getServiceRequest = new GetServiceRequest(6, i2, i3, null, null, scopeArr, bundle, null, featureArr, featureArr, true, 0, false, str);
        getServiceRequest.f29180e = this.d.getPackageName();
        getServiceRequest.f29182h = bundleT;
        if (set != null) {
            getServiceRequest.g = (Scope[]) set.toArray(new Scope[0]);
        }
        if (g()) {
            Account accountQ = q();
            if (accountQ == null) {
                accountQ = new Account("<<default account>>", "com.google");
            }
            getServiceRequest.f29183i = accountQ;
            if (iAccountAccessor != null) {
                getServiceRequest.f29181f = iAccountAccessor.asBinder();
            }
        }
        getServiceRequest.f29184j = z;
        getServiceRequest.f29185k = r();
        if (A()) {
            getServiceRequest.n = true;
        }
        try {
            try {
                synchronized (this.f29157i) {
                    try {
                        IGmsServiceBroker iGmsServiceBroker = this.f29158j;
                        if (iGmsServiceBroker != null) {
                            iGmsServiceBroker.v(new zzd(this, this.y.get()), getServiceRequest);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (RemoteException | RuntimeException unused) {
                int i4 = this.y.get();
                zzf zzfVar = new zzf(this, 8, null, null);
                Handler handler = this.g;
                handler.sendMessage(handler.obtainMessage(1, i4, -1, zzfVar));
            }
        } catch (DeadObjectException unused2) {
            int i5 = this.y.get();
            Handler handler2 = this.g;
            handler2.sendMessage(handler2.obtainMessage(6, i5, 3));
        } catch (SecurityException e2) {
            throw e2;
        }
    }

    public final boolean isConnected() {
        boolean z2;
        synchronized (this.f29156h) {
            z2 = this.o == 4;
        }
        return z2;
    }

    public final void j(SignOutCallbacks signOutCallbacks) {
        signOutCallbacks.a();
    }

    public abstract int l();

    public final Feature[] m() {
        zzj zzjVar = this.x;
        if (zzjVar == null) {
            return null;
        }
        return zzjVar.f29263c;
    }

    public final String n() {
        return this.f29152b;
    }

    public final void o() {
        int iB = this.f29155f.b(this.d, l());
        if (iB == 0) {
            d(new LegacyClientCallbackAdapter(this));
            return;
        }
        C(1, null);
        this.f29159k = new LegacyClientCallbackAdapter(this);
        int i2 = this.y.get();
        Handler handler = this.g;
        handler.sendMessage(handler.obtainMessage(3, i2, iB, null));
    }

    public abstract IInterface p(IBinder iBinder);

    public Account q() {
        return null;
    }

    public Feature[] r() {
        return z;
    }

    public Executor s() {
        return null;
    }

    public Bundle t() {
        return new Bundle();
    }

    public Set u() {
        return Collections.EMPTY_SET;
    }

    public final IInterface v() {
        IInterface iInterface;
        synchronized (this.f29156h) {
            try {
                if (this.o == 5) {
                    throw new DeadObjectException();
                }
                if (!isConnected()) {
                    throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
                }
                iInterface = this.l;
                Preconditions.i(iInterface, "Client is connected but service is null");
            } catch (Throwable th) {
                throw th;
            }
        }
        return iInterface;
    }

    public abstract String w();

    public abstract String x();

    public boolean y() {
        return l() >= 211700000;
    }

    public void z() {
        System.currentTimeMillis();
    }
}

package com.google.android.gms.common.api.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.SparseIntArray;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.service.zau;
import com.google.android.gms.common.wrappers.AttributionSourceWrapper;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class zabk implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedList f29074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Api.Client f29075b;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ApiKey f29076j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zaaa f29077k;
    public final HashSet l;
    public final HashMap m;
    public final int n;
    public final zacm o;
    public boolean p;
    public final ArrayList q;
    public ConnectionResult r;
    public int s;
    public final /* synthetic */ GoogleApiManager t;

    /* JADX WARN: Multi-variable type inference failed */
    public zabk(GoogleApiManager googleApiManager, GoogleApi googleApi) {
        String str;
        Objects.requireNonNull(googleApiManager);
        this.t = googleApiManager;
        this.f29074a = new LinkedList();
        this.l = new HashSet();
        this.m = new HashMap();
        this.q = new ArrayList();
        this.r = null;
        this.s = 0;
        Looper looper = googleApiManager.o.getLooper();
        ClientSettings.Builder builderE = googleApi.e();
        Account account = builderE.f29171a;
        ArraySet arraySet = builderE.f29172b;
        String str2 = builderE.f29173c;
        String str3 = builderE.d;
        SignInOptions signInOptions = SignInOptions.f32056b;
        ClientSettings clientSettings = new ClientSettings(account, arraySet, null, 0, null, str2, str3, signInOptions, false);
        Api.AbstractClientBuilder abstractClientBuilder = googleApi.d.f28972a;
        Preconditions.h(abstractClientBuilder);
        Api.Client clientA = abstractClientBuilder.a(googleApi.f28985a, looper, clientSettings, googleApi.f28988e, this, this);
        AttributionSourceWrapper attributionSourceWrapper = googleApi.f28987c;
        if (attributionSourceWrapper != null && (clientA instanceof BaseGmsClient)) {
            ((BaseGmsClient) clientA).u = attributionSourceWrapper;
        } else if ((attributionSourceWrapper == null || !(clientA instanceof NonGmsServiceBrokerClient)) && (str = googleApi.f28986b) != null && (clientA instanceof BaseGmsClient)) {
            ((BaseGmsClient) clientA).t = str;
        }
        this.f29075b = clientA;
        this.f29076j = googleApi.f28989f;
        this.f29077k = new zaaa();
        this.n = googleApi.f28990h;
        if (!clientA.g()) {
            this.o = null;
            return;
        }
        Context context = googleApiManager.f29030f;
        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
        ClientSettings.Builder builderE2 = googleApi.e();
        this.o = new zacm(context, zaoVar, new ClientSettings(builderE2.f29171a, builderE2.f29172b, null, 0, null, builderE2.f29173c, builderE2.d, signInOptions, false));
    }

    public final void a() {
        Api.Client client = this.f29075b;
        GoogleApiManager googleApiManager = this.t;
        Preconditions.d(googleApiManager.o);
        this.r = null;
        j(ConnectionResult.g);
        if (this.p) {
            com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
            ApiKey apiKey = this.f29076j;
            zaoVar.removeMessages(11, apiKey);
            googleApiManager.o.removeMessages(9, apiKey);
            this.p = false;
        }
        Iterator it = this.m.values().iterator();
        while (it.hasNext()) {
            RegisterListenerMethod registerListenerMethod = ((zacd) it.next()).f29099a;
            if (k(registerListenerMethod.f29050b) != null) {
                it.remove();
            } else {
                try {
                    ((zace) registerListenerMethod).f29102e.f29055a.accept(client, new TaskCompletionSource());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    client.a("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException | RuntimeException unused2) {
                    it.remove();
                }
            }
        }
        d();
        h();
    }

    public final void b(int i2) {
        Preconditions.d(this.t.o);
        this.r = null;
        this.p = true;
        String strN = this.f29075b.n();
        zaaa zaaaVar = this.f29077k;
        zaaaVar.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i2 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i2 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (strN != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(strN);
        }
        zaaaVar.a(true, new Status(20, sb.toString()));
        ApiKey apiKey = this.f29076j;
        GoogleApiManager googleApiManager = this.t;
        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
        zaoVar.sendMessageDelayed(Message.obtain(zaoVar, 9, apiKey), LiveTranslationEntity.DefaultSentenceTimeOut);
        com.google.android.gms.internal.base.zao zaoVar2 = googleApiManager.o;
        zaoVar2.sendMessageDelayed(Message.obtain(zaoVar2, 11, apiKey), 120000L);
        SparseIntArray sparseIntArray = googleApiManager.f29031h.f29232a;
        synchronized (sparseIntArray) {
            sparseIntArray.clear();
        }
        Iterator it = this.m.values().iterator();
        while (it.hasNext()) {
            ((zacd) it.next()).f29101c.run();
        }
    }

    public final boolean c(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.s) {
            try {
                GoogleApiManager googleApiManager = this.t;
                if (googleApiManager.l == null || !googleApiManager.m.contains(this.f29076j)) {
                    return false;
                }
                zaab zaabVar = googleApiManager.l;
                int i2 = this.n;
                zaabVar.getClass();
                zam zamVar = new zam(connectionResult, i2);
                AtomicReference atomicReference = zaabVar.d;
                do {
                    if (atomicReference.compareAndSet(null, zamVar)) {
                        zaabVar.f29124e.post(new zao(zaabVar, zamVar));
                        break;
                    }
                } while (atomicReference.get() == null);
                googleApiManager.g.g(googleApiManager.f29030f, connectionResult, true);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        LinkedList linkedList = this.f29074a;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            zai zaiVar = (zai) arrayList.get(i2);
            if (!this.f29075b.isConnected()) {
                return;
            }
            if (e(zaiVar)) {
                linkedList.remove(zaiVar);
            }
        }
    }

    public final boolean e(zai zaiVar) {
        if (!(zaiVar instanceof zac)) {
            zaaa zaaaVar = this.f29077k;
            Api.Client client = this.f29075b;
            zaiVar.c(zaaaVar, client.g());
            try {
                zaiVar.d(this);
                return true;
            } catch (DeadObjectException unused) {
                onConnectionSuspended(1);
                client.a("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        zac zacVar = (zac) zaiVar;
        Feature featureK = k(zacVar.f(this));
        if (featureK == null) {
            zaaa zaaaVar2 = this.f29077k;
            Api.Client client2 = this.f29075b;
            zaiVar.c(zaaaVar2, client2.g());
            try {
                zaiVar.d(this);
                return true;
            } catch (DeadObjectException unused2) {
                onConnectionSuspended(1);
                client2.a("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        String name = this.f29075b.getClass().getName();
        String str = featureK.f28958b;
        long jW1 = featureK.W1();
        int length = name.length();
        new StringBuilder(length + 53 + String.valueOf(str).length() + 2 + String.valueOf(jW1).length() + 2);
        GoogleApiManager googleApiManager = this.t;
        if (!googleApiManager.p || !zacVar.g(this)) {
            zacVar.b(new UnsupportedApiCallException(featureK));
            return true;
        }
        int iH = zacVar.h(this);
        zabl zablVar = new zabl(this.f29076j, featureK);
        ArrayList arrayList = this.q;
        int iIndexOf = arrayList.indexOf(zablVar);
        if (iIndexOf >= 0) {
            zabl zablVar2 = (zabl) arrayList.get(iIndexOf);
            googleApiManager.o.removeMessages(15, zablVar2);
            googleApiManager.o.sendMessageDelayed(Message.obtain(googleApiManager.o, 15, zablVar2), LiveTranslationEntity.DefaultSentenceTimeOut);
            return false;
        }
        arrayList.add(zablVar);
        googleApiManager.o.sendMessageDelayed(Message.obtain(googleApiManager.o, 15, zablVar), LiveTranslationEntity.DefaultSentenceTimeOut);
        googleApiManager.o.sendMessageDelayed(Message.obtain(googleApiManager.o, 16, zablVar), 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null, null, Integer.valueOf(iH));
        if (c(connectionResult)) {
            String str2 = featureK.f28958b;
            long jW2 = featureK.W1();
            new StringBuilder(String.valueOf(str2).length() + 61 + String.valueOf(jW2).length());
            return false;
        }
        if (!googleApiManager.h(connectionResult, this.n)) {
            return false;
        }
        String str3 = featureK.f28958b;
        long jW3 = featureK.W1();
        new StringBuilder(String.valueOf(str3).length() + 55 + String.valueOf(jW3).length());
        return false;
    }

    public final void f(Status status, Exception exc, boolean z) {
        Preconditions.d(this.t.o);
        if ((status == null) == (exc == null)) {
            md.n("Status XOR exception should be null");
            return;
        }
        Iterator it = this.f29074a.iterator();
        while (it.hasNext()) {
            zai zaiVar = (zai) it.next();
            if (!z || zaiVar.f29114a == 2) {
                if (status != null) {
                    zaiVar.a(status);
                } else {
                    zaiVar.b(exc);
                }
                it.remove();
            }
        }
    }

    public final void g(Status status) {
        Preconditions.d(this.t.o);
        f(status, null, false);
    }

    public final void h() {
        GoogleApiManager googleApiManager = this.t;
        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
        ApiKey apiKey = this.f29076j;
        zaoVar.removeMessages(12, apiKey);
        com.google.android.gms.internal.base.zao zaoVar2 = googleApiManager.o;
        zaoVar2.sendMessageDelayed(zaoVar2.obtainMessage(12, apiKey), googleApiManager.f29027b);
    }

    public final boolean i(boolean z) {
        Preconditions.d(this.t.o);
        Api.Client client = this.f29075b;
        if (!client.isConnected() || !this.m.isEmpty()) {
            return false;
        }
        zaaa zaaaVar = this.f29077k;
        if (zaaaVar.f29067a.isEmpty() && zaaaVar.f29068b.isEmpty()) {
            client.a("Timing out service connection.");
            return true;
        }
        if (!z) {
            return false;
        }
        h();
        return false;
    }

    public final void j(ConnectionResult connectionResult) {
        HashSet hashSet = this.l;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((zal) it.next()).a(this.f29076j, connectionResult, com.google.android.gms.common.internal.Objects.a(connectionResult, ConnectionResult.g) ? this.f29075b.c() : null);
        }
        hashSet.clear();
    }

    public final Feature k(Feature[] featureArr) {
        if (featureArr == null || featureArr.length == 0) {
            return null;
        }
        Feature[] featureArrM = this.f29075b.m();
        if (featureArrM == null) {
            featureArrM = new Feature[0];
        }
        ArrayMap arrayMap = new ArrayMap(featureArrM.length);
        for (Feature feature : featureArrM) {
            arrayMap.put(feature.f28958b, Long.valueOf(feature.W1()));
        }
        for (Feature feature2 : featureArr) {
            Long l = (Long) arrayMap.get(feature2.f28958b);
            if (l == null || l.longValue() < feature2.W1()) {
                return feature2;
            }
        }
        return null;
    }

    public final void l(ConnectionResult connectionResult) {
        Preconditions.d(this.t.o);
        Api.Client client = this.f29075b;
        String name = client.getClass().getName();
        String strValueOf = String.valueOf(connectionResult);
        client.a(tr.l(new StringBuilder(name.length() + 25 + strValueOf.length()), "onSignInFailed for ", name, " with ", strValueOf));
        m(connectionResult, null);
    }

    public final void m(ConnectionResult connectionResult, RuntimeException runtimeException) {
        com.google.android.gms.signin.zae zaeVar;
        GoogleApiManager googleApiManager = this.t;
        Preconditions.d(googleApiManager.o);
        zacm zacmVar = this.o;
        if (zacmVar != null && (zaeVar = zacmVar.m) != null) {
            zaeVar.disconnect();
        }
        Preconditions.d(this.t.o);
        this.r = null;
        SparseIntArray sparseIntArray = googleApiManager.f29031h.f29232a;
        synchronized (sparseIntArray) {
            sparseIntArray.clear();
        }
        j(connectionResult);
        if ((this.f29075b instanceof zau) && connectionResult.f28953c != 24) {
            googleApiManager.f29028c = true;
            com.google.android.gms.internal.base.zao zaoVar = googleApiManager.o;
            zaoVar.sendMessageDelayed(zaoVar.obtainMessage(19), 300000L);
        }
        int i2 = connectionResult.f28953c;
        if (i2 == 4) {
            g(GoogleApiManager.r);
            return;
        }
        if (i2 == 25) {
            g(GoogleApiManager.d(this.f29076j, connectionResult));
            return;
        }
        LinkedList linkedList = this.f29074a;
        if (linkedList.isEmpty()) {
            this.r = connectionResult;
            return;
        }
        if (runtimeException != null) {
            Preconditions.d(googleApiManager.o);
            f(null, runtimeException, false);
            return;
        }
        boolean z = googleApiManager.p;
        ApiKey apiKey = this.f29076j;
        if (!z) {
            g(GoogleApiManager.d(apiKey, connectionResult));
            return;
        }
        f(GoogleApiManager.d(apiKey, connectionResult), null, true);
        if (linkedList.isEmpty() || c(connectionResult) || googleApiManager.h(connectionResult, this.n)) {
            return;
        }
        if (connectionResult.f28953c == 18) {
            this.p = true;
        }
        if (!this.p) {
            g(GoogleApiManager.d(apiKey, connectionResult));
        } else {
            com.google.android.gms.internal.base.zao zaoVar2 = googleApiManager.o;
            zaoVar2.sendMessageDelayed(Message.obtain(zaoVar2, 9, apiKey), LiveTranslationEntity.DefaultSentenceTimeOut);
        }
    }

    public final void n(zai zaiVar) {
        Preconditions.d(this.t.o);
        boolean zIsConnected = this.f29075b.isConnected();
        LinkedList linkedList = this.f29074a;
        if (zIsConnected) {
            if (e(zaiVar)) {
                h();
                return;
            } else {
                linkedList.add(zaiVar);
                return;
            }
        }
        linkedList.add(zaiVar);
        ConnectionResult connectionResult = this.r;
        if (connectionResult == null || connectionResult.f28953c == 0 || connectionResult.d == null) {
            p();
        } else {
            m(connectionResult, null);
        }
    }

    public final void o() {
        Preconditions.d(this.t.o);
        Status status = GoogleApiManager.q;
        g(status);
        zaaa zaaaVar = this.f29077k;
        zaaaVar.getClass();
        zaaaVar.a(false, status);
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.m.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            n(new zah(listenerKey, new TaskCompletionSource()));
        }
        j(new ConnectionResult(4));
        Api.Client client = this.f29075b;
        if (client.isConnected()) {
            client.j(new zabj(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        GoogleApiManager googleApiManager = this.t;
        if (Looper.myLooper() == googleApiManager.o.getLooper()) {
            a();
        } else {
            googleApiManager.o.post(new zabg(this));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        m(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        GoogleApiManager googleApiManager = this.t;
        if (Looper.myLooper() == googleApiManager.o.getLooper()) {
            b(i2);
        } else {
            googleApiManager.o.post(new zabh(this, i2));
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void p() {
        GoogleApiManager googleApiManager = this.t;
        Preconditions.d(googleApiManager.o);
        Api.Client client = this.f29075b;
        if (client.isConnected() || client.b()) {
            return;
        }
        try {
            int iA = googleApiManager.f29031h.a(googleApiManager.f29030f, client);
            if (iA != 0) {
                ConnectionResult connectionResult = new ConnectionResult(iA, null);
                new StringBuilder(client.getClass().getName().length() + 35 + connectionResult.toString().length());
                m(connectionResult, null);
                return;
            }
            zabn zabnVar = new zabn(googleApiManager, client, this.f29076j);
            if (client.g()) {
                zacm zacmVar = this.o;
                Preconditions.h(zacmVar);
                com.google.android.gms.signin.zae zaeVar = zacmVar.m;
                if (zaeVar != null) {
                    zaeVar.disconnect();
                }
                ClientSettings clientSettings = zacmVar.l;
                clientSettings.f29170i = Integer.valueOf(System.identityHashCode(zacmVar));
                Api.AbstractClientBuilder abstractClientBuilder = zacmVar.f29106j;
                Context context = zacmVar.f29104a;
                Handler handler = zacmVar.f29105b;
                zacmVar.m = (com.google.android.gms.signin.zae) abstractClientBuilder.a(context, handler.getLooper(), clientSettings, clientSettings.f29169h, zacmVar, zacmVar);
                zacmVar.n = zabnVar;
                Set set = zacmVar.f29107k;
                if (set == null || set.isEmpty()) {
                    handler.post(new zacj(zacmVar));
                } else {
                    zacmVar.m.f();
                }
            }
            try {
                client.d(zabnVar);
            } catch (SecurityException e2) {
                m(new ConnectionResult(10), e2);
            }
        } catch (IllegalStateException e3) {
            m(new ConnectionResult(10), e3);
        }
    }
}

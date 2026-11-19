package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import defpackage.md;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzco {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzic f31529a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f31530b = new ArrayMap();

    public final void F2() {
        if (this.f31529a != null) {
            return;
        }
        md.k("Attempting to perform action before initialize.");
    }

    public final void G2(String str, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        F2();
        zzpp zzppVar = this.f31529a.f31844i;
        zzic.k(zzppVar);
        zzppVar.T(str, zzcsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void beginAdUnitExposure(String str, long j2) throws RemoteException {
        F2();
        zzd zzdVar = this.f31529a.n;
        zzic.j(zzdVar);
        zzdVar.h(j2, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.A(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void clearMeasurementEnabled(long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.h();
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzks(zzljVar, null));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void endAdUnitExposure(String str, long j2) throws RemoteException {
        F2();
        zzd zzdVar = this.f31529a.n;
        zzic.j(zzdVar);
        zzdVar.i(j2, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void generateEventId(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzpp zzppVar = this.f31529a.f31844i;
        zzic.k(zzppVar);
        long jE0 = zzppVar.e0();
        F2();
        zzpp zzppVar2 = this.f31529a.f31844i;
        zzic.k(zzppVar2);
        zzppVar2.U(zzcsVar, jE0);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzhz zzhzVar = this.f31529a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzi(this, zzcsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        G2((String) zzljVar.g.get(), zzcsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzhz zzhzVar = this.f31529a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzm(this, zzcsVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        G2(zzljVar.D(), zzcsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        G2(zzljVar.C(), zzcsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        G2(zzljVar.E(), zzcsVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.x(str);
        F2();
        zzpp zzppVar = this.f31529a.f31844i;
        zzic.k(zzppVar);
        zzppVar.V(zzcsVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getSessionId(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzkm(zzljVar, zzcsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getTestFlag(com.google.android.gms.internal.measurement.zzcs zzcsVar, int i2) throws RemoteException {
        F2();
        if (i2 == 0) {
            zzpp zzppVar = this.f31529a.f31844i;
            zzic.k(zzppVar);
            zzlj zzljVar = this.f31529a.m;
            zzic.l(zzljVar);
            AtomicReference atomicReference = new AtomicReference();
            zzhz zzhzVar = zzljVar.f31850a.g;
            zzic.m(zzhzVar);
            zzppVar.T((String) zzhzVar.q(atomicReference, 15000L, "String test flag value", new zzko(zzljVar, atomicReference)), zzcsVar);
            return;
        }
        if (i2 == 1) {
            zzpp zzppVar2 = this.f31529a.f31844i;
            zzic.k(zzppVar2);
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            AtomicReference atomicReference2 = new AtomicReference();
            zzhz zzhzVar2 = zzljVar2.f31850a.g;
            zzic.m(zzhzVar2);
            zzppVar2.U(zzcsVar, ((Long) zzhzVar2.q(atomicReference2, 15000L, "long test flag value", new zzkp(zzljVar2, atomicReference2))).longValue());
            return;
        }
        if (i2 == 2) {
            zzpp zzppVar3 = this.f31529a.f31844i;
            zzic.k(zzppVar3);
            zzlj zzljVar3 = this.f31529a.m;
            zzic.l(zzljVar3);
            AtomicReference atomicReference3 = new AtomicReference();
            zzhz zzhzVar3 = zzljVar3.f31850a.g;
            zzic.m(zzhzVar3);
            double dDoubleValue = ((Double) zzhzVar3.q(atomicReference3, 15000L, "double test flag value", new zzkr(zzljVar3, atomicReference3))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", dDoubleValue);
            try {
                zzcsVar.V1(bundle);
                return;
            } catch (RemoteException e2) {
                zzgu zzguVar = zzppVar3.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31771i.b(e2, "Error returning double value to wrapper");
                return;
            }
        }
        if (i2 == 3) {
            zzpp zzppVar4 = this.f31529a.f31844i;
            zzic.k(zzppVar4);
            zzlj zzljVar4 = this.f31529a.m;
            zzic.l(zzljVar4);
            AtomicReference atomicReference4 = new AtomicReference();
            zzhz zzhzVar4 = zzljVar4.f31850a.g;
            zzic.m(zzhzVar4);
            zzppVar4.V(zzcsVar, ((Integer) zzhzVar4.q(atomicReference4, 15000L, "int test flag value", new zzkq(zzljVar4, atomicReference4))).intValue());
            return;
        }
        if (i2 != 4) {
            return;
        }
        zzpp zzppVar5 = this.f31529a.f31844i;
        zzic.k(zzppVar5);
        zzlj zzljVar5 = this.f31529a.m;
        zzic.l(zzljVar5);
        AtomicReference atomicReference5 = new AtomicReference();
        zzhz zzhzVar5 = zzljVar5.f31850a.g;
        zzic.m(zzhzVar5);
        zzppVar5.X(zzcsVar, ((Boolean) zzhzVar5.q(atomicReference5, 15000L, "boolean test flag value", new zzke(zzljVar5, atomicReference5))).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void getUserProperties(String str, String str2, boolean z, com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzhz zzhzVar = this.f31529a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzk(this, zzcsVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void initForTests(Map map) throws RemoteException {
        F2();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdb zzdbVar, long j2) throws RemoteException {
        zzic zzicVar = this.f31529a;
        if (zzicVar == null) {
            Context context = (Context) ObjectWrapper.G2(iObjectWrapper);
            Preconditions.h(context);
            this.f31529a = zzic.s(context, zzdbVar, Long.valueOf(j2), null);
        } else {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void initializeWithElapsedTime(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdb zzdbVar, long j2, long j3) {
        zzic zzicVar = this.f31529a;
        if (zzicVar == null) {
            Context context = (Context) ObjectWrapper.G2(iObjectWrapper);
            Preconditions.h(context);
            this.f31529a = zzic.s(context, zzdbVar, Long.valueOf(j2), Long.valueOf(j3));
        } else {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzcs zzcsVar) throws RemoteException {
        F2();
        zzhz zzhzVar = this.f31529a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzn(this, zzcsVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.l(str, str2, bundle, z, z2, j2, 0L);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzcs zzcsVar, long j2) throws RemoteException {
        F2();
        Preconditions.e(str2);
        String str3 = true != this.f31529a.d.r(null, zzfy.f1) ? Payload.TYPE_APP : "auto";
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", str3);
        zzbh zzbhVar = new zzbh(str2, new zzbf(bundle), str3, j2, 0L);
        zzhz zzhzVar = this.f31529a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzj(this, zzcsVar, zzbhVar, str));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logEventWithElapsedTime(String str, String str2, Bundle bundle, boolean z, boolean z2, long j2, long j3) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.l(str, str2, bundle, z, z2, j2, j3);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        F2();
        Object objG2 = iObjectWrapper == null ? null : ObjectWrapper.G2(iObjectWrapper);
        Object objG3 = iObjectWrapper2 == null ? null : ObjectWrapper.G2(iObjectWrapper2);
        Object objG4 = iObjectWrapper3 != null ? ObjectWrapper.G2(iObjectWrapper3) : null;
        zzgu zzguVar = this.f31529a.f31842f;
        zzic.m(zzguVar);
        zzguVar.p(i2, true, false, str, objG2, objG3, objG4);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), bundle, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityCreatedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, Bundle bundle, long j2) {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzky zzkyVar = zzljVar.f31887c;
        if (zzkyVar != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
            zzkyVar.a(zzddVar, bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityDestroyedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzky zzkyVar = zzljVar.f31887c;
        if (zzkyVar != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
            zzkyVar.b(zzddVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityPausedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzky zzkyVar = zzljVar.f31887c;
        if (zzkyVar != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
            zzkyVar.c(zzddVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityResumedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzky zzkyVar = zzljVar.f31887c;
        if (zzkyVar != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
            zzkyVar.d(zzddVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcs zzcsVar, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), zzcsVar, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivitySaveInstanceStateByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, com.google.android.gms.internal.measurement.zzcs zzcsVar, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzky zzkyVar = zzljVar.f31887c;
        Bundle bundle = new Bundle();
        if (zzkyVar != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
            zzkyVar.e(zzddVar, bundle);
        }
        try {
            zzcsVar.V1(bundle);
        } catch (RemoteException e2) {
            zzgu zzguVar = this.f31529a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.b(e2, "Error returning bundle value to wrapper");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStartedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        if (zzljVar.f31887c != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void onActivityStoppedByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd zzddVar, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        if (zzljVar.f31887c != null) {
            zzlj zzljVar2 = this.f31529a.m;
            zzic.l(zzljVar2);
            zzljVar2.I();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzcs zzcsVar, long j2) throws RemoteException {
        F2();
        zzcsVar.V1(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzcy zzcyVar) throws RemoteException {
        zzjq zzqVar;
        F2();
        ArrayMap arrayMap = this.f31530b;
        synchronized (arrayMap) {
            try {
                zzqVar = (zzjq) arrayMap.get(Integer.valueOf(zzcyVar.I()));
                if (zzqVar == null) {
                    zzqVar = new zzq(this, zzcyVar);
                    arrayMap.put(Integer.valueOf(zzcyVar.I()), zzqVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.w(zzqVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    @Deprecated
    public void resetAnalyticsData(long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.g.set(null);
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzkh(zzljVar, j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void resetAnalyticsDataWithElapsedTime(long j2, long j3) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.g.set(null);
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzkh(zzljVar, j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void retrieveAndUploadBatches(final com.google.android.gms.internal.measurement.zzcv zzcvVar) {
        zzlr zzlrVar;
        F2();
        final zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.measurement.internal.zzo
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    zzcvVar.h0();
                } catch (RemoteException e2) {
                    zzic zzicVar = this.zza.f31529a;
                    Preconditions.h(zzicVar);
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31771i.b(e2, "Failed to call IDynamiteUploadBatchesCallback");
                }
            }
        };
        zzljVar.h();
        zzic zzicVar = zzljVar.f31850a;
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        if (zzhzVar.m()) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot retrieve and upload batches from analytics worker thread");
            return;
        }
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        if (Thread.currentThread() == zzhzVar2.d) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.a("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        boolean zA = zzae.a();
        zzgu zzguVar3 = zzicVar.f31842f;
        if (zA) {
            zzic.m(zzguVar3);
            zzguVar3.f31769f.a("Cannot retrieve and upload batches from main thread");
            return;
        }
        zzic.m(zzguVar3);
        zzguVar3.n.a("[sgtm] Started client-side batch upload work.");
        boolean z = false;
        int size = 0;
        int i2 = 0;
        while (!z) {
            zzgu zzguVar4 = zzicVar.f31842f;
            zzic.m(zzguVar4);
            zzguVar4.n.a("[sgtm] Getting upload batches from service (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            zzhz zzhzVar3 = zzicVar.g;
            zzic.m(zzhzVar3);
            zzhzVar3.q(atomicReference, 10000L, "[sgtm] Getting upload batches", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzli
                @Override // java.lang.Runnable
                public final void run() {
                    final zznl zznlVarP = zzljVar.f31850a.p();
                    final zzoo zzooVarW1 = zzoo.W1(zzls.SGTM_CLIENT);
                    final AtomicReference atomicReference2 = atomicReference;
                    zznlVarP.g();
                    zznlVarP.h();
                    final zzr zzrVarW = zznlVarP.w(false);
                    zznlVarP.u(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzni
                        @Override // java.lang.Runnable
                        public final void run() {
                            zznl zznlVar = zznlVarP;
                            AtomicReference atomicReference3 = atomicReference2;
                            zzr zzrVar = zzrVarW;
                            zzoo zzooVar = zzooVarW1;
                            zznlVar.getClass();
                            synchronized (atomicReference3) {
                                try {
                                    zzgb zzgbVar = zznlVar.d;
                                    if (zzgbVar == null) {
                                        zzgu zzguVar5 = zznlVar.f31850a.f31842f;
                                        zzic.m(zzguVar5);
                                        zzguVar5.f31769f.a("[sgtm] Failed to get upload batches; not connected to service");
                                    } else {
                                        Preconditions.h(zzrVar);
                                        zzgbVar.l(zzrVar, zzooVar, new zzmf(zznlVar, atomicReference3));
                                        zznlVar.t();
                                    }
                                } catch (RemoteException e2) {
                                    zzgu zzguVar6 = zznlVar.f31850a.f31842f;
                                    zzic.m(zzguVar6);
                                    zzguVar6.f31769f.b(e2, "[sgtm] Failed to get upload batches; remote exception");
                                    atomicReference3.notifyAll();
                                }
                            }
                        }
                    });
                }
            });
            zzoq zzoqVar = (zzoq) atomicReference.get();
            if (zzoqVar == null) {
                break;
            }
            List list = zzoqVar.f31955b;
            if (list.isEmpty()) {
                break;
            }
            zzgu zzguVar5 = zzicVar.f31842f;
            zzic.m(zzguVar5);
            zzguVar5.n.b(Integer.valueOf(list.size()), "[sgtm] Retrieved upload batches. count");
            size += list.size();
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                final zzom zzomVar = (zzom) it.next();
                try {
                    URL url = new URI(zzomVar.d).toURL();
                    final AtomicReference atomicReference2 = new AtomicReference();
                    zzgi zzgiVarR = zzljVar.f31850a.r();
                    zzgiVarR.h();
                    Preconditions.h(zzgiVarR.g);
                    String str = zzgiVarR.g;
                    zzic zzicVar2 = zzljVar.f31850a;
                    zzgu zzguVar6 = zzicVar2.f31842f;
                    zzic.m(zzguVar6);
                    zzgs zzgsVar = zzguVar6.n;
                    Long lValueOf = Long.valueOf(zzomVar.f31949b);
                    zzgsVar.d("[sgtm] Uploading data from app. row_id, url, uncompressed size", lValueOf, zzomVar.d, Integer.valueOf(zzomVar.f31950c.length));
                    if (!TextUtils.isEmpty(zzomVar.f31953h)) {
                        zzgu zzguVar7 = zzicVar2.f31842f;
                        zzic.m(zzguVar7);
                        zzguVar7.n.c("[sgtm] Uploading data from app. row_id", lValueOf, zzomVar.f31953h);
                    }
                    HashMap map = new HashMap();
                    Bundle bundle = zzomVar.f31951e;
                    for (String str2 : bundle.keySet()) {
                        String string = bundle.getString(str2);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(str2, string);
                        }
                    }
                    zzlo zzloVar = zzicVar2.o;
                    zzic.m(zzloVar);
                    byte[] bArr = zzomVar.f31950c;
                    zzll zzllVar = new zzll() { // from class: com.google.android.gms.measurement.internal.zzkz
                        /* JADX WARN: Code duplicated, block: B:10:0x0016  */
                        /* JADX WARN: Code duplicated, block: B:11:0x002d A[PHI: r8
                          0x002d: PHI (r8v7 int) = (r8v1 int), (r8v0 int) binds: [B:9:0x0014, B:7:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
                        /* JADX WARN: Code duplicated, block: B:13:0x0062  */
                        /* JADX WARN: Code duplicated, block: B:14:0x0065  */
                        @Override // com.google.android.gms.measurement.internal.zzll
                        public final void a(String str3, int i3, Exception exc, byte[] bArr2, Map map2) {
                            zzlr zzlrVar2;
                            zzlj zzljVar2 = zzljVar;
                            zzljVar2.g();
                            zzom zzomVar2 = zzomVar;
                            if (i3 == 200 || i3 == 204) {
                                if (exc == null) {
                                    zzgu zzguVar8 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar8);
                                    zzguVar8.n.b(Long.valueOf(zzomVar2.f31949b), "[sgtm] Upload succeeded for row_id");
                                    zzlrVar2 = zzlr.SUCCESS;
                                } else {
                                    zzgu zzguVar9 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar9);
                                    zzguVar9.f31771i.d("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(zzomVar2.f31949b), Integer.valueOf(i3), exc);
                                    if (Arrays.asList(((String) zzfy.u.a(null)).split(",")).contains(String.valueOf(i3))) {
                                        zzlrVar2 = zzlr.BACKOFF;
                                    } else {
                                        zzlrVar2 = zzlr.FAILURE;
                                    }
                                }
                            } else if (i3 == 304) {
                                i3 = 304;
                                if (exc == null) {
                                    zzgu zzguVar10 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar10);
                                    zzguVar10.n.b(Long.valueOf(zzomVar2.f31949b), "[sgtm] Upload succeeded for row_id");
                                    zzlrVar2 = zzlr.SUCCESS;
                                } else {
                                    zzgu zzguVar11 = zzljVar2.f31850a.f31842f;
                                    zzic.m(zzguVar11);
                                    zzguVar11.f31771i.d("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(zzomVar2.f31949b), Integer.valueOf(i3), exc);
                                    if (Arrays.asList(((String) zzfy.u.a(null)).split(",")).contains(String.valueOf(i3))) {
                                        zzlrVar2 = zzlr.BACKOFF;
                                    } else {
                                        zzlrVar2 = zzlr.FAILURE;
                                    }
                                }
                            } else {
                                zzgu zzguVar12 = zzljVar2.f31850a.f31842f;
                                zzic.m(zzguVar12);
                                zzguVar12.f31771i.d("[sgtm] Upload failed for row_id. response, exception", Long.valueOf(zzomVar2.f31949b), Integer.valueOf(i3), exc);
                                if (Arrays.asList(((String) zzfy.u.a(null)).split(",")).contains(String.valueOf(i3))) {
                                    zzlrVar2 = zzlr.BACKOFF;
                                } else {
                                    zzlrVar2 = zzlr.FAILURE;
                                }
                            }
                            AtomicReference atomicReference3 = atomicReference2;
                            final zznl zznlVarP = zzljVar2.f31850a.p();
                            long j2 = zzomVar2.f31949b;
                            final zzaf zzafVar = new zzaf(j2, zzlrVar2.d0(), zzomVar2.g);
                            zznlVarP.g();
                            zznlVarP.h();
                            final zzr zzrVarW = zznlVarP.w(true);
                            zznlVarP.u(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznj
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zznl zznlVar = zznlVarP;
                                    zzr zzrVar = zzrVarW;
                                    zzaf zzafVar2 = zzafVar;
                                    zzic zzicVar3 = zznlVar.f31850a;
                                    zzgb zzgbVar = zznlVar.d;
                                    if (zzgbVar == null) {
                                        zzgu zzguVar13 = zzicVar3.f31842f;
                                        zzic.m(zzguVar13);
                                        zzguVar13.f31769f.a("[sgtm] Discarding data. Failed to update batch upload status.");
                                        return;
                                    }
                                    try {
                                        zzgbVar.N1(zzrVar, zzafVar2);
                                        zznlVar.t();
                                    } catch (RemoteException e2) {
                                        zzgu zzguVar14 = zzicVar3.f31842f;
                                        zzic.m(zzguVar14);
                                        zzguVar14.f31769f.c("[sgtm] Failed to update batch upload status, rowId, exception", Long.valueOf(zzafVar2.f31541b), e2);
                                    }
                                }
                            });
                            zzgu zzguVar13 = zzljVar2.f31850a.f31842f;
                            zzic.m(zzguVar13);
                            zzguVar13.n.c("[sgtm] Updated status for row_id", Long.valueOf(j2), zzlrVar2);
                            synchronized (atomicReference3) {
                                atomicReference3.set(zzlrVar2);
                                atomicReference3.notifyAll();
                            }
                        }
                    };
                    zzloVar.i();
                    Preconditions.h(url);
                    Preconditions.h(bArr);
                    zzhz zzhzVar4 = zzloVar.f31850a.g;
                    zzic.m(zzhzVar4);
                    zzhzVar4.s(new zzln(zzloVar, str, url, bArr, map, zzllVar));
                    try {
                        zzpp zzppVar = zzicVar2.f31844i;
                        zzic.k(zzppVar);
                        zzic zzicVar3 = zzppVar.f31850a;
                        zzicVar3.f31846k.getClass();
                        long jCurrentTimeMillis = System.currentTimeMillis() + 60000;
                        synchronized (atomicReference2) {
                            for (long jCurrentTimeMillis2 = 60000; atomicReference2.get() == null && jCurrentTimeMillis2 > 0; jCurrentTimeMillis2 = jCurrentTimeMillis - System.currentTimeMillis()) {
                                try {
                                    atomicReference2.wait(jCurrentTimeMillis2);
                                    zzicVar3.f31846k.getClass();
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    } catch (InterruptedException unused) {
                        zzgu zzguVar8 = zzljVar.f31850a.f31842f;
                        zzic.m(zzguVar8);
                        zzguVar8.f31771i.a("[sgtm] Interrupted waiting for uploading batch");
                    }
                    zzlrVar = atomicReference2.get() == null ? zzlr.UNKNOWN : (zzlr) atomicReference2.get();
                } catch (MalformedURLException | URISyntaxException e2) {
                    zzgu zzguVar9 = zzljVar.f31850a.f31842f;
                    zzic.m(zzguVar9);
                    zzguVar9.f31769f.d("[sgtm] Bad upload url for row_id", zzomVar.d, Long.valueOf(zzomVar.f31949b), e2);
                    zzlrVar = zzlr.FAILURE;
                }
                if (zzlrVar != zzlr.SUCCESS) {
                    if (zzlrVar == zzlr.BACKOFF) {
                        z = true;
                        break;
                    }
                } else {
                    i2++;
                }
            }
        }
        zzgu zzguVar10 = zzicVar.f31842f;
        zzic.m(zzguVar10);
        zzguVar10.n.c("[sgtm] Completed client-side batch upload work. total, success", Integer.valueOf(size), Integer.valueOf(i2));
        runnable.run();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setConditionalUserProperty(Bundle bundle, long j2) throws RemoteException {
        F2();
        zzic zzicVar = this.f31529a;
        if (bundle == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Conditional user property must not be null");
        } else {
            zzlj zzljVar = zzicVar.m;
            zzic.l(zzljVar);
            zzljVar.z(bundle, j2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setConsent(Bundle bundle, long j2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setConsentThirdParty(Bundle bundle, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.J(bundle, -20, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j2) throws RemoteException {
        F2();
        Activity activity = (Activity) ObjectWrapper.G2(iObjectWrapper);
        Preconditions.h(activity);
        setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd.W1(activity), str, str2, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        if (r2 > 500) goto L27;
     */
    @Override // com.google.android.gms.internal.measurement.zzcp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd r5, java.lang.String r6, java.lang.String r7, long r8) throws android.os.RemoteException {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.zzdd, java.lang.String, java.lang.String, long):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.h();
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzjy(zzljVar, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setDefaultEventParameters(Bundle bundle) {
        F2();
        final zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlf
            @Override // java.lang.Runnable
            public final void run() {
                zzlj zzljVar2 = zzljVar;
                Bundle bundle3 = bundle2;
                zzkn zzknVar = zzljVar2.v;
                zzic zzicVar = zzljVar2.f31850a;
                if (!bundle3.isEmpty()) {
                    zzhh zzhhVar = zzicVar.f31841e;
                    zzpp zzppVar = zzicVar.f31844i;
                    zzal zzalVar = zzicVar.d;
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.k(zzhhVar);
                    Bundle bundle4 = new Bundle(zzhhVar.y.a());
                    for (String str : bundle3.keySet()) {
                        Object obj = bundle3.get(str);
                        if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                            zzic.k(zzppVar);
                            if (zzpp.s0(obj)) {
                                zzpp.y(zzknVar, null, 27, null, null, 0);
                            }
                            zzic.m(zzguVar);
                            zzguVar.f31773k.c("Invalid default event parameter type. Name, value", str, obj);
                        } else if (zzpp.K(str)) {
                            zzic.m(zzguVar);
                            zzguVar.f31773k.b(str, "Invalid default event parameter name. Name");
                        } else if (obj == null) {
                            bundle4.remove(str);
                        } else {
                            zzic.k(zzppVar);
                            zzalVar.getClass();
                            if (zzppVar.k("param", str, 500, obj)) {
                                zzppVar.x(bundle4, str, obj);
                            }
                        }
                    }
                    zzic.k(zzppVar);
                    zzpp zzppVar2 = zzalVar.f31850a.f31844i;
                    zzic.k(zzppVar2);
                    int i2 = zzppVar2.Q(201500000) ? 100 : 25;
                    if (bundle4.size() > i2) {
                        int i3 = 0;
                        for (String str2 : new TreeSet(bundle4.keySet())) {
                            i3++;
                            if (i3 > i2) {
                                bundle4.remove(str2);
                            }
                        }
                        zzic.k(zzppVar);
                        zzpp.y(zzknVar, null, 26, null, null, 0);
                        zzic.m(zzguVar);
                        zzguVar.f31773k.a("Too many default event parameters set. Discarding beyond event parameter limit");
                    }
                    bundle3 = bundle4;
                }
                zzhh zzhhVar2 = zzicVar.f31841e;
                zzic.k(zzhhVar2);
                zzhhVar2.y.b(bundle3);
                zzicVar.p().l(bundle3);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzcy zzcyVar) throws RemoteException {
        F2();
        zzp zzpVar = new zzp(this, zzcyVar);
        zzhz zzhzVar = this.f31529a.g;
        zzic.m(zzhzVar);
        boolean zM = zzhzVar.m();
        zzic zzicVar = this.f31529a;
        if (zM) {
            zzlj zzljVar = zzicVar.m;
            zzic.l(zzljVar);
            zzljVar.v(zzpVar);
        } else {
            zzhz zzhzVar2 = zzicVar.g;
            zzic.m(zzhzVar2);
            zzhzVar2.p(new zzl(this, zzpVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzda zzdaVar) throws RemoteException {
        F2();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setMeasurementEnabled(boolean z, long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        Boolean boolValueOf = Boolean.valueOf(z);
        zzljVar.h();
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzks(zzljVar, boolValueOf));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setMinimumSessionDuration(long j2) throws RemoteException {
        F2();
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setSessionTimeoutDuration(long j2) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzhz zzhzVar = zzljVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzka(zzljVar, j2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setSgtmDebugInfo(Intent intent) throws RemoteException {
        F2();
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzic zzicVar = zzljVar.f31850a;
        Uri data = intent.getData();
        if (data == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.l.a("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals("1")) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.l.a("[sgtm] Preview Mode was not enabled.");
            zzicVar.d.f31553c = null;
            return;
        }
        String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
        if (TextUtils.isEmpty(queryParameter2)) {
            return;
        }
        zzgu zzguVar3 = zzicVar.f31842f;
        zzic.m(zzguVar3);
        zzguVar3.l.b(queryParameter2, "[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ");
        zzicVar.d.f31553c = queryParameter2;
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setUserId(final String str, long j2) throws RemoteException {
        F2();
        final zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzic zzicVar = zzljVar.f31850a;
        if (str != null && TextUtils.isEmpty(str)) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("User ID must be non-empty or null");
        } else {
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlg
                @Override // java.lang.Runnable
                public final void run() {
                    zzic zzicVar2 = zzljVar.f31850a;
                    zzgi zzgiVarR = zzicVar2.r();
                    String str2 = str;
                    String str3 = zzgiVarR.r;
                    boolean z = false;
                    if (str3 != null && !str3.equals(str2)) {
                        z = true;
                    }
                    zzgiVarR.r = str2;
                    if (z) {
                        zzicVar2.r().l();
                    }
                }
            });
            zzljVar.q(null, "_id", str, true, j2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j2) throws RemoteException {
        F2();
        Object objG2 = ObjectWrapper.G2(iObjectWrapper);
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.q(str, str2, objG2, z, j2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcp
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzcy zzcyVar) throws RemoteException {
        Object zzqVar;
        F2();
        ArrayMap arrayMap = this.f31530b;
        synchronized (arrayMap) {
            zzqVar = (zzjq) arrayMap.remove(Integer.valueOf(zzcyVar.I()));
        }
        if (zzqVar == null) {
            zzqVar = new zzq(this, zzcyVar);
        }
        zzlj zzljVar = this.f31529a.m;
        zzic.l(zzljVar);
        zzljVar.h();
        if (zzljVar.f31888e.remove(zzqVar)) {
            return;
        }
        zzgu zzguVar = zzljVar.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31771i.a("OnEventListener had not been registered");
    }
}

package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.collection.ArrayMap;
import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.tagmanager.TagManagerService;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public final class zzlj extends zzg {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzky f31887c;
    public zzjp d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CopyOnWriteArraySet f31888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f31889f;
    public final AtomicReference g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f31890h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f31891i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f31892j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public zzjx f31893k;
    public zzju l;
    public PriorityQueue m;
    public zzjl n;
    public final AtomicLong o;
    public long p;
    public final zzx q;
    public boolean r;
    public zzkg s;
    public SharedPreferences.OnSharedPreferenceChangeListener t;
    public zzkb u;
    public final zzkn v;

    public zzlj(zzic zzicVar) {
        super(zzicVar);
        this.f31888e = new CopyOnWriteArraySet();
        this.f31890h = new Object();
        this.f31891i = false;
        this.f31892j = 1;
        this.r = true;
        this.v = new zzkn(this);
        this.g = new AtomicReference();
        this.n = zzjl.f31852c;
        this.p = -1L;
        this.o = new AtomicLong(0L);
        this.q = new zzx(zzicVar);
    }

    public final void A(String str, String str2, Bundle bundle) {
        zzic zzicVar = this.f31850a;
        zzicVar.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Preconditions.e(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", jCurrentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzkj(this, bundle2));
    }

    public final ArrayList B(String str, String str2) {
        zzic zzicVar = this.f31850a;
        zzhz zzhzVar = zzicVar.g;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzhzVar);
        if (zzhzVar.m()) {
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (zzae.a()) {
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        zzhzVar2.q(atomicReference, LiveTranslationEntity.DefaultSentenceTimeOut, "get conditional user properties", new zzkk(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return zzpp.a0(list);
        }
        zzic.m(zzguVar);
        zzguVar.f31769f.b(null, "Timed out waiting for get conditional user properties");
        return new ArrayList();
    }

    public final String C() {
        zzmb zzmbVar = this.f31850a.l;
        zzic.l(zzmbVar);
        zzlu zzluVar = zzmbVar.f31900c;
        if (zzluVar != null) {
            return zzluVar.f31895a;
        }
        return null;
    }

    public final String D() {
        zzmb zzmbVar = this.f31850a.l;
        zzic.l(zzmbVar);
        zzlu zzluVar = zzmbVar.f31900c;
        if (zzluVar != null) {
            return zzluVar.f31896b;
        }
        return null;
    }

    public final String E() {
        zzic zzicVar = this.f31850a;
        try {
            return zzlt.a(zzicVar.f31838a, zzicVar.p);
        } catch (IllegalStateException e2) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.b(e2, "getGoogleAppId failed with exception");
            return null;
        }
    }

    public final void F(zzjl zzjlVar, long j2, boolean z) {
        g();
        h();
        zzic zzicVar = this.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.k(zzhhVar);
        zzjl zzjlVarN = zzhhVar.n();
        if (j2 <= this.p && zzjl.l(zzjlVarN.f31854b, zzjlVar.f31854b)) {
            zzic.m(zzguVar);
            zzguVar.l.b(zzjlVar, "Dropped out-of-date consent setting, proposed settings");
            return;
        }
        zzhh zzhhVar2 = zzicVar.f31841e;
        zzic.k(zzhhVar2);
        zzhhVar2.g();
        int i2 = zzjlVar.f31854b;
        if (!zzjl.l(i2, zzhhVar2.k().getInt("consent_source", 100))) {
            zzic.m(zzguVar);
            zzguVar.l.b(Integer.valueOf(zzjlVar.f31854b), "Lower precedence consent source ignored, proposed source");
            return;
        }
        SharedPreferences.Editor editorEdit = zzhhVar2.k().edit();
        editorEdit.putString("consent_settings", zzjlVar.g());
        editorEdit.putInt("consent_source", i2);
        editorEdit.apply();
        zzic.m(zzguVar);
        zzguVar.n.b(zzjlVar, "Setting storage consent(FE)");
        this.p = j2;
        if (zzicVar.p().q()) {
            final zznl zznlVarP = zzicVar.p();
            zznlVarP.g();
            zznlVarP.h();
            zznlVarP.u(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznk
                @Override // java.lang.Runnable
                public final void run() {
                    zznl zznlVar = zznlVarP;
                    zzic zzicVar2 = zznlVar.f31850a;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zzgu zzguVar2 = zzicVar2.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.f31769f.a("Failed to send storage consent settings to service");
                        return;
                    }
                    try {
                        zzgbVar.O(zznlVar.w(false));
                        zznlVar.t();
                    } catch (RemoteException e2) {
                        zzgu zzguVar3 = zzicVar2.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.f31769f.b(e2, "Failed to send storage consent settings to the service");
                    }
                }
            });
        } else {
            zznl zznlVarP2 = zzicVar.p();
            zznlVarP2.g();
            zznlVarP2.h();
            if (zznlVarP2.p()) {
                zznlVarP2.u(new zzms(zznlVarP2, zznlVarP2.w(false)));
            }
        }
        if (z) {
            zzicVar.p().k(new AtomicReference());
        }
    }

    public final void G(Boolean bool, boolean z) {
        g();
        h();
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.b(bool, "Setting app measurement enabled (FE)");
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        zzhhVar.g();
        SharedPreferences.Editor editorEdit = zzhhVar.k().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
        if (z) {
            zzhhVar.g();
            SharedPreferences.Editor editorEdit2 = zzhhVar.k().edit();
            if (bool != null) {
                editorEdit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                editorEdit2.remove("measurement_enabled_from_api");
            }
            editorEdit2.apply();
        }
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        if (zzicVar.z || !(bool == null || bool.booleanValue())) {
            H();
        }
    }

    public final void H() {
        g();
        zzic zzicVar = this.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzgu zzguVar = zzicVar.f31842f;
        DefaultClock defaultClock = zzicVar.f31846k;
        zzic.k(zzhhVar);
        String strA = zzhhVar.m.a();
        if (strA != null) {
            if ("unset".equals(strA)) {
                defaultClock.getClass();
                r(System.currentTimeMillis(), null, Payload.TYPE_APP, "_npa");
            } else {
                Long lValueOf = Long.valueOf(true != "true".equals(strA) ? 0L : 1L);
                defaultClock.getClass();
                r(System.currentTimeMillis(), lValueOf, Payload.TYPE_APP, "_npa");
            }
        }
        if (!zzicVar.f() || !this.r) {
            zzic.m(zzguVar);
            zzguVar.m.a("Updating Scion state (FE)");
            zznl zznlVarP = zzicVar.p();
            zznlVarP.g();
            zznlVarP.h();
            zznlVarP.u(new zzmr(zznlVarP, zznlVarP.w(true)));
            return;
        }
        zzic.m(zzguVar);
        zzguVar.m.a("Recording app launch after enabling measurement for the first time (FE)");
        u();
        zzoc zzocVar = zzicVar.f31843h;
        zzic.l(zzocVar);
        zzocVar.f31937e.a();
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zzjz(this));
    }

    public final void I() {
        zzic zzicVar = this.f31850a;
        if (!(zzicVar.f31838a.getApplicationContext() instanceof Application) || this.f31887c == null) {
            return;
        }
        ((Application) zzicVar.f31838a.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f31887c);
    }

    public final void J(Bundle bundle, int i2, long j2) {
        Object obj;
        String string;
        h();
        zzjl zzjlVar = zzjl.f31852c;
        zzjk[] zzjkVarArrB = zzjj.STORAGE.b();
        int length = zzjkVarArrB.length;
        int i3 = 0;
        while (true) {
            obj = null;
            if (i3 >= length) {
                break;
            }
            String str = zzjkVarArrB[i3].zze;
            if (bundle.containsKey(str) && (string = bundle.getString(str)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i3++;
        }
        zzic zzicVar = this.f31850a;
        if (obj != null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31773k.b(obj, "Ignoring invalid consent setting");
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31773k.a("Valid consent values are 'granted', 'denied'");
        }
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        boolean zM = zzhzVar.m();
        zzjl zzjlVarB = zzjl.b(i2, bundle);
        Iterator it = zzjlVarB.f31853a.values().iterator();
        while (it.hasNext()) {
            if (((zzji) it.next()) != zzji.UNINITIALIZED) {
                L(zzjlVarB, zM);
                break;
            }
        }
        zzba zzbaVarC = zzba.c(i2, bundle);
        Iterator it2 = zzbaVarC.f31585e.values().iterator();
        while (it2.hasNext()) {
            if (((zzji) it2.next()) != zzji.UNINITIALIZED) {
                K(zzbaVarC, zM);
                break;
            }
        }
        Boolean boolD = zzba.d(bundle);
        if (boolD != null) {
            String str2 = i2 == -30 ? "tcf" : Payload.TYPE_APP;
            if (zM) {
                r(j2, boolD.toString(), str2, "allow_personalized_ads");
            } else {
                q(str2, "allow_personalized_ads", boolD.toString(), false, j2);
            }
        }
    }

    public final void K(zzba zzbaVar, boolean z) {
        zzkt zzktVar = new zzkt(this, zzbaVar);
        if (z) {
            g();
            zzktVar.run();
        } else {
            zzhz zzhzVar = this.f31850a.g;
            zzic.m(zzhzVar);
            zzhzVar.p(zzktVar);
        }
    }

    public final void L(zzjl zzjlVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        zzjl zzjlVar2;
        h();
        int i2 = zzjlVar.f31854b;
        if (i2 != -10) {
            zzji zzjiVar = (zzji) zzjlVar.f31853a.get(zzjk.AD_STORAGE);
            if (zzjiVar == null) {
                zzjiVar = zzji.UNINITIALIZED;
            }
            zzji zzjiVar2 = zzji.UNINITIALIZED;
            if (zzjiVar == zzjiVar2) {
                zzji zzjiVar3 = (zzji) zzjlVar.f31853a.get(zzjk.ANALYTICS_STORAGE);
                if (zzjiVar3 == null) {
                    zzjiVar3 = zzjiVar2;
                }
                if (zzjiVar3 == zzjiVar2) {
                    zzgu zzguVar = this.f31850a.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31773k.a("Ignoring empty consent settings");
                    return;
                }
            }
        }
        synchronized (this.f31890h) {
            try {
                z2 = false;
                if (zzjl.l(i2, this.n.f31854b)) {
                    zzjl zzjlVar3 = this.n;
                    EnumMap enumMap = zzjlVar.f31853a;
                    zzjk[] zzjkVarArr = (zzjk[]) enumMap.keySet().toArray(new zzjk[0]);
                    int length = zzjkVarArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length) {
                            z3 = false;
                            break;
                        }
                        zzjk zzjkVar = zzjkVarArr[i3];
                        zzji zzjiVar4 = (zzji) enumMap.get(zzjkVar);
                        zzji zzjiVar5 = (zzji) zzjlVar3.f31853a.get(zzjkVar);
                        zzji zzjiVar6 = zzji.DENIED;
                        if (zzjiVar4 == zzjiVar6 && zzjiVar5 != zzjiVar6) {
                            z3 = true;
                            break;
                        }
                        i3++;
                    }
                    zzjk zzjkVar2 = zzjk.ANALYTICS_STORAGE;
                    if (zzjlVar.i(zzjkVar2) && !this.n.i(zzjkVar2)) {
                        z2 = true;
                    }
                    zzjlVar = zzjlVar.k(this.n);
                    this.n = zzjlVar;
                    z4 = z2;
                    z2 = true;
                } else {
                    z3 = false;
                    z4 = false;
                }
                zzjlVar2 = zzjlVar;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            zzgu zzguVar2 = this.f31850a.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.l.b(zzjlVar2, "Ignoring lower-priority consent settings, proposed settings");
            return;
        }
        long andIncrement = this.o.getAndIncrement();
        if (z3) {
            this.g.set(null);
            zzku zzkuVar = new zzku(this, zzjlVar2, andIncrement, z4);
            if (z) {
                g();
                zzkuVar.run();
                return;
            } else {
                zzhz zzhzVar = this.f31850a.g;
                zzic.m(zzhzVar);
                zzhzVar.r(zzkuVar);
                return;
            }
        }
        zzkv zzkvVar = new zzkv(this, zzjlVar2, andIncrement, z4);
        if (z) {
            g();
            zzkvVar.run();
        } else if (i2 == 30 || i2 == -10) {
            zzhz zzhzVar2 = this.f31850a.g;
            zzic.m(zzhzVar2);
            zzhzVar2.r(zzkvVar);
        } else {
            zzhz zzhzVar3 = this.f31850a.g;
            zzic.m(zzhzVar3);
            zzhzVar3.p(zzkvVar);
        }
    }

    public final void M() {
        zzaif.a();
        zzic zzicVar = this.f31850a;
        zzal zzalVar = zzicVar.d;
        zzhz zzhzVar = zzicVar.g;
        zzgu zzguVar = zzicVar.f31842f;
        if (zzalVar.r(null, zzfy.P0)) {
            zzic.m(zzhzVar);
            if (zzhzVar.m()) {
                zzic.m(zzguVar);
                zzguVar.f31769f.a("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (zzae.a()) {
                zzic.m(zzguVar);
                zzguVar.f31769f.a("Cannot get trigger URIs from main thread");
                return;
            }
            h();
            zzic.m(zzguVar);
            zzguVar.n.a("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            zzic.m(zzhzVar);
            zzhzVar.q(atomicReference, 10000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.zzla
                @Override // java.lang.Runnable
                public final void run() {
                    zzlj zzljVar = this.zza;
                    zzhh zzhhVar = zzljVar.f31850a.f31841e;
                    zzic.k(zzhhVar);
                    final Bundle bundleA = zzhhVar.n.a();
                    final zznl zznlVarP = zzljVar.f31850a.p();
                    final AtomicReference atomicReference2 = atomicReference;
                    zznlVarP.g();
                    zznlVarP.h();
                    final zzr zzrVarW = zznlVarP.w(false);
                    zznlVarP.u(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznh
                        @Override // java.lang.Runnable
                        public final void run() {
                            zznl zznlVar = zznlVarP;
                            AtomicReference atomicReference3 = atomicReference2;
                            zzr zzrVar = zzrVarW;
                            Bundle bundle = bundleA;
                            zznlVar.getClass();
                            synchronized (atomicReference3) {
                                try {
                                    zzgb zzgbVar = zznlVar.d;
                                    if (zzgbVar == null) {
                                        zzgu zzguVar2 = zznlVar.f31850a.f31842f;
                                        zzic.m(zzguVar2);
                                        zzguVar2.f31769f.a("Failed to request trigger URIs; not connected to service");
                                    } else {
                                        Preconditions.h(zzrVar);
                                        zzgbVar.E1(zzrVar, bundle, new zzme(zznlVar, atomicReference3));
                                        zznlVar.t();
                                    }
                                } catch (RemoteException e2) {
                                    zzgu zzguVar3 = zznlVar.f31850a.f31842f;
                                    zzic.m(zzguVar3);
                                    zzguVar3.f31769f.b(e2, "Failed to request trigger URIs; remote exception");
                                    atomicReference3.notifyAll();
                                }
                            }
                        }
                    });
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                zzic.m(zzguVar);
                zzguVar.f31770h.a("Timed out waiting for get trigger URIs");
            } else {
                zzic.m(zzhzVar);
                zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlb
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzlj zzljVar = this.zza;
                        zzljVar.g();
                        if (Build.VERSION.SDK_INT < 30) {
                            return;
                        }
                        List<zzoh> list2 = list;
                        zzhh zzhhVar = zzljVar.f31850a.f31841e;
                        zzic.k(zzhhVar);
                        SparseArray sparseArrayM = zzhhVar.m();
                        for (zzoh zzohVar : list2) {
                            int i2 = zzohVar.d;
                            if (!sparseArrayM.contains(i2) || ((Long) sparseArrayM.get(i2)).longValue() < zzohVar.f31944c) {
                                zzljVar.N().add(zzohVar);
                            }
                        }
                        zzljVar.O();
                    }
                });
            }
        }
    }

    public final PriorityQueue N() {
        if (this.m == null) {
            this.m = new PriorityQueue(Comparator.comparing(zzlc.f31884a, zzld.f31885b));
        }
        return this.m;
    }

    public final void O() {
        zzoh zzohVar;
        g();
        if (N().isEmpty() || this.f31891i || (zzohVar = (zzoh) N().poll()) == null) {
            return;
        }
        zzic zzicVar = this.f31850a;
        zzpp zzppVar = zzicVar.f31844i;
        zzic.k(zzppVar);
        if (zzppVar.f32012f == null) {
            zzppVar.f32012f = MeasurementManagerFutures.a(zzppVar.f31850a.f31838a);
        }
        MeasurementManagerFutures measurementManagerFutures = zzppVar.f32012f;
        if (measurementManagerFutures != null) {
            this.f31891i = true;
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzgs zzgsVar = zzguVar.n;
            String str = zzohVar.f31943b;
            zzgsVar.b(str, "Registering trigger URI");
            ListenableFuture listenableFutureC = measurementManagerFutures.c(Uri.parse(str));
            if (listenableFutureC != null) {
                Futures.a(listenableFutureC, new zzjw(this, zzohVar), new zzjv(this));
            } else {
                this.f31891i = false;
                N().add(zzohVar);
            }
        }
    }

    public final void P(zzjl zzjlVar) {
        g();
        boolean z = (zzjlVar.i(zzjk.ANALYTICS_STORAGE) && zzjlVar.i(zzjk.AD_STORAGE)) || this.f31850a.p().p();
        zzic zzicVar = this.f31850a;
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.g();
        if (z != zzicVar.z) {
            zzhz zzhzVar2 = zzicVar.g;
            zzic.m(zzhzVar2);
            zzhzVar2.g();
            zzicVar.z = z;
            zzhh zzhhVar = this.f31850a.f31841e;
            zzic.k(zzhhVar);
            zzhhVar.g();
            Boolean boolValueOf = zzhhVar.k().contains("measurement_enabled_from_api") ? Boolean.valueOf(zzhhVar.k().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || boolValueOf == null || boolValueOf.booleanValue()) {
                G(Boolean.valueOf(z), false);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    public final boolean j() {
        return false;
    }

    public final void k(String str, String str2, Bundle bundle) {
        long jElapsedRealtime;
        zzic zzicVar = this.f31850a;
        zzicVar.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (zzicVar.d.r(null, zzfy.e1)) {
            zzicVar.f31846k.getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else {
            jElapsedRealtime = 0;
        }
        l(str, str2, bundle, true, true, jCurrentTimeMillis, jElapsedRealtime);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        if (r3 > 500) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0099, code lost:
    
        if (r5 > 500) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(java.lang.String r20, java.lang.String r21, android.os.Bundle r22, boolean r23, boolean r24, long r25, long r27) {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlj.l(java.lang.String, java.lang.String, android.os.Bundle, boolean, boolean, long, long):void");
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public final void m() {
        /*
            Method dump skipped, instruction units count: 1177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlj.m():void");
    }

    public final void n(String str, String str2, Bundle bundle) {
        long jElapsedRealtime;
        g();
        zzic zzicVar = this.f31850a;
        zzicVar.f31846k.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (zzicVar.d.r(null, zzfy.e1)) {
            zzicVar.f31846k.getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else {
            jElapsedRealtime = 0;
        }
        o(str, str2, bundle, jCurrentTimeMillis, jElapsedRealtime);
    }

    public final void o(String str, String str2, Bundle bundle, long j2, long j3) {
        g();
        boolean z = true;
        if (this.d != null && !zzpp.K(str2)) {
            z = false;
        }
        p(str, str2, j2, j3, bundle, true, z, true, null);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x025d  */
    /* JADX WARN: Code duplicated, block: B:120:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:122:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:124:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:127:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:128:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:135:0x035a  */
    /* JADX WARN: Code duplicated, block: B:138:0x036e  */
    /* JADX WARN: Code duplicated, block: B:139:0x0385  */
    /* JADX WARN: Code duplicated, block: B:142:0x039d  */
    /* JADX WARN: Code duplicated, block: B:144:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:146:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:147:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:149:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:150:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:152:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:153:0x03e0  */
    /* JADX WARN: Code duplicated, block: B:155:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:156:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:161:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:163:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:165:0x0404  */
    /* JADX WARN: Code duplicated, block: B:168:0x040c  */
    /* JADX WARN: Code duplicated, block: B:171:0x044d  */
    /* JADX WARN: Code duplicated, block: B:173:0x045f  */
    /* JADX WARN: Code duplicated, block: B:176:0x0481  */
    /* JADX WARN: Code duplicated, block: B:179:0x048d A[LOOP:2: B:177:0x0487->B:179:0x048d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:195:0x03ea A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x04a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:86:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:88:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:90:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:91:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:94:0x020b  */
    public final void p(String str, String str2, long j2, long j3, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        String str4;
        zzhh zzhhVar;
        zzkn zzknVar;
        boolean z4;
        zzic zzicVar;
        int iN0;
        boolean z5;
        Bundle bundleQ;
        long j4;
        String strA;
        ArrayList arrayList;
        boolean zA;
        long j5;
        int i2;
        long j6;
        long j7;
        ArrayList arrayList2;
        int size;
        int i3;
        int i4;
        Bundle bundleM;
        String str5;
        Bundle bundle2;
        zzgl zzglVarO;
        byte[] bArrMarshall;
        boolean zN;
        Iterator it;
        String str6;
        ArrayList arrayList3;
        Object obj;
        Bundle[] bundleArr;
        int length;
        int i5;
        Class cls;
        Preconditions.e(str);
        Preconditions.h(bundle);
        g();
        h();
        zzic zzicVar2 = this.f31850a;
        boolean zF = zzicVar2.f();
        zzoc zzocVar = zzicVar2.f31843h;
        zzal zzalVar = zzicVar2.d;
        Context context = zzicVar2.f31838a;
        zzpp zzppVar = zzicVar2.f31844i;
        zzgu zzguVar = zzicVar2.f31842f;
        if (!zF) {
            zzic.m(zzguVar);
            zzguVar.m.a("Event not sent since app measurement is disabled");
            return;
        }
        List list = zzicVar2.r().f31748k;
        if (list != null && !list.contains(str2)) {
            zzic.m(zzguVar);
            zzguVar.m.c("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f31889f) {
            this.f31889f = true;
            try {
                if (zzicVar2.f31839b) {
                    cls = TagManagerService.class;
                    int i6 = TagManagerService.f32076b;
                } else {
                    cls = Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, context.getClassLoader());
                }
                try {
                    cls.getDeclaredMethod("initialize", Context.class).invoke(null, context);
                } catch (Exception e2) {
                    zzic.m(zzguVar);
                    zzguVar.f31771i.b(e2, "Failed to invoke Tag Manager's initialize() method");
                }
            } catch (ClassNotFoundException unused) {
                zzic.m(zzguVar);
                zzguVar.l.a("Tag Manager is not found and thus will not be used");
            }
        }
        zzgn zzgnVar = zzicVar2.f31845j;
        zzhh zzhhVar2 = zzicVar2.f31841e;
        DefaultClock defaultClock = zzicVar2.f31846k;
        if (!zzalVar.r(null, zzfy.Z0) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            String string = bundle.getString("gclid");
            defaultClock.getClass();
            str4 = null;
            r(System.currentTimeMillis(), string, "auto", "_lgclid");
        } else {
            str4 = null;
        }
        if (!z || zzpp.f32009j[0].equals(str2)) {
            zzhhVar = zzhhVar2;
        } else {
            zzic.k(zzppVar);
            zzic.k(zzhhVar2);
            zzhhVar = zzhhVar2;
            zzppVar.t(bundle, zzhhVar.y.a());
        }
        zzkn zzknVar2 = this.v;
        if (!z3 && !"_iap".equals(str2)) {
            zzic.k(zzppVar);
            int i7 = 2;
            if (zzppVar.j0(MvelScriptManager.VAR_EVENT, str2)) {
                if (zzppVar.l0(MvelScriptManager.VAR_EVENT, zzjm.f31855a, zzppVar.f31850a.d.r(str4, zzfy.f1) ? zzjm.f31857c : zzjm.f31856b, str2)) {
                    i5 = 40;
                    if (zzppVar.m0(40, MvelScriptManager.VAR_EVENT, str2)) {
                        i7 = 0;
                    }
                } else {
                    i7 = 13;
                    i5 = 40;
                }
            } else {
                i5 = 40;
            }
            if (i7 != 0) {
                zzic.m(zzguVar);
                zzguVar.f31770h.b(zzgnVar.a(str2), "Invalid public event name. Event will not be logged (FE)");
                zzic.k(zzppVar);
                zzpp.y(zzknVar2, null, i7, "_ev", zzpp.n(i5, str2, true), str2 != null ? str2.length() : 0);
                return;
            }
        }
        zzmb zzmbVar = zzicVar2.l;
        zzic.l(zzmbVar);
        zzlu zzluVarK = zzmbVar.k(false);
        if (zzluVarK != null && !bundle.containsKey("_sc")) {
            zzluVarK.d = true;
        }
        zzpp.c0(zzluVarK, bundle, z && !z3);
        boolean zEquals = "am".equals(str);
        boolean zK = zzpp.K(str2);
        if (z) {
            zzknVar = zzknVar2;
            if (this.d != null && !zK) {
                if (!zEquals) {
                    zzic.m(zzguVar);
                    zzguVar.m.c("Passing event to registered event handler (FE)", zzgnVar.a(str2), zzgnVar.e(bundle));
                    Preconditions.h(this.d);
                    this.d.a(str, str2, bundle, j2);
                    return;
                }
                z4 = true;
            }
            if (zzicVar2.h()) {
                zzic.k(zzppVar);
                zzicVar = zzppVar.f31850a;
                iN0 = zzppVar.n0(str2);
                if (iN0 != 0) {
                    zzic.m(zzguVar);
                    zzguVar.f31770h.b(zzgnVar.a(str2), "Invalid event name. Event will not be logged (FE)");
                    String strN = zzpp.n(40, str2, true);
                    if (str2 != null) {
                        length = str2.length();
                    } else {
                        length = 0;
                    }
                    zzic.k(zzppVar);
                    zzpp.y(zzknVar, str3, iN0, "_ev", strN, length);
                    return;
                }
                z5 = z4;
                bundleQ = zzppVar.q(str2, bundle, CollectionUtils.a("_o", "_sn", "_sc", "_si"), z3);
                Preconditions.h(bundleQ);
                zzic.l(zzmbVar);
                if (zzmbVar.k(false) == null && "_ae".equals(str2)) {
                    zzic.l(zzocVar);
                    zzoa zzoaVar = zzocVar.f31938f;
                    j4 = 0;
                    zzoaVar.d.f31850a.f31846k.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j8 = jElapsedRealtime - zzoaVar.f31933b;
                    zzoaVar.f31933b = jElapsedRealtime;
                    if (j8 > 0) {
                        zzppVar.S(bundleQ, j8);
                    }
                } else {
                    j4 = 0;
                }
                if ("auto".equals(str) && "_ssr".equals(str2)) {
                    String string2 = bundleQ.getString("_ffr");
                    int i8 = Strings.f29345a;
                    if (string2 == null || string2.trim().isEmpty()) {
                        string2 = null;
                    } else if (string2 != null) {
                        string2 = string2.trim();
                    }
                    zzhh zzhhVar3 = r16.f31841e;
                    zzic.k(zzhhVar3);
                    if (Objects.equals(string2, zzhhVar3.v.a())) {
                        zzgu zzguVar2 = r16.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.m.a("Not logging duplicate session_start_with_rollout event");
                        return;
                    } else {
                        zzhh zzhhVar4 = zzicVar.f31841e;
                        zzic.k(zzhhVar4);
                        zzhhVar4.v.b(string2);
                    }
                } else if ("_ae".equals(str2)) {
                    zzhh zzhhVar5 = zzicVar.f31841e;
                    zzic.k(zzhhVar5);
                    strA = zzhhVar5.v.a();
                    if (!TextUtils.isEmpty(strA)) {
                        bundleQ.putString("_ffr", strA);
                    }
                }
                arrayList = new ArrayList();
                arrayList.add(bundleQ);
                if (zzalVar.r(null, zzfy.S0)) {
                    zzic.l(zzocVar);
                    zzocVar.g();
                    zA = zzocVar.d;
                } else {
                    zzic.k(zzhhVar);
                    zA = zzhhVar.s.a();
                }
                zzic.k(zzhhVar);
                if (zzhhVar.p.a() <= j4 && zzhhVar.p(j2) && zA) {
                    zzic.m(zzguVar);
                    zzguVar.n.a("Current session is expired, remove the session number, ID, and engagement time");
                    defaultClock.getClass();
                    j5 = j4;
                    i2 = 0;
                    r(System.currentTimeMillis(), null, "auto", "_sid");
                    defaultClock.getClass();
                    r(System.currentTimeMillis(), null, "auto", "_sno");
                    defaultClock.getClass();
                    r(System.currentTimeMillis(), null, "auto", "_se");
                    zzhhVar.q.b(j5);
                } else {
                    j5 = j4;
                    i2 = 0;
                }
                if (bundleQ.getLong("extend_session", j5) == 1) {
                    zzic.m(zzguVar);
                    zzguVar.n.a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    zzic.l(zzocVar);
                    j6 = j2;
                    j7 = j3;
                    zzocVar.f31937e.b(j6, j7);
                } else {
                    j6 = j2;
                    j7 = j3;
                }
                arrayList2 = new ArrayList(bundleQ.keySet());
                Collections.sort(arrayList2);
                size = arrayList2.size();
                i3 = i2;
                while (i3 < size) {
                    str6 = (String) arrayList2.get(i3);
                    if (str6 != null) {
                        zzic.k(zzppVar);
                        obj = bundleQ.get(str6);
                        if (obj instanceof Bundle) {
                            arrayList3 = arrayList2;
                            bundleArr = new Bundle[1];
                            bundleArr[i2] = (Bundle) obj;
                        } else {
                            arrayList3 = arrayList2;
                            if (obj instanceof Parcelable[]) {
                                Parcelable[] parcelableArr = (Parcelable[]) obj;
                                bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                            } else if (obj instanceof ArrayList) {
                                ArrayList arrayList4 = (ArrayList) obj;
                                bundleArr = (Bundle[]) arrayList4.toArray(new Bundle[arrayList4.size()]);
                            } else {
                                bundleArr = null;
                            }
                        }
                        if (bundleArr != null) {
                            bundleQ.putParcelableArray(str6, bundleArr);
                        }
                    } else {
                        arrayList3 = arrayList2;
                    }
                    i3++;
                    arrayList2 = arrayList3;
                }
                i4 = i2;
                while (i4 < arrayList.size()) {
                    bundleM = (Bundle) arrayList.get(i4);
                    if (i4 != 0) {
                        str5 = "_ep";
                    } else {
                        str5 = str2;
                    }
                    bundleM.putString("_o", str);
                    if (z2) {
                        bundleM = zzppVar.M(bundleM);
                    }
                    bundle2 = bundleM;
                    zzbh zzbhVar = new zzbh(str5, new zzbf(bundle2), str, j6, j7);
                    zznl zznlVarP = zzicVar2.p();
                    zznlVarP.getClass();
                    zznlVarP.g();
                    zznlVarP.h();
                    zznlVarP.s();
                    zzglVarO = zznlVarP.f31850a.o();
                    zzglVarO.getClass();
                    Parcel parcelObtain = Parcel.obtain();
                    zzbi.a(zzbhVar, parcelObtain, i2);
                    bArrMarshall = parcelObtain.marshall();
                    parcelObtain.recycle();
                    if (bArrMarshall.length > 131072) {
                        zzgu zzguVar3 = zzglVarO.f31850a.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.g.a("Event is too long for local database. Sending event directly to service");
                        zN = false;
                    } else {
                        zN = zzglVarO.n(0, bArrMarshall);
                    }
                    zznlVarP.u(new zzmt(zznlVarP, true, zznlVarP.w(true), zN, zzbhVar, str3));
                    if (!z5) {
                        it = this.f31888e.iterator();
                        while (it.hasNext()) {
                            ((zzjq) it.next()).a(str, str2, new Bundle(bundle2), j2);
                        }
                    }
                    i4++;
                    j6 = j2;
                    j7 = j3;
                    i2 = 0;
                }
                zzic.l(r11);
                if (zzmbVar.k(false) == null && "_ae".equals(str2)) {
                    zzic.l(zzocVar);
                    defaultClock.getClass();
                    zzocVar.f31938f.a(true, true, SystemClock.elapsedRealtime());
                    return;
                }
            }
            return;
        }
        zzknVar = zzknVar2;
        z4 = zEquals;
        if (zzicVar2.h()) {
            return;
        }
        zzic.k(zzppVar);
        zzicVar = zzppVar.f31850a;
        iN0 = zzppVar.n0(str2);
        if (iN0 != 0) {
            zzic.m(zzguVar);
            zzguVar.f31770h.b(zzgnVar.a(str2), "Invalid event name. Event will not be logged (FE)");
            String strN2 = zzpp.n(40, str2, true);
            if (str2 != null) {
                length = str2.length();
            } else {
                length = 0;
            }
            zzic.k(zzppVar);
            zzpp.y(zzknVar, str3, iN0, "_ev", strN2, length);
            return;
        }
        z5 = z4;
        bundleQ = zzppVar.q(str2, bundle, CollectionUtils.a("_o", "_sn", "_sc", "_si"), z3);
        Preconditions.h(bundleQ);
        zzic.l(zzmbVar);
        if (zzmbVar.k(false) == null) {
            j4 = 0;
        } else {
            j4 = 0;
        }
        if ("auto".equals(str)) {
            if ("_ae".equals(str2)) {
                zzhh zzhhVar6 = zzicVar.f31841e;
                zzic.k(zzhhVar6);
                strA = zzhhVar6.v.a();
                if (!TextUtils.isEmpty(strA)) {
                    bundleQ.putString("_ffr", strA);
                }
            }
        } else if ("_ae".equals(str2)) {
            zzhh zzhhVar7 = zzicVar.f31841e;
            zzic.k(zzhhVar7);
            strA = zzhhVar7.v.a();
            if (!TextUtils.isEmpty(strA)) {
                bundleQ.putString("_ffr", strA);
            }
        }
        arrayList = new ArrayList();
        arrayList.add(bundleQ);
        if (zzalVar.r(null, zzfy.S0)) {
            zzic.l(zzocVar);
            zzocVar.g();
            zA = zzocVar.d;
        } else {
            zzic.k(zzhhVar);
            zA = zzhhVar.s.a();
        }
        zzic.k(zzhhVar);
        if (zzhhVar.p.a() <= j4) {
            j5 = j4;
            i2 = 0;
        } else {
            j5 = j4;
            i2 = 0;
        }
        if (bundleQ.getLong("extend_session", j5) == 1) {
            zzic.m(zzguVar);
            zzguVar.n.a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
            zzic.l(zzocVar);
            j6 = j2;
            j7 = j3;
            zzocVar.f31937e.b(j6, j7);
        } else {
            j6 = j2;
            j7 = j3;
        }
        arrayList2 = new ArrayList(bundleQ.keySet());
        Collections.sort(arrayList2);
        size = arrayList2.size();
        i3 = i2;
        while (i3 < size) {
            str6 = (String) arrayList2.get(i3);
            if (str6 != null) {
                zzic.k(zzppVar);
                obj = bundleQ.get(str6);
                if (obj instanceof Bundle) {
                    arrayList3 = arrayList2;
                    bundleArr = new Bundle[1];
                    bundleArr[i2] = (Bundle) obj;
                } else {
                    arrayList3 = arrayList2;
                    if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr2 = (Parcelable[]) obj;
                        bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr2, parcelableArr2.length, Bundle[].class);
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList5 = (ArrayList) obj;
                        bundleArr = (Bundle[]) arrayList5.toArray(new Bundle[arrayList5.size()]);
                    } else {
                        bundleArr = null;
                    }
                }
                if (bundleArr != null) {
                    bundleQ.putParcelableArray(str6, bundleArr);
                }
            } else {
                arrayList3 = arrayList2;
            }
            i3++;
            arrayList2 = arrayList3;
        }
        i4 = i2;
        while (i4 < arrayList.size()) {
            bundleM = (Bundle) arrayList.get(i4);
            if (i4 != 0) {
                str5 = "_ep";
            } else {
                str5 = str2;
            }
            bundleM.putString("_o", str);
            if (z2) {
                bundleM = zzppVar.M(bundleM);
            }
            bundle2 = bundleM;
            zzbh zzbhVar2 = new zzbh(str5, new zzbf(bundle2), str, j6, j7);
            zznl zznlVarP2 = zzicVar2.p();
            zznlVarP2.getClass();
            zznlVarP2.g();
            zznlVarP2.h();
            zznlVarP2.s();
            zzglVarO = zznlVarP2.f31850a.o();
            zzglVarO.getClass();
            Parcel parcelObtain2 = Parcel.obtain();
            zzbi.a(zzbhVar2, parcelObtain2, i2);
            bArrMarshall = parcelObtain2.marshall();
            parcelObtain2.recycle();
            if (bArrMarshall.length > 131072) {
                zzgu zzguVar4 = zzglVarO.f31850a.f31842f;
                zzic.m(zzguVar4);
                zzguVar4.g.a("Event is too long for local database. Sending event directly to service");
                zN = false;
            } else {
                zN = zzglVarO.n(0, bArrMarshall);
            }
            zznlVarP2.u(new zzmt(zznlVarP2, true, zznlVarP2.w(true), zN, zzbhVar2, str3));
            if (!z5) {
                it = this.f31888e.iterator();
                while (it.hasNext()) {
                    ((zzjq) it.next()).a(str, str2, new Bundle(bundle2), j2);
                }
            }
            i4++;
            j6 = j2;
            j7 = j3;
            i2 = 0;
        }
        zzic.l(r11);
        if (zzmbVar.k(false) == null) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001f  */
    public final void q(String str, String str2, Object obj, boolean z, long j2) {
        int iP0;
        int length;
        zzic zzicVar = this.f31850a;
        if (z) {
            zzpp zzppVar = zzicVar.f31844i;
            zzic.k(zzppVar);
            iP0 = zzppVar.p0(str2);
        } else {
            zzpp zzppVar2 = zzicVar.f31844i;
            zzic.k(zzppVar2);
            if (!zzppVar2.j0("user property", str2)) {
                iP0 = 6;
            } else if (zzppVar2.l0("user property", zzjo.f31863a, null, str2)) {
                zzppVar2.f31850a.getClass();
                if (zzppVar2.m0(24, "user property", str2)) {
                    iP0 = 0;
                } else {
                    iP0 = 6;
                }
            } else {
                iP0 = 15;
            }
        }
        zzkn zzknVar = this.v;
        if (iP0 != 0) {
            zzic.k(zzicVar.f31844i);
            String strN = zzpp.n(24, str2, true);
            length = str2 != null ? str2.length() : 0;
            zzic.k(zzicVar.f31844i);
            zzpp.y(zzknVar, null, iP0, "_ev", strN, length);
            return;
        }
        String str3 = str == null ? Payload.TYPE_APP : str;
        if (obj == null) {
            String str4 = str3;
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new zzkd(this, str4, str2, null, j2));
            return;
        }
        zzpp zzppVar3 = zzicVar.f31844i;
        zzpp zzppVar4 = zzicVar.f31844i;
        zzic.k(zzppVar3);
        int iV = zzppVar3.v(obj, str2);
        if (iV != 0) {
            zzic.k(zzppVar4);
            String strN2 = zzpp.n(24, str2, true);
            length = ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0;
            zzic.k(zzppVar4);
            zzpp.y(zzknVar, null, iV, "_ev", strN2, length);
            return;
        }
        zzic.k(zzppVar4);
        Object objW = zzppVar4.w(obj, str2);
        if (objW != null) {
            zzhz zzhzVar2 = zzicVar.g;
            zzic.m(zzhzVar2);
            zzhzVar2.p(new zzkd(this, str3, str2, objW, j2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0050 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0052  */
    public final void r(long j2, Object obj, String str, String str2) {
        boolean zN;
        Preconditions.e(str);
        Preconditions.e(str2);
        g();
        h();
        boolean zEquals = "allow_personalized_ads".equals(str2);
        zzic zzicVar = this.f31850a;
        if (zEquals) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    long j3 = true != "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 0L : 1L;
                    obj = Long.valueOf(j3);
                    zzhh zzhhVar = zzicVar.f31841e;
                    zzic.k(zzhhVar);
                    zzhhVar.m.b(j3 == 1 ? "true" : "false");
                } else if (obj == null) {
                    zzhh zzhhVar2 = zzicVar.f31841e;
                    zzic.k(zzhhVar2);
                    zzhhVar2.m.b("unset");
                }
                str2 = "_npa";
            } else if (obj == null) {
                zzhh zzhhVar3 = zzicVar.f31841e;
                zzic.k(zzhhVar3);
                zzhhVar3.m.b("unset");
                str2 = "_npa";
            }
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.c("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
        }
        Object obj2 = obj;
        String str4 = str2;
        if (!zzicVar.f()) {
            zzgu zzguVar2 = zzicVar.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.n.a("User property not set since app measurement is disabled");
            return;
        }
        if (zzicVar.h()) {
            zzpl zzplVar = new zzpl(j2, obj2, str4, str);
            zznl zznlVarP = zzicVar.p();
            zznlVarP.g();
            zznlVarP.h();
            zznlVarP.s();
            zzgl zzglVarO = zznlVarP.f31850a.o();
            zzglVarO.getClass();
            Parcel parcelObtain = Parcel.obtain();
            zzpm.a(zzplVar, parcelObtain);
            byte[] bArrMarshall = parcelObtain.marshall();
            parcelObtain.recycle();
            if (bArrMarshall.length > 131072) {
                zzgu zzguVar3 = zzglVarO.f31850a.f31842f;
                zzic.m(zzguVar3);
                zzguVar3.g.a("User property too long for local database. Sending directly to service");
                zN = false;
            } else {
                zN = zzglVarO.n(1, bArrMarshall);
            }
            zznlVarP.u(new zzmg(zznlVarP, zznlVarP.w(true), zN, zzplVar));
        }
    }

    public final List s() {
        h();
        zzic zzicVar = this.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.a("Getting user properties (FE)");
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        if (zzhzVar.m()) {
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot get all user properties from analytics worker thread");
            return Collections.EMPTY_LIST;
        }
        if (zzae.a()) {
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot get all user properties from main thread");
            return Collections.EMPTY_LIST;
        }
        AtomicReference atomicReference = new AtomicReference();
        zzic.m(zzhzVar);
        zzhzVar.q(atomicReference, LiveTranslationEntity.DefaultSentenceTimeOut, "get user properties", new zzkf(this, atomicReference, true));
        List list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        zzic.m(zzguVar);
        zzguVar.f31769f.b(Boolean.TRUE, "Timed out waiting for get user properties, includeInternal");
        return Collections.EMPTY_LIST;
    }

    public final Map t(String str, String str2, boolean z) {
        zzic zzicVar = this.f31850a;
        zzhz zzhzVar = zzicVar.g;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzhzVar);
        if (zzhzVar.m()) {
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot get user properties from analytics worker thread");
            return Collections.EMPTY_MAP;
        }
        if (zzae.a()) {
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Cannot get user properties from main thread");
            return Collections.EMPTY_MAP;
        }
        AtomicReference atomicReference = new AtomicReference();
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        zzhzVar2.q(atomicReference, LiveTranslationEntity.DefaultSentenceTimeOut, "get user properties", new zzkl(this, atomicReference, null, str, str2, z));
        List<zzpl> list = (List) atomicReference.get();
        if (list == null) {
            zzic.m(zzguVar);
            zzguVar.f31769f.b(Boolean.valueOf(z), "Timed out waiting for handle get user properties, includeInternal");
            return Collections.EMPTY_MAP;
        }
        ArrayMap arrayMap = new ArrayMap(list.size());
        for (zzpl zzplVar : list) {
            Object objW1 = zzplVar.W1();
            if (objW1 != null) {
                arrayMap.put(zzplVar.f32000c, objW1);
            }
        }
        return arrayMap;
    }

    public final void u() {
        g();
        h();
        zzic zzicVar = this.f31850a;
        if (zzicVar.h()) {
            zzal zzalVar = zzicVar.d;
            zzalVar.f31850a.getClass();
            Boolean boolT = zzalVar.t("google_analytics_deferred_deep_link_enabled");
            if (boolT != null && boolT.booleanValue()) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.m.a("Deferred Deep Link feature enabled.");
                zzhz zzhzVar = zzicVar.g;
                zzic.m(zzhzVar);
                zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzlh
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzlj zzljVar = this.zza;
                        zzljVar.g();
                        zzic zzicVar2 = zzljVar.f31850a;
                        zzhh zzhhVar = zzicVar2.f31841e;
                        zzgu zzguVar2 = zzicVar2.f31842f;
                        zzic.k(zzhhVar);
                        zzhc zzhcVar = zzhhVar.t;
                        if (zzhcVar.a()) {
                            zzic.m(zzguVar2);
                            zzguVar2.m.a("Deferred Deep Link already retrieved. Not fetching again.");
                            return;
                        }
                        zzhe zzheVar = zzhhVar.u;
                        long jA = zzheVar.a();
                        zzheVar.b(1 + jA);
                        if (jA >= 5) {
                            zzic.m(zzguVar2);
                            zzguVar2.f31771i.a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                            zzhcVar.b(true);
                        } else {
                            if (zzljVar.s == null) {
                                zzljVar.s = new zzkg(zzljVar, zzicVar2);
                            }
                            zzljVar.s.b(0L);
                        }
                    }
                });
            }
            zznl zznlVarP = zzicVar.p();
            zznlVarP.g();
            zznlVarP.h();
            zzr zzrVarW = zznlVarP.w(true);
            zznlVarP.s();
            zzic zzicVar2 = zznlVarP.f31850a;
            zzicVar2.d.r(null, zzfy.W0);
            zzicVar2.o().n(3, new byte[0]);
            zznlVarP.u(new zzmk(zznlVarP, zzrVarW, true));
            this.r = false;
            zzhh zzhhVar = zzicVar.f31841e;
            zzic.k(zzhhVar);
            zzhhVar.g();
            String string = zzhhVar.k().getString("previous_os_version", null);
            zzhhVar.f31850a.q().i();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor editorEdit = zzhhVar.k().edit();
                editorEdit.putString("previous_os_version", str);
                editorEdit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            zzicVar.q().i();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            n("auto", "_ou", bundle);
        }
    }

    public final void v(zzjp zzjpVar) {
        zzjp zzjpVar2;
        g();
        h();
        if (zzjpVar != null && zzjpVar != (zzjpVar2 = this.d)) {
            Preconditions.j("EventInterceptor already set.", zzjpVar2 == null);
        }
        this.d = zzjpVar;
    }

    public final void w(zzjq zzjqVar) {
        h();
        if (this.f31888e.add(zzjqVar)) {
            return;
        }
        zzgu zzguVar = this.f31850a.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31771i.a("OnEventListener already registered");
    }

    public final void x(String str) {
        Preconditions.e(str);
        this.f31850a.getClass();
    }

    public final void y(Bundle bundle) {
        this.f31850a.f31846k.getClass();
        z(bundle, System.currentTimeMillis());
    }

    public final void z(Bundle bundle, long j2) {
        Preconditions.h(bundle);
        Bundle bundle2 = new Bundle(bundle);
        boolean zIsEmpty = TextUtils.isEmpty(bundle2.getString("app_id"));
        zzic zzicVar = this.f31850a;
        if (!zIsEmpty) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31771i.a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        zzjh.b(bundle2, "app_id", String.class, null);
        zzjh.b(bundle2, "origin", String.class, null);
        zzjh.b(bundle2, "name", String.class, null);
        zzjh.b(bundle2, "value", Object.class, null);
        zzjh.b(bundle2, "trigger_event_name", String.class, null);
        zzjh.b(bundle2, "trigger_timeout", Long.class, 0L);
        zzjh.b(bundle2, "timed_out_event_name", String.class, null);
        zzjh.b(bundle2, "timed_out_event_params", Bundle.class, null);
        zzjh.b(bundle2, "triggered_event_name", String.class, null);
        zzjh.b(bundle2, "triggered_event_params", Bundle.class, null);
        zzjh.b(bundle2, "time_to_live", Long.class, 0L);
        zzjh.b(bundle2, "expired_event_name", String.class, null);
        zzjh.b(bundle2, "expired_event_params", Bundle.class, null);
        Preconditions.e(bundle2.getString("name"));
        Preconditions.e(bundle2.getString("origin"));
        Preconditions.h(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j2);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        zzpp zzppVar = zzicVar.f31844i;
        zzgn zzgnVar = zzicVar.f31845j;
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.k(zzppVar);
        if (zzppVar.p0(string) != 0) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(zzgnVar.c(string), "Invalid conditional user property name");
            return;
        }
        zzic.k(zzppVar);
        if (zzppVar.v(obj, string) != 0) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Invalid conditional user property value", zzgnVar.c(string), obj);
            return;
        }
        Object objW = zzppVar.w(obj, string);
        if (objW == null) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Unable to normalize conditional user property value", zzgnVar.c(string), obj);
            return;
        }
        zzjh.a(bundle2, objW);
        long j3 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j3 > 15552000000L || j3 < 1)) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Invalid conditional user property timeout", zzgnVar.c(string), Long.valueOf(j3));
            return;
        }
        long j4 = bundle2.getLong("time_to_live");
        if (j4 > 15552000000L || j4 < 1) {
            zzic.m(zzguVar2);
            zzguVar2.f31769f.c("Invalid conditional user property time to live", zzgnVar.c(string), Long.valueOf(j4));
        } else {
            zzhz zzhzVar = zzicVar.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new zzki(this, bundle2));
        }
    }
}

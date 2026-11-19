package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.batch.android.BatchActionActivity;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.wrappers.Wrappers;
import defpackage.md;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class zzic implements zzjg {
    public static volatile zzic F;
    public int A;
    public int B;
    public final long D;
    public final long E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f31838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f31839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzae f31840c;
    public final zzal d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzhh f31841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzgu f31842f;
    public final zzhz g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzoc f31843h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzpp f31844i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final zzgn f31845j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DefaultClock f31846k;
    public final zzmb l;
    public final zzlj m;
    public final zzd n;
    public final zzlo o;
    public final String p;
    public zzgl q;
    public zznl r;
    public zzbb s;
    public zzgi t;
    public zzlq u;
    public Boolean w;
    public long x;
    public volatile Boolean y;
    public volatile boolean z;
    public boolean v = false;
    public final AtomicInteger C = new AtomicInteger(0);

    public zzic(zzjs zzjsVar) {
        long jCurrentTimeMillis;
        long jElapsedRealtime;
        Context applicationContext;
        Context context = zzjsVar.f31866a;
        zzae zzaeVar = new zzae();
        this.f31840c = zzaeVar;
        zzfr.f31721a = zzaeVar;
        this.f31838a = context;
        this.f31839b = zzjsVar.f31869e;
        this.y = zzjsVar.f31867b;
        this.p = zzjsVar.f31871h;
        this.z = true;
        com.google.android.gms.internal.measurement.zzlw.a(context);
        this.f31846k = DefaultClock.f29336a;
        Api api = com.google.android.gms.internal.measurement.zzjx.f30677a;
        new com.google.android.gms.internal.measurement.zzkk(context, com.google.android.gms.internal.measurement.zzjx.f30677a, Api.ApiOptions.j0, GoogleApi.Settings.f28994c).j("com.google.android.gms.measurement#".concat(String.valueOf(context.getPackageName())), new String[0]);
        AtomicReference atomicReference = com.google.android.gms.internal.measurement.zzlk.f30718k;
        if (atomicReference.get() == null) {
            try {
                applicationContext = context.getApplicationContext();
            } catch (NullPointerException unused) {
                com.google.android.gms.internal.measurement.zzlk.b();
                com.google.android.gms.internal.measurement.zzlz.a(Level.WARNING, (Executor) com.google.android.gms.internal.measurement.zzlk.m.get(), null, "context.getApplicationContext() yielded NullPointerException", new Object[0]);
                applicationContext = null;
            }
            if (applicationContext != null) {
                while (!atomicReference.compareAndSet(null, applicationContext) && atomicReference.get() == null) {
                }
            }
        }
        Long l = zzjsVar.f31870f;
        if (l != null) {
            jCurrentTimeMillis = l.longValue();
        } else {
            this.f31846k.getClass();
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        this.D = jCurrentTimeMillis;
        Long l2 = zzjsVar.g;
        if (l2 != null) {
            jElapsedRealtime = l2.longValue();
        } else {
            this.f31846k.getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.E = jElapsedRealtime;
        zzal zzalVar = new zzal(this);
        zzalVar.d = zzaj.f31551a;
        this.d = zzalVar;
        zzhh zzhhVar = new zzhh(this);
        zzhhVar.j();
        this.f31841e = zzhhVar;
        zzgu zzguVar = new zzgu(this);
        zzguVar.j();
        this.f31842f = zzguVar;
        zzpp zzppVar = new zzpp(this);
        zzppVar.j();
        this.f31844i = zzppVar;
        this.f31845j = new zzgn(new zzjr(this, zzjsVar));
        this.n = new zzd(this);
        zzmb zzmbVar = new zzmb(this);
        zzmbVar.i();
        this.l = zzmbVar;
        zzlj zzljVar = new zzlj(this);
        zzljVar.i();
        this.m = zzljVar;
        zzoc zzocVar = new zzoc(this);
        zzocVar.i();
        this.f31843h = zzocVar;
        zzlo zzloVar = new zzlo(this);
        zzloVar.j();
        this.o = zzloVar;
        zzhz zzhzVar = new zzhz(this);
        zzhzVar.j();
        this.g = zzhzVar;
        com.google.android.gms.internal.measurement.zzdb zzdbVar = zzjsVar.d;
        boolean z = zzdbVar == null || zzdbVar.f30605c == 0;
        if (this.f31838a.getApplicationContext() instanceof Application) {
            l(zzljVar);
            if (zzljVar.f31850a.f31838a.getApplicationContext() instanceof Application) {
                Application application = (Application) zzljVar.f31850a.f31838a.getApplicationContext();
                if (zzljVar.f31887c == null) {
                    zzljVar.f31887c = new zzky(zzljVar);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(zzljVar.f31887c);
                    application.registerActivityLifecycleCallbacks(zzljVar.f31887c);
                    zzgu zzguVar2 = zzljVar.f31850a.f31842f;
                    m(zzguVar2);
                    zzguVar2.n.a("Registered activity lifecycle callback");
                }
            }
        } else {
            m(zzguVar);
            zzguVar.f31771i.a("Application context is not an Application");
        }
        zzhzVar.p(new zzia(this, zzjsVar));
    }

    public static final void j(zzf zzfVar) {
        if (zzfVar != null) {
            return;
        }
        md.k("Component not created");
    }

    public static final void k(zzje zzjeVar) {
        if (zzjeVar != null) {
            return;
        }
        md.k("Component not created");
    }

    public static final void l(zzg zzgVar) {
        if (zzgVar == null) {
            md.k("Component not created");
        } else {
            if (zzgVar.f31741b) {
                return;
            }
            md.k("Component not initialized: ".concat(String.valueOf(zzgVar.getClass())));
        }
    }

    public static final void m(zzjf zzjfVar) {
        if (zzjfVar == null) {
            md.k("Component not created");
        } else {
            if (zzjfVar.f31851b) {
                return;
            }
            md.k("Component not initialized: ".concat(String.valueOf(zzjfVar.getClass())));
        }
    }

    public static zzic s(Context context, com.google.android.gms.internal.measurement.zzdb zzdbVar, Long l, Long l2) {
        Bundle bundle;
        if (zzdbVar != null) {
            Bundle bundle2 = zzdbVar.f30606e;
            zzdbVar = new com.google.android.gms.internal.measurement.zzdb(zzdbVar.f30604b, zzdbVar.f30605c, zzdbVar.d, bundle2, null);
        }
        Preconditions.h(context);
        Preconditions.h(context.getApplicationContext());
        if (F == null) {
            synchronized (zzic.class) {
                try {
                    if (F == null) {
                        F = new zzic(new zzjs(context, zzdbVar, l, l2));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else if (zzdbVar != null && (bundle = zzdbVar.f30606e) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.h(F);
            F.y = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.h(F);
        return F;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzae a() {
        return this.f31840c;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzgu b() {
        zzgu zzguVar = this.f31842f;
        m(zzguVar);
        return zzguVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzhz c() {
        zzhz zzhzVar = this.g;
        m(zzhzVar);
        return zzhzVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Context d() {
        return this.f31838a;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Clock e() {
        return this.f31846k;
    }

    public final boolean f() {
        return g() == 0;
    }

    public final int g() {
        zzhz zzhzVar = this.g;
        m(zzhzVar);
        zzhzVar.g();
        zzal zzalVar = this.d;
        if (zzalVar.u()) {
            return 1;
        }
        m(zzhzVar);
        zzhzVar.g();
        if (!this.z) {
            return 8;
        }
        zzhh zzhhVar = this.f31841e;
        k(zzhhVar);
        zzhhVar.g();
        Boolean boolValueOf = zzhhVar.k().contains("measurement_enabled") ? Boolean.valueOf(zzhhVar.k().getBoolean("measurement_enabled", true)) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue() ? 0 : 3;
        }
        zzae zzaeVar = zzalVar.f31850a.f31840c;
        Boolean boolT = zzalVar.t("firebase_analytics_collection_enabled");
        if (boolT != null) {
            return boolT.booleanValue() ? 0 : 4;
        }
        return (this.y == null || this.y.booleanValue()) ? 0 : 7;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0035  */
    /* JADX WARN: Code duplicated, block: B:24:0x0074  */
    /* JADX WARN: Code duplicated, block: B:27:0x007d  */
    public final boolean h() {
        zzpp zzppVar;
        Context context;
        boolean z = false;
        if (!this.v) {
            md.k("AppMeasurement is not initialized");
            return false;
        }
        zzhz zzhzVar = this.g;
        m(zzhzVar);
        zzhzVar.g();
        Boolean bool = this.w;
        DefaultClock defaultClock = this.f31846k;
        if (bool == null || this.x == 0) {
            defaultClock.getClass();
            this.x = SystemClock.elapsedRealtime();
            zzppVar = this.f31844i;
            k(zzppVar);
            if (zzppVar.J("android.permission.INTERNET") && zzppVar.J("android.permission.ACCESS_NETWORK_STATE")) {
                context = this.f31838a;
                if (Wrappers.a(context).c() || this.d.j() || (zzpp.b0(context) && zzpp.B(context))) {
                    z = true;
                }
            }
            this.w = Boolean.valueOf(z);
            if (z) {
                this.w = Boolean.valueOf(zzppVar.m(r().n()));
            }
        } else if (!bool.booleanValue()) {
            defaultClock.getClass();
            if (Math.abs(SystemClock.elapsedRealtime() - this.x) > 1000) {
                defaultClock.getClass();
                this.x = SystemClock.elapsedRealtime();
                zzppVar = this.f31844i;
                k(zzppVar);
                if (zzppVar.J("android.permission.INTERNET")) {
                    context = this.f31838a;
                    if (Wrappers.a(context).c()) {
                        z = true;
                    } else {
                        z = true;
                    }
                }
                this.w = Boolean.valueOf(z);
                if (z) {
                    this.w = Boolean.valueOf(zzppVar.m(r().n()));
                }
            }
        }
        return this.w.booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0029  */
    public final void i(int i2, Throwable th, byte[] bArr) {
        zzgu zzguVar;
        zzgu zzguVar2;
        int i3 = i2;
        zzgu zzguVar3 = this.f31842f;
        if (i3 == 200 || i3 == 204) {
            if (th == null) {
                zzhh zzhhVar = this.f31841e;
                k(zzhhVar);
                zzhhVar.t.b(true);
                if (bArr != null || bArr.length == 0) {
                    m(zzguVar3);
                    zzguVar3.m.a("Deferred Deep Link response empty.");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String strOptString = jSONObject.optString(BatchActionActivity.EXTRA_DEEPLINK_KEY, "");
                    if (TextUtils.isEmpty(strOptString)) {
                        m(zzguVar3);
                        zzguVar3.m.a("Deferred Deep Link is empty.");
                        return;
                    }
                    String strOptString2 = jSONObject.optString("gclid", "");
                    String strOptString3 = jSONObject.optString("gbraid", "");
                    String strOptString4 = jSONObject.optString("gad_source", "");
                    double dOptDouble = jSONObject.optDouble("timestamp", 0.0d);
                    Bundle bundle = new Bundle();
                    zzpp zzppVar = this.f31844i;
                    k(zzppVar);
                    zzic zzicVar = zzppVar.f31850a;
                    if (TextUtils.isEmpty(strOptString)) {
                        zzguVar2 = zzguVar3;
                    } else {
                        Context context = zzicVar.f31838a;
                        zzguVar2 = zzguVar3;
                        try {
                            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(strOptString)), 0);
                            if (listQueryIntentActivities != null && !listQueryIntentActivities.isEmpty()) {
                                if (!TextUtils.isEmpty(strOptString3)) {
                                    bundle.putString("gbraid", strOptString3);
                                }
                                if (!TextUtils.isEmpty(strOptString4)) {
                                    bundle.putString("gad_source", strOptString4);
                                }
                                bundle.putString("gclid", strOptString2);
                                bundle.putString("_cis", "ddp");
                                this.m.n("auto", "_cmp", bundle);
                                if (TextUtils.isEmpty(strOptString)) {
                                    return;
                                }
                                try {
                                    SharedPreferences.Editor editorEdit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                    editorEdit.putString(BatchActionActivity.EXTRA_DEEPLINK_KEY, strOptString);
                                    editorEdit.putLong("timestamp", Double.doubleToRawLongBits(dOptDouble));
                                    if (editorEdit.commit()) {
                                        Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                        Context context2 = zzicVar.f31838a;
                                        if (Build.VERSION.SDK_INT < 34) {
                                            context2.sendBroadcast(intent);
                                            return;
                                        } else {
                                            context2.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                            return;
                                        }
                                    }
                                    return;
                                } catch (RuntimeException e2) {
                                    zzgu zzguVar4 = zzppVar.f31850a.f31842f;
                                    m(zzguVar4);
                                    zzguVar4.f31769f.b(e2, "Failed to persist Deferred Deep Link. exception");
                                    return;
                                }
                                m(zzguVar);
                                zzguVar.f31769f.b(e, "Failed to parse the Deferred Deep Link response. exception");
                                return;
                            }
                        } catch (JSONException e3) {
                            e = e3;
                            zzguVar = zzguVar2;
                        }
                    }
                    m(zzguVar2);
                    zzguVar = zzguVar2;
                    try {
                        zzguVar.f31771i.d("Deferred Deep Link validation failed. gclid, gbraid, deep link", strOptString2, strOptString3, strOptString);
                        return;
                    } catch (JSONException e4) {
                        e = e4;
                    }
                } catch (JSONException e5) {
                    e = e5;
                    zzguVar = zzguVar3;
                }
            }
        } else if (i3 == 304) {
            i3 = 304;
            if (th == null) {
                zzhh zzhhVar2 = this.f31841e;
                k(zzhhVar2);
                zzhhVar2.t.b(true);
                if (bArr != null) {
                }
                m(zzguVar3);
                zzguVar3.m.a("Deferred Deep Link response empty.");
                return;
            }
        }
        m(zzguVar3);
        zzguVar3.f31771i.c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i3), th);
    }

    public final zzgn n() {
        return this.f31845j;
    }

    public final zzgl o() {
        l(this.q);
        return this.q;
    }

    public final zznl p() {
        l(this.r);
        return this.r;
    }

    public final zzbb q() {
        m(this.s);
        return this.s;
    }

    public final zzgi r() {
        l(this.t);
        return this.t;
    }
}

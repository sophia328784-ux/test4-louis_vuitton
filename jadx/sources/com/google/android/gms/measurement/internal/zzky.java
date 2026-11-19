package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzky implements Application.ActivityLifecycleCallbacks, zzkw {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzlj f31880b;

    public zzky(zzlj zzljVar) {
        this.f31880b = zzljVar;
    }

    public final void a(com.google.android.gms.internal.measurement.zzdd zzddVar, Bundle bundle) {
        zzmb zzmbVar;
        zzic zzicVar;
        Uri uri;
        zzlj zzljVar = this.f31880b;
        try {
            try {
                zzic zzicVar2 = zzljVar.f31850a;
                zzgu zzguVar = zzicVar2.f31842f;
                zzic.m(zzguVar);
                zzguVar.n.a("onActivityCreated");
                Intent intent = zzddVar.d;
                if (intent != null) {
                    Uri data = intent.getData();
                    if (data == null || !data.isHierarchical()) {
                        Bundle extras = intent.getExtras();
                        if (extras != null) {
                            String string = extras.getString("com.android.vending.referral_url");
                            if (!TextUtils.isEmpty(string)) {
                                data = Uri.parse(string);
                                uri = data;
                            }
                        }
                        uri = null;
                    } else {
                        uri = data;
                    }
                    if (uri != null && uri.isHierarchical()) {
                        zzic.k(zzicVar2.f31844i);
                        String str = zzpp.i0(intent) ? "gs" : "auto";
                        String queryParameter = uri.getQueryParameter(Payload.RFR);
                        boolean z = bundle == null;
                        zzhz zzhzVar = zzicVar2.g;
                        zzic.m(zzhzVar);
                        zzhzVar.p(new zzkx(this, z, uri, str, queryParameter));
                        zzicVar = zzljVar.f31850a;
                    }
                    zzmbVar = zzicVar.l;
                }
                zzicVar = zzljVar.f31850a;
            } catch (RuntimeException e2) {
                zzgu zzguVar2 = zzljVar.f31850a.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Throwable caught in onActivityCreated");
            }
            zzmbVar = zzicVar.l;
        } finally {
            zzmbVar = zzljVar.f31850a.l;
            zzic.l(zzmbVar);
            zzmbVar.n(zzddVar, bundle);
        }
    }

    public final void b(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzmb zzmbVar = this.f31880b.f31850a.l;
        zzic.l(zzmbVar);
        synchronized (zzmbVar.l) {
            try {
                if (Objects.equals(zzmbVar.g, zzddVar)) {
                    zzmbVar.g = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zzmbVar.f31850a.d.v()) {
            zzmbVar.f31902f.remove(Integer.valueOf(zzddVar.f30608b));
        }
    }

    public final void c(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzic zzicVar = this.f31880b.f31850a;
        zzmb zzmbVar = zzicVar.l;
        zzic.l(zzmbVar);
        synchronized (zzmbVar.l) {
            zzmbVar.f31906k = false;
            zzmbVar.f31903h = true;
        }
        zzic zzicVar2 = zzmbVar.f31850a;
        zzicVar2.f31846k.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (zzicVar2.d.v()) {
            zzlu zzluVarQ = zzmbVar.q(zzddVar);
            zzmbVar.d = zzmbVar.f31900c;
            zzmbVar.f31900c = null;
            zzhz zzhzVar = zzicVar2.g;
            zzic.m(zzhzVar);
            zzhzVar.p(new zzlz(zzmbVar, zzluVarQ, jElapsedRealtime));
        } else {
            zzmbVar.f31900c = null;
            zzhz zzhzVar2 = zzicVar2.g;
            zzic.m(zzhzVar2);
            zzhzVar2.p(new zzly(zzmbVar, jElapsedRealtime));
        }
        zzoc zzocVar = zzicVar.f31843h;
        zzic.l(zzocVar);
        zzic zzicVar3 = zzocVar.f31850a;
        zzicVar3.f31846k.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        zzhz zzhzVar3 = zzicVar3.g;
        zzic.m(zzhzVar3);
        zzhzVar3.p(new zznv(zzocVar, jElapsedRealtime2));
    }

    public final void d(com.google.android.gms.internal.measurement.zzdd zzddVar) {
        zzic zzicVar = this.f31880b.f31850a;
        zzoc zzocVar = zzicVar.f31843h;
        zzic.l(zzocVar);
        zzic zzicVar2 = zzocVar.f31850a;
        zzicVar2.f31846k.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zzhz zzhzVar = zzicVar2.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new zznu(zzocVar, jElapsedRealtime));
        zzmb zzmbVar = zzicVar.l;
        zzic.l(zzmbVar);
        Object obj = zzmbVar.l;
        synchronized (obj) {
            try {
                zzmbVar.f31906k = true;
                if (!Objects.equals(zzddVar, zzmbVar.g)) {
                    synchronized (obj) {
                        zzmbVar.g = zzddVar;
                        zzmbVar.f31903h = false;
                        zzic zzicVar3 = zzmbVar.f31850a;
                        if (zzicVar3.d.v()) {
                            zzmbVar.f31904i = null;
                            zzhz zzhzVar2 = zzicVar3.g;
                            zzic.m(zzhzVar2);
                            zzhzVar2.p(new zzma(zzmbVar));
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzic zzicVar4 = zzmbVar.f31850a;
        if (!zzicVar4.d.v()) {
            zzmbVar.f31900c = zzmbVar.f31904i;
            zzhz zzhzVar3 = zzicVar4.g;
            zzic.m(zzhzVar3);
            zzhzVar3.p(new zzlx(zzmbVar));
            return;
        }
        zzmbVar.o(zzddVar.f30609c, zzmbVar.q(zzddVar), false);
        zzd zzdVar = zzmbVar.f31850a.n;
        zzic.j(zzdVar);
        zzic zzicVar5 = zzdVar.f31850a;
        zzicVar5.f31846k.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        zzhz zzhzVar4 = zzicVar5.g;
        zzic.m(zzhzVar4);
        zzhzVar4.p(new zzc(zzdVar, jElapsedRealtime2));
    }

    public final void e(com.google.android.gms.internal.measurement.zzdd zzddVar, Bundle bundle) {
        zzlu zzluVar;
        zzmb zzmbVar = this.f31880b.f31850a.l;
        zzic.l(zzmbVar);
        if (!zzmbVar.f31850a.d.v() || bundle == null || (zzluVar = (zzlu) zzmbVar.f31902f.get(Integer.valueOf(zzddVar.f30608b))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong(b.a.f24015b, zzluVar.f31897c);
        bundle2.putString("name", zzluVar.f31895a);
        bundle2.putString("referrer_name", zzluVar.f31896b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(com.google.android.gms.internal.measurement.zzdd.W1(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        b(com.google.android.gms.internal.measurement.zzdd.W1(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        c(com.google.android.gms.internal.measurement.zzdd.W1(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        d(com.google.android.gms.internal.measurement.zzdd.W1(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        e(com.google.android.gms.internal.measurement.zzdd.W1(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}

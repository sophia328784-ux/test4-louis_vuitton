package com.google.android.gms.internal.measurement;

import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class zzez {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile zzez f30615h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExecutorService f30616a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppMeasurementSdk f30617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30618c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f30619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile zzcp f30620f;
    public volatile long g;

    public zzez(Context context, Bundle bundle) {
        zzeb zzebVar = new zzeb(this);
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zzebVar);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.f30616a = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.f30617b = new AppMeasurementSdk(this);
        this.f30618c = new ArrayList();
        try {
            if (com.google.android.gms.measurement.internal.zzlt.a(context, com.google.android.gms.measurement.internal.zzhu.a(context)) != null) {
                try {
                    Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, zzez.class.getClassLoader());
                } catch (ClassNotFoundException unused) {
                    this.f30619e = true;
                    return;
                }
            }
        } catch (IllegalStateException unused2) {
        }
        j(new zzdp(this, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new zzey(this));
    }

    public static zzez m(Context context, Bundle bundle) {
        Preconditions.h(context);
        if (f30615h == null) {
            synchronized (zzez.class) {
                try {
                    if (f30615h == null) {
                        f30615h = new zzez(context, bundle == null ? new Bundle() : new Bundle(bundle));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f30615h;
    }

    public final String A() {
        zzcm zzcmVar = new zzcm();
        j(new zzdu(this, zzcmVar));
        return zzcmVar.F2(500L);
    }

    public final String B() {
        zzcm zzcmVar = new zzcm();
        j(new zzdv(this, zzcmVar));
        return zzcmVar.F2(50L);
    }

    public final long C() {
        zzcm zzcmVar = new zzcm();
        j(new zzdw(this, zzcmVar));
        Long l = (Long) zzcm.H2(zzcmVar.G2(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long jNextLong = new Random(System.nanoTime() ^ System.currentTimeMillis()).nextLong();
        int i2 = this.d + 1;
        this.d = i2;
        return jNextLong + ((long) i2);
    }

    public final String a() {
        zzcm zzcmVar = new zzcm();
        j(new zzdx(this, zzcmVar));
        return zzcmVar.F2(500L);
    }

    public final String b() {
        zzcm zzcmVar = new zzcm();
        j(new zzdy(this, zzcmVar));
        return zzcmVar.F2(500L);
    }

    public final Map c(String str, String str2, boolean z) {
        zzcm zzcmVar = new zzcm();
        j(new zzdz(this, str, str2, z, zzcmVar));
        Bundle bundleG2 = zzcmVar.G2(LiveTranslationEntity.DefaultSentenceTimeOut);
        if (bundleG2 == null || bundleG2.size() == 0) {
            return Collections.EMPTY_MAP;
        }
        HashMap map = new HashMap(bundleG2.size());
        for (String str3 : bundleG2.keySet()) {
            Object obj = bundleG2.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    public final void d(String str, Exception exc) {
        j(new zzea(this, false, 5, str, exc, null, null));
    }

    public final int e(String str) {
        zzcm zzcmVar = new zzcm();
        j(new zzed(this, str, zzcmVar));
        Integer num = (Integer) zzcm.H2(zzcmVar.G2(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String f() {
        zzcm zzcmVar = new zzcm();
        j(new zzee(this, zzcmVar));
        return zzcmVar.F2(120000L);
    }

    public final Long g() {
        zzcm zzcmVar = new zzcm();
        j(new zzef(this, zzcmVar));
        return (Long) zzcm.H2(zzcmVar.G2(120000L), Long.class);
    }

    public final void h(boolean z) {
        j(new zzeh(this, z));
    }

    public final void i(Bundle bundle) {
        j(new zzei(this, bundle));
    }

    public final void j(zzeo zzeoVar) {
        this.f30616a.execute(zzeoVar);
    }

    public final void k(Exception exc, boolean z, boolean z2) {
        this.f30619e |= z;
        if (!z && z2) {
            d("Error with data collection. Data lost.", exc);
        }
    }

    public final void l(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l, Long l2) {
        j(new zzen(this, l, l2, str, str2, bundle, z, z2));
    }

    public final void n(com.google.android.gms.measurement.internal.zzjp zzjpVar) {
        zzep zzepVar = new zzep(zzjpVar);
        if (this.f30620f != null) {
            try {
                this.f30620f.setEventInterceptor(zzepVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
            }
        }
        j(new zzej(this, zzepVar));
    }

    public final void o(com.google.android.gms.measurement.internal.zzjq zzjqVar) {
        ArrayList arrayList = this.f30618c;
        synchronized (arrayList) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                try {
                    if (zzjqVar.equals(((Pair) arrayList.get(i2)).first)) {
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzeq zzeqVar = new zzeq(zzjqVar);
            arrayList.add(new Pair(zzjqVar, zzeqVar));
            if (this.f30620f != null) {
                try {
                    this.f30620f.registerOnMeasurementEventListener(zzeqVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                }
            }
            j(new zzel(this, zzeqVar));
        }
    }

    public final void p(String str, String str2, Object obj, boolean z) {
        j(new zzdf(this, str, str2, obj, z));
    }

    public final void q(Bundle bundle) {
        j(new zzdg(this, bundle));
    }

    public final void r(String str, String str2, Bundle bundle) {
        j(new zzdh(this, str, str2, bundle));
    }

    public final List s(String str, String str2) {
        zzcm zzcmVar = new zzcm();
        j(new zzdi(this, str, str2, zzcmVar));
        List list = (List) zzcm.H2(zzcmVar.G2(LiveTranslationEntity.DefaultSentenceTimeOut), List.class);
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public final void t(String str) {
        j(new zzdj(this, str));
    }

    public final void u(zzdd zzddVar, String str, String str2) {
        j(new zzdk(this, zzddVar, str, str2));
    }

    public final void v(Boolean bool) {
        j(new zzdl(this, bool));
    }

    public final void w(Bundle bundle) {
        j(new zzdm(this, bundle));
    }

    public final void x(String str) {
        j(new zzdq(this, str));
    }

    public final void y(String str) {
        j(new zzdr(this, str));
    }

    public final void z(Runnable runnable) {
        j(new zzdt(this, runnable));
    }
}

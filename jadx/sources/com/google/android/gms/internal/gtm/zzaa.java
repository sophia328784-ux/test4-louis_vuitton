package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
public final class zzaa {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f29930j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static zzaa f29931k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile AdvertisingIdClient.Info f29933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile long f29934c;
    public volatile long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f29935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Clock f29936f;
    public final Thread g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f29932a = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f29937h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzz f29938i = new zzx(this);

    public zzaa(Context context, zzz zzzVar, Clock clock) {
        this.f29936f = clock;
        if (context != null) {
            this.f29935e = context.getApplicationContext();
        } else {
            this.f29935e = null;
        }
        this.f29934c = clock.a();
        this.g = new Thread(new zzy(this));
    }

    public static zzaa a(Context context) {
        if (f29931k == null) {
            synchronized (f29930j) {
                try {
                    if (f29931k == null) {
                        zzaa zzaaVar = new zzaa(context, null, DefaultClock.f29336a);
                        f29931k = zzaaVar;
                        zzaaVar.g.start();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f29931k;
    }

    public final void b() {
        if (this.f29936f.a() - this.f29934c > 30000) {
            Object obj = this.f29937h;
            synchronized (obj) {
                obj.notify();
            }
            this.f29934c = this.f29936f.a();
        }
    }
}

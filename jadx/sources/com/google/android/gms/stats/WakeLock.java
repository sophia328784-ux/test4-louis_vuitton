package com.google.android.gms.stats;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.stats.zzi;
import com.networkbench.agent.impl.performance.coulometry.a;
import defpackage.r81;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class WakeLock {
    public static volatile ScheduledExecutorService n;
    public static final Object o = new Object();
    public static volatile zzd p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f32066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PowerManager.WakeLock f32067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f32068c;
    public ScheduledFuture d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f32069e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f32070f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.google.android.gms.internal.stats.zzb f32071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DefaultClock f32072i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f32073j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashMap f32074k;
    public final AtomicInteger l;
    public final ScheduledExecutorService m;

    public WakeLock(Context context, int i2, String str) {
        boolean zBooleanValue;
        String packageName = context.getPackageName();
        this.f32066a = new Object();
        this.f32068c = 0;
        this.f32070f = new HashSet();
        this.g = true;
        this.f32072i = DefaultClock.f29336a;
        this.f32074k = new HashMap();
        this.l = new AtomicInteger(0);
        Preconditions.f(str, "WakeLock: wakeLockName must not be empty");
        context.getApplicationContext();
        WorkSource workSource = null;
        this.f32071h = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f32073j = str;
        } else {
            String strValueOf = String.valueOf(str);
            this.f32073j = strValueOf.length() != 0 ? "*gcore*:".concat(strValueOf) : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            StringBuilder sb = new StringBuilder(29);
            sb.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new zzi(sb.toString());
        }
        this.f32067b = powerManager.newWakeLock(i2, str);
        Method method = WorkSourceUtil.f29346a;
        synchronized (WorkSourceUtil.class) {
            Boolean bool = WorkSourceUtil.f29349e;
            if (bool != null) {
                zBooleanValue = bool.booleanValue();
            } else {
                zBooleanValue = ContextCompat.checkSelfPermission(context, "android.permission.UPDATE_DEVICE_STATS") == 0;
                WorkSourceUtil.f29349e = Boolean.valueOf(zBooleanValue);
            }
        }
        if (zBooleanValue) {
            int i3 = Strings.f29345a;
            packageName = (packageName == null || packageName.trim().isEmpty()) ? context.getPackageName() : packageName;
            if (context.getPackageManager() != null && packageName != null) {
                try {
                    ApplicationInfo applicationInfoA = Wrappers.a(context).a(0, packageName);
                    if (applicationInfoA == null) {
                        "Could not get applicationInfo from package: ".concat(packageName);
                    } else {
                        int i4 = applicationInfoA.uid;
                        workSource = new WorkSource();
                        WorkSourceUtil.a(workSource, i4, packageName);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    "Could not find package: ".concat(packageName);
                }
            }
            if (workSource != null) {
                try {
                    this.f32067b.setWorkSource(workSource);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e2) {
                    Log.wtf(a.f37792c, e2.toString());
                }
            }
        }
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = n;
        if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
            synchronized (o) {
                try {
                    scheduledExecutorServiceUnconfigurableScheduledExecutorService = n;
                    if (scheduledExecutorServiceUnconfigurableScheduledExecutorService == null) {
                        scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                        n = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.m = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }

    public final void a() {
        this.l.incrementAndGet();
        long jMin = Math.min(60000L, Math.max(Math.min(Long.MAX_VALUE, 31622400000L), 1L));
        synchronized (this.f32066a) {
            try {
                if (!b()) {
                    this.f32071h = com.google.android.gms.internal.stats.zzb.f31138b;
                    this.f32067b.acquire();
                    this.f32072i.getClass();
                    SystemClock.elapsedRealtime();
                }
                this.f32068c++;
                if (this.g) {
                    TextUtils.isEmpty(null);
                }
                zzc zzcVar = (zzc) this.f32074k.get(null);
                if (zzcVar == null) {
                    zzcVar = new zzc();
                    this.f32074k.put(null, zzcVar);
                }
                zzcVar.f32075a++;
                this.f32072i.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = Long.MAX_VALUE - jElapsedRealtime > jMin ? jElapsedRealtime + jMin : Long.MAX_VALUE;
                if (j2 > this.f32069e) {
                    this.f32069e = j2;
                    ScheduledFuture scheduledFuture = this.d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.d = this.m.schedule(new Runnable() { // from class: com.google.android.gms.stats.zza
                        @Override // java.lang.Runnable
                        public final void run() {
                            WakeLock wakeLock = this.zza;
                            synchronized (wakeLock.f32066a) {
                                try {
                                    if (wakeLock.b()) {
                                        String.valueOf(wakeLock.f32073j).concat(" ** IS FORCE-RELEASED ON TIMEOUT **");
                                        wakeLock.d();
                                        if (wakeLock.b()) {
                                            wakeLock.f32068c = 1;
                                            wakeLock.e();
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    }, jMin, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f32066a) {
            z = this.f32068c > 0;
        }
        return z;
    }

    public final void c() {
        if (this.l.decrementAndGet() < 0) {
            String.valueOf(this.f32073j).concat(" release without a matched acquire!");
        }
        synchronized (this.f32066a) {
            try {
                if (this.g) {
                    TextUtils.isEmpty(null);
                }
                if (this.f32074k.containsKey(null)) {
                    zzc zzcVar = (zzc) this.f32074k.get(null);
                    if (zzcVar != null) {
                        int i2 = zzcVar.f32075a - 1;
                        zzcVar.f32075a = i2;
                        if (i2 == 0) {
                            this.f32074k.remove(null);
                        }
                    }
                } else {
                    String.valueOf(this.f32073j).concat(" counter does not exist");
                }
                e();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        HashSet hashSet = this.f32070f;
        if (hashSet.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        hashSet.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        r81.h();
    }

    public final void e() {
        synchronized (this.f32066a) {
            try {
                if (b()) {
                    if (this.g) {
                        int i2 = this.f32068c - 1;
                        this.f32068c = i2;
                        if (i2 > 0) {
                            return;
                        }
                    } else {
                        this.f32068c = 0;
                    }
                    d();
                    Iterator it = this.f32074k.values().iterator();
                    while (it.hasNext()) {
                        ((zzc) it.next()).f32075a = 0;
                    }
                    this.f32074k.clear();
                    ScheduledFuture scheduledFuture = this.d;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                        this.d = null;
                        this.f32069e = 0L;
                    }
                    if (this.f32067b.isHeld()) {
                        try {
                            try {
                                this.f32067b.release();
                                if (this.f32071h != null) {
                                    this.f32071h = null;
                                }
                            } catch (RuntimeException e2) {
                                if (!e2.getClass().equals(RuntimeException.class)) {
                                    throw e2;
                                }
                                String.valueOf(this.f32073j).concat(" failed to release!");
                                if (this.f32071h != null) {
                                    this.f32071h = null;
                                }
                            }
                        } catch (Throwable th) {
                            if (this.f32071h != null) {
                                this.f32071h = null;
                            }
                            throw th;
                        }
                    } else {
                        String.valueOf(this.f32073j).concat(" should be held!");
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}

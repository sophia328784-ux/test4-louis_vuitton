package com.networkbench.agent.impl.performance.coulometry;

import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.performance.coulometry.a.b.c;
import com.networkbench.agent.impl.performance.coulometry.a.b.d;
import com.networkbench.agent.impl.performance.coulometry.a.b.e;
import com.networkbench.agent.impl.performance.coulometry.b.k;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import defpackage.pq0;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    BatteryManager f37838a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f37840c;
    private int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ScheduledFuture<?> f37842f;
    private boolean g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37841e = 600000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<e> f37839b = pq0.v();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static int f37845a = 3;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static int f37846b = 3;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static int f37847c = 3;

        public static boolean a() {
            int i2 = f37845a;
            if (i2 != 3) {
                return i2 == 1;
            }
            String str = Build.BRAND;
            int i3 = (ak.r(str) || !str.toLowerCase().contains("oppo")) ? 2 : 1;
            f37845a = i3;
            return i3 == 1;
        }

        public static boolean b() {
            int i2 = f37845a;
            if (i2 != 3) {
                return i2 == 1;
            }
            String str = Build.BRAND;
            int i3 = (ak.r(str) || !str.toLowerCase().contains("realme")) ? 2 : 1;
            f37845a = i3;
            return i3 == 1;
        }

        public static boolean c() {
            int i2 = f37846b;
            if (i2 != 3) {
                return i2 == 1;
            }
            String str = Build.HARDWARE;
            int i3 = (ak.r(str) || !(str.toLowerCase().contains("hi") || str.toLowerCase().contains("kirin"))) ? 2 : 1;
            f37846b = i3;
            return i3 == 1;
        }

        public static boolean d() {
            int i2 = f37847c;
            if (i2 != 3) {
                return i2 == 1;
            }
            String str = Build.BRAND;
            int i3 = (ak.r(str) || !str.toLowerCase().contains("samsung")) ? 2 : 1;
            f37847c = i3;
            return i3 == 1;
        }
    }

    public b(int i2, boolean z) {
        this.d = 5000;
        this.g = true;
        if (i2 > 5) {
            this.d = i2;
        }
        this.g = z;
        this.f37840c = Executors.newScheduledThreadPool(2);
    }

    private synchronized void a(c cVar) {
        try {
            g.y("extractedBattery " + this.f37839b.size());
            if (this.f37839b.size() > 0) {
                d dVar = new d(com.networkbench.agent.impl.performance.coulometry.a.f37794f, "", "°C");
                d dVar2 = new d(com.networkbench.agent.impl.performance.coulometry.a.g, "", "mA");
                for (e eVar : this.f37839b) {
                    eVar.a();
                    if (eVar.b().floatValue() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        dVar.a(a(eVar.b().floatValue(), eVar.d, eVar.f37830a), dVar.b());
                    }
                    if (eVar.c().floatValue() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        dVar2.a(a(eVar.c().floatValue(), eVar.d, eVar.f37830a), dVar2.b());
                    }
                }
                cVar.a(dVar2);
                cVar.a(dVar);
                this.f37839b.clear();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private void b(long j2, c cVar) {
        com.networkbench.agent.impl.performance.coulometry.b.b bVar = (com.networkbench.agent.impl.performance.coulometry.b.b) CoulometryModuleWrapper.getInstance().getEvent(com.networkbench.agent.impl.performance.coulometry.a.f37790a);
        if (bVar == null) {
            g.y("event is null");
            return;
        }
        long jD = bVar.d();
        g.y("extractedLocation  locationDruation:" + jD);
        d dVar = new d(com.networkbench.agent.impl.performance.coulometry.a.f37797j, "", NBSSpanMetricUnit.Second);
        dVar.a(a(((float) jD) / 1000.0f, j2), dVar.b());
        cVar.a(dVar);
    }

    private void c(long j2, c cVar) {
        com.networkbench.agent.impl.performance.coulometry.b.b bVar = (com.networkbench.agent.impl.performance.coulometry.b.b) CoulometryModuleWrapper.getInstance().getEvent(com.networkbench.agent.impl.performance.coulometry.a.f37792c);
        if (bVar == null) {
            g.y("event is null");
            return;
        }
        long jF = bVar.f();
        g.y("extractedWakeLock  wakeLockDruation:" + jF);
        d dVar = new d(com.networkbench.agent.impl.performance.coulometry.a.f37796i, "", NBSSpanMetricUnit.Second);
        dVar.a(a(((float) jF) / 1000.0f, j2), dVar.b());
        cVar.a(dVar);
    }

    private void d(long j2, c cVar) {
        k kVar = (k) CoulometryModuleWrapper.getInstance().getEvent(com.networkbench.agent.impl.performance.coulometry.a.f37795h);
        if (kVar != null) {
            long jA = kVar.a();
            g.y("extractedTrafficCount  trafficCount:" + jA);
            d dVar = new d(com.networkbench.agent.impl.performance.coulometry.a.f37795h, "", NBSSpanMetricUnit.Kilobytes);
            dVar.a(a((float) jA, j2), dVar.b());
            cVar.a(dVar);
        }
    }

    private void d() {
        this.f37840c = Executors.newScheduledThreadPool(1);
    }

    public boolean b() {
        return this.f37842f != null;
    }

    public synchronized void c() {
        try {
            if (!b()) {
                g.y("NBSCoulometryService: Attempting to stop when not running");
                return;
            }
            try {
                this.f37842f.cancel(true);
                this.f37842f = null;
                ScheduledExecutorService scheduledExecutorService = this.f37840c;
                if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
                    this.f37840c.shutdown();
                }
            } catch (Throwable th) {
                g.p("HarvestTimer stop  has an error : " + th.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a() {
        try {
            if (b()) {
                return;
            }
            ScheduledExecutorService scheduledExecutorService = this.f37840c;
            if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                d();
            }
            if (r.u().aA().a()) {
                g.y("NBSGlobalSettings.isMainProcess :" + r.p);
                if (this.g && r.p == 0) {
                    this.f37842f = this.f37840c.scheduleWithFixedDelay(new y() { // from class: com.networkbench.agent.impl.performance.coulometry.b.1

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        float f37843a = Call.Parameters.DEFAULT_CAMERA_ZOOM;

                        @Override // com.networkbench.agent.impl.util.y
                        public void tryCatchRun() {
                            float fA;
                            if (NBSApplicationStateMonitor.getInstance().isForegrounded()) {
                                b bVar = b.this;
                                if (bVar.f37838a == null) {
                                    bVar.f37838a = (BatteryManager) r.u().J().getSystemService("batterymanager");
                                }
                                Intent intentRegisterReceiver = r.u().J().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                                if (intentRegisterReceiver != null) {
                                    int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
                                    int intExtra2 = 0;
                                    if (intExtra == 2 || intExtra == 5) {
                                        fA = 0.0f;
                                    } else {
                                        if (this.f37843a == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                            this.f37843a = b.a(b.this.f37838a);
                                        }
                                        float f2 = this.f37843a;
                                        b bVar2 = b.this;
                                        fA = f2 > 10000.0f ? b.a(bVar2.f37838a) / 1000.0f : b.a(bVar2.f37838a);
                                        intExtra2 = intentRegisterReceiver.getIntExtra("temperature", 0);
                                    }
                                    if (fA == Call.Parameters.DEFAULT_CAMERA_ZOOM || fA == -1.0f || intExtra2 == 0 || intExtra2 == -1) {
                                        return;
                                    }
                                    b.this.a(intExtra2, fA);
                                }
                            }
                        }
                    }, 0L, this.d, TimeUnit.MILLISECONDS);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(com.networkbench.agent.impl.performance.b bVar) {
        if (r.u().aA().a()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            a(bVar.d());
            d(jCurrentTimeMillis, bVar.d());
            c(jCurrentTimeMillis, bVar.d());
            b(jCurrentTimeMillis, bVar.d());
            a(jCurrentTimeMillis, bVar.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(float f2, float f3) {
        e eVar;
        try {
            int size = this.f37839b.size();
            if (size != 0 && (eVar = this.f37839b.get(size - 1)) != null && eVar.f37830a.equals(Harvest.currentActivity)) {
                if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 != -1.0f) {
                    eVar.f37831b.add(Float.valueOf(f2 / 10.0f));
                }
                if (f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 == -1.0f) {
                    return;
                }
                eVar.f37832c.add(Float.valueOf(f3));
                return;
            }
            e eVar2 = new e(Harvest.currentActivity);
            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 != -1.0f) {
                eVar2.f37831b.add(Float.valueOf(f2 / 10.0f));
            }
            if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 != -1.0f) {
                eVar2.f37832c.add(Float.valueOf(f3));
            }
            this.f37839b.add(eVar2);
        } catch (Throwable th) {
            g.y("addTemperatureAndElectric has an error : " + th.getMessage());
        }
    }

    private void a(long j2, c cVar) {
        com.networkbench.agent.impl.performance.coulometry.b.b bVar = (com.networkbench.agent.impl.performance.coulometry.b.b) CoulometryModuleWrapper.getInstance().getEvent(com.networkbench.agent.impl.performance.coulometry.a.f37791b);
        if (bVar != null) {
            long jE = bVar.e();
            g.y("extractedAlarm alarmSetCount:" + jE);
            d dVar = new d(com.networkbench.agent.impl.performance.coulometry.a.f37798k, "", "");
            dVar.a(a((float) jE, j2), dVar.b());
            cVar.a(dVar);
            return;
        }
        g.y("event is null");
    }

    public static float a(BatteryManager batteryManager) {
        float longProperty = batteryManager.getLongProperty(2);
        return (longProperty < -1.0E7f || longProperty > 1.0E7f) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : Math.abs(longProperty);
    }

    private com.networkbench.agent.impl.performance.coulometry.a.b.b a(float f2, long j2) {
        com.networkbench.agent.impl.performance.coulometry.a.b.b bVar = new com.networkbench.agent.impl.performance.coulometry.a.b.b(j2, f2);
        bVar.a(new com.networkbench.agent.impl.performance.coulometry.a.b.a("app.on_background", ContentTree.ROOT_ID));
        return bVar;
    }

    private com.networkbench.agent.impl.performance.coulometry.a.b.b a(float f2, long j2, String str) {
        com.networkbench.agent.impl.performance.coulometry.a.b.b bVar = new com.networkbench.agent.impl.performance.coulometry.a.b.b(j2, f2);
        bVar.a(new com.networkbench.agent.impl.performance.coulometry.a.b.a("page.name", str));
        bVar.a(new com.networkbench.agent.impl.performance.coulometry.a.b.a("app.on_background", ContentTree.ROOT_ID));
        return bVar;
    }
}

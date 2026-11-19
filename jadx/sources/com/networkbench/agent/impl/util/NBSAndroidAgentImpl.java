package com.networkbench.agent.impl.util;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.view.GestureDetector;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.PrivacyDataType;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.crash.NativeCrashInterface;
import com.networkbench.agent.impl.fragmentadapt.FragmentTrackHelper;
import com.networkbench.agent.impl.harvest.ApplicationInformation;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.DeviceData;
import com.networkbench.agent.impl.harvest.DeviceInformation;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.harvest.HarvestURLConnection;
import com.networkbench.agent.impl.harvest.SystemInfo;
import com.networkbench.agent.impl.instrumentation.NBSGestureInstrument;
import com.networkbench.agent.impl.session.NBSNetworkCallback;
import defpackage.d21;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class NBSAndroidAgentImpl implements com.networkbench.agent.impl.background.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38235a = "NBSAndroidAgentImpl";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38236b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f38237c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private af f38239f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DeviceInformation f38241i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private NBSNetworkCallback f38242j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ApplicationInformation f38243k;
    private final ArrayList<com.networkbench.agent.impl.data.f> d = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.networkbench.agent.impl.data.j f38238e = com.networkbench.agent.impl.data.j.f36911c;
    private final Lock g = new ReentrantLock();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f38240h = false;

    public NBSAndroidAgentImpl(Context context) {
        Context contextB = b(context);
        this.f38237c = contextB;
        af afVar = new af(contextB);
        this.f38239f = afVar;
        afVar.k();
        com.networkbench.agent.impl.util.c.c.a().a(new y() { // from class: com.networkbench.agent.impl.util.NBSAndroidAgentImpl.1
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                try {
                    NBSAndroidAgentImpl.f38236b.a("getVersion : " + NBSAgent.getVersion());
                    NBSAndroidAgentImpl.f38236b.a("saveState : " + NBSAndroidAgentImpl.this.f38239f.r());
                    if (ak.r(NBSAndroidAgentImpl.this.f38239f.r())) {
                        r.u().b(true);
                    } else if (NBSAgent.getVersion().equals(NBSAndroidAgentImpl.this.f38239f.r())) {
                        r.u().b(false);
                    } else if (!NBSAndroidAgentImpl.this.f38239f.r().startsWith("2.15") && !NBSAndroidAgentImpl.this.f38239f.r().startsWith("2.16")) {
                        r.u().b(true);
                    }
                } catch (Throwable th) {
                    try {
                        com.networkbench.agent.impl.c.g.p("NBSAndroidAgentImpl  has an error : " + th.getMessage());
                    } finally {
                        NBSAndroidAgentImpl.this.f38239f.l(NBSAgent.getVersion());
                    }
                }
            }
        });
        NBSApplicationStateMonitor.getInstance().addApplicationStateListener(this);
        Application applicationE = ak.e();
        if (applicationE != null && r.u().k() && !com.networkbench.agent.impl.floatbtnmanager.c.f37078a) {
            f38236b.a("application start to registerActivityLifecycleCallbacks");
            applicationE.registerActivityLifecycleCallbacks(com.networkbench.agent.impl.floatbtnmanager.c.b());
        }
        if (applicationE != null && r.u().ad()) {
            f38236b.a("application start to NBSH5ActivityLifeMonitor");
        }
        r.u().g(com.networkbench.agent.impl.crash.b.b(context));
    }

    private void addLocationListener() {
    }

    private void b(DeviceInformation deviceInformation) {
        deviceInformation.setOsVersion(com.networkbench.agent.impl.e.b.a(PrivacyDataType.PrivacyDataOSVersion));
        deviceInformation.setModel(com.networkbench.agent.impl.e.b.a(PrivacyDataType.PrivacyDataManufacturerModel));
        deviceInformation.setManufacturer(com.networkbench.agent.impl.e.b.a(PrivacyDataType.PrivacyDataManufacturer));
        deviceInformation.setScreenSize(com.networkbench.agent.impl.e.b.b(PrivacyDataType.PrivacyDataDeviceType));
        deviceInformation.addMisc("size", Integer.valueOf(com.networkbench.agent.impl.e.b.c(PrivacyDataType.PrivacyDataDeviceSize)));
    }

    private String t() {
        return u() ? "HarmonyOS" : "Android";
    }

    private static boolean u() {
        if (r.u().f38394e) {
            try {
                Class.forName("ohos.utils.system.SystemCapability");
                return true;
            } catch (ClassNotFoundException unused) {
            }
        }
        return false;
    }

    private static void v() {
        com.networkbench.agent.impl.util.c.c.a().a(new y() { // from class: com.networkbench.agent.impl.util.NBSAndroidAgentImpl.3
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                try {
                    NBSAndroidAgentImpl.w();
                } catch (Throwable th) {
                    z81.k(new StringBuilder("getUpdateHint  has an error : "), th);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void w() {
        try {
            new HarvestURLConnection(ak.i(), NBSAgent.getDeviceInformation().initUserHeaderValue(), r.u().z()).sendDataStr(null, com.networkbench.agent.impl.harvest.a.l.a(com.networkbench.agent.impl.harvest.a.r.UPDATE_HINT, HarvestConnection.redirectHost, true));
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("getUpdateHintRunnable error:"), f38236b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (r.u().k()) {
            try {
                b();
                r.o = false;
                r.f38393k = System.nanoTime();
                Harvest.start();
                com.networkbench.agent.impl.f.e.a().b();
                if (r.u().X() && r.p == 0 && com.networkbench.agent.impl.b.h.c()) {
                    com.networkbench.agent.impl.b.h.a(com.networkbench.agent.impl.b.b.a());
                }
                if (r.u().ae()) {
                    f38236b.a("reStart plugin_enabled is enabled");
                }
                c(r.u().J());
            } catch (Throwable th) {
                f38236b.a("NBSAndroidAgentImpl start() has an error : ", th);
            }
        }
    }

    private String y() {
        String strT = this.f38239f.t();
        if (strT != null) {
            return strT;
        }
        String string = UUID.randomUUID().toString();
        this.f38239f.n(string);
        return string;
    }

    public void a() {
        if (k()) {
            a(false);
            return;
        }
        try {
            b();
            r.o = false;
            r.f38393k = System.nanoTime();
            Harvest.start();
            if (r.u().X() && r.p == 0 && com.networkbench.agent.impl.b.h.c()) {
                Logger.debug(f38235a, "LooperMonitor register listener");
                com.networkbench.agent.impl.b.h.a(com.networkbench.agent.impl.b.b.a());
            }
            if (r.u().af()) {
                Logger.debug(f38235a, "register fragment callback");
                FragmentTrackHelper.addFragmentCallbacks(com.networkbench.agent.impl.fragmentadapt.f.f37150a);
                FragmentTrackHelper.addFragmentCallbacks(new com.networkbench.agent.impl.fragmentadapt.d());
            }
        } catch (Exception e2) {
            f38236b.a("NBSAndroidAgentImpl start() has an error : ", e2);
        }
    }

    public DeviceInformation c() {
        DeviceInformation deviceInformation = this.f38241i;
        if (deviceInformation != null) {
            deviceInformation.addMisc("uid", r.u().t());
            b(this.f38241i);
            return this.f38241i;
        }
        DeviceInformation deviceInformation2 = new DeviceInformation();
        deviceInformation2.setOsName(t());
        b(deviceInformation2);
        a(deviceInformation2);
        deviceInformation2.setAgentName("agent-android");
        deviceInformation2.setAgentVersion(NBSAgent.getVersion());
        deviceInformation2.setDeviceId(y());
        if (!ak.r(q())) {
            deviceInformation2.addMisc("brsAgentMd5", q());
        }
        String strT = r.u().t();
        String nativeVersion = "";
        if (ak.r(strT)) {
            try {
                Context context = this.f38237c;
                deviceInformation2.addMisc("uid", context.getSharedPreferences(r.k(context.getPackageName()), 0).getString("userId", ""));
            } catch (Throwable th) {
                r.A.a("getDeviceInformation error :", th);
            }
        } else {
            deviceInformation2.addMisc("uid", strT);
        }
        try {
            nativeVersion = NativeCrashInterface.getNativeVersion();
        } catch (Throwable unused) {
        }
        if (!ak.r(nativeVersion)) {
            deviceInformation2.addMisc("ndkversion", nativeVersion);
        }
        DeviceData.userId = strT;
        this.f38241i = deviceInformation2;
        return deviceInformation2;
    }

    public DeviceData d() {
        DeviceData deviceData = new DeviceData();
        deviceData.setCarrier(r.u().av());
        deviceData.setConnectType(r.u().aw());
        deviceData.setNetwrokType(r.u().au());
        t tVarQ = r.u().q();
        try {
            if (tVarQ != null) {
                deviceData.setLatitude(tVarQ.a());
                deviceData.setLongitude(tVarQ.b());
                return deviceData;
            }
            deviceData.setLatitude(0.0d);
            deviceData.setLongitude(0.0d);
            return deviceData;
        } catch (Throwable th) {
            f38236b.a("location is not null,but getLatitude() or getLongtitude() occur an error ", th);
            deviceData.setLatitude(0.0d);
            deviceData.setLongitude(0.0d);
            return deviceData;
        }
    }

    public ApplicationInformation e() {
        ApplicationInformation applicationInformation = this.f38243k;
        if (applicationInformation != null) {
            applicationInformation.generateData();
            return this.f38243k;
        }
        ApplicationInformation applicationInformation2 = new ApplicationInformation(this.f38237c);
        this.f38243k = applicationInformation2;
        applicationInformation2.generateAppInfo();
        return this.f38243k;
    }

    public List<com.networkbench.agent.impl.data.f> f() {
        ArrayList arrayList;
        synchronized (this.d) {
            arrayList = new ArrayList(this.d);
            this.d.clear();
        }
        return arrayList;
    }

    public int g() {
        this.g.lock();
        try {
            return this.f38239f.z();
        } finally {
            this.g.unlock();
        }
    }

    public int h() {
        this.g.lock();
        try {
            return this.f38239f.m().getErrRspSize();
        } finally {
            this.g.unlock();
        }
    }

    public void i() {
        r.l = System.nanoTime();
        a(true);
    }

    public void j() {
        f38236b.f("PERMANENTLY DISABLING AGENT v" + NBSAgent.getVersion());
        try {
            this.f38239f.i(NBSAgent.getVersion());
            try {
                a(false);
            } finally {
                NBSAgent.setImpl(null);
            }
        } catch (Throwable th) {
            try {
                a(false);
                throw th;
            } finally {
                NBSAgent.setImpl(null);
            }
        }
    }

    public boolean k() {
        return false;
    }

    public String l() {
        String simOperator = ((TelephonyManager) this.f38237c.getSystemService("phone")).getSimOperator();
        return ab.c(simOperator) ? "00000" : simOperator;
    }

    public HarvestConfiguration m() {
        af afVar = this.f38239f;
        if (afVar != null) {
            return afVar.m();
        }
        return null;
    }

    public SystemInfo n() {
        SystemInfo systemInfo = new SystemInfo();
        systemInfo.setMemory(com.networkbench.agent.impl.crash.b.h(this.f38237c));
        systemInfo.setCpuUtilizationRateUser(0);
        systemInfo.setCpuUtilizationRateSystem(0);
        systemInfo.setCpuUtilizationRateTotal(0);
        return systemInfo;
    }

    public String o() {
        return r.u().T();
    }

    public af p() {
        return this.f38239f;
    }

    public String q() {
        String strC = this.f38239f.c(ConfigurationName.brsAgentMD5);
        return ak.r(strC) ? "" : strC;
    }

    private static void e(Context context) {
        if (r.u().z && com.networkbench.agent.impl.crash.b.g(context)) {
            v();
        }
    }

    public void b() {
        try {
            Harvest.addHarvestListener(this.f38239f);
            Harvest.initialize();
            Harvest.setHarvestConfiguration(this.f38239f.m());
            com.networkbench.agent.impl.d.g.a();
        } catch (Throwable th) {
            r.A.a("initialize error :", th);
        }
    }

    private static Context b(Context context) {
        return context instanceof Application ? context.getApplicationContext() : context;
    }

    @Override // com.networkbench.agent.impl.background.b
    public void b(com.networkbench.agent.impl.background.a aVar) {
        i();
    }

    private void d(final Context context) {
        new Handler(Looper.getMainLooper()).post(new y() { // from class: com.networkbench.agent.impl.util.NBSAndroidAgentImpl.2
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                try {
                    if (r.u().l() || r.u().f()) {
                        NBSGestureInstrument.registerMotionEventListener(new com.networkbench.agent.impl.g.a.g(new GestureDetector(context, new com.networkbench.agent.impl.g.a.f(new com.networkbench.agent.impl.g.a.e()))));
                    }
                    if (r.u().af()) {
                        NBSGestureInstrument.registerMotionEventListener(new com.networkbench.agent.impl.g.a.g(new GestureDetector(context, new com.networkbench.agent.impl.data.d.g())));
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void a(DeviceInformation deviceInformation) {
        deviceInformation.setCpuArch(com.networkbench.agent.impl.crash.b.a());
        deviceInformation.setCpuType(com.networkbench.agent.impl.crash.b.d());
    }

    public static Boolean a(Context context, String str) {
        if (context.getPackageManager().checkPermission(str, context.getPackageName()) == -1) {
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    public void a(List<com.networkbench.agent.impl.data.f> list) {
        this.g.lock();
        try {
            if (!this.f38238e.k()) {
                this.g.unlock();
                return;
            }
            long jL = this.f38238e.l();
            this.g.unlock();
            synchronized (this.d) {
                try {
                    int size = ((int) jL) - this.d.size();
                    if (size > 0) {
                        Iterator<com.networkbench.agent.impl.data.f> it = list.iterator();
                        for (int i2 = 0; i2 < size && it.hasNext(); i2++) {
                            this.d.add(it.next());
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            this.g.unlock();
            throw th2;
        }
    }

    private void a(boolean z) {
        try {
            a(this.f38242j);
            com.networkbench.agent.impl.b.h.d(com.networkbench.agent.impl.b.b.a());
            com.networkbench.agent.impl.data.a.e.a();
            com.networkbench.agent.impl.data.a.k.a();
            if (z) {
                r.o = true;
                Harvest.harvestNow();
            }
            com.networkbench.agent.impl.f.e.a().c();
            Harvest.shutdown();
            com.networkbench.agent.impl.d.g.b();
        } catch (Throwable unused) {
        }
    }

    public void a(Context context) {
        try {
            if (this.f38239f != null) {
                r.u().W();
            }
            if (r.u().B && !com.networkbench.agent.impl.h.b.a().b()) {
                f38236b.f("root ca certificate validity is false, please check");
                return;
            }
            NBSAgent.start();
            r.n = com.networkbench.agent.impl.crash.b.a();
            d(context);
            c(context);
        } catch (Throwable th) {
            f38236b.a("Failed to initialize the agent: ", th);
        }
    }

    private void a(NBSNetworkCallback nBSNetworkCallback) {
        try {
            if (!com.networkbench.agent.impl.e.a.a().a(PrivacyDataType.PrivacyDataNetType) && nBSNetworkCallback != null) {
                ConnectivityManager connectivityManager = (ConnectivityManager) this.f38237c.getSystemService("connectivity");
                if (connectivityManager == null) {
                    f38236b.a("initNetworkMonitor error ....");
                } else {
                    connectivityManager.unregisterNetworkCallback(nBSNetworkCallback);
                    this.f38242j = null;
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.networkbench.agent.impl.background.b
    public void a(com.networkbench.agent.impl.background.a aVar) {
        new Handler(Looper.getMainLooper()).postDelayed(new y() { // from class: com.networkbench.agent.impl.util.NBSAndroidAgentImpl.4
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                try {
                    com.networkbench.agent.impl.util.c.c.a().a(new Runnable() { // from class: com.networkbench.agent.impl.util.NBSAndroidAgentImpl.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                NBSAndroidAgentImpl.this.x();
                            } catch (Throwable th) {
                                z81.k(new StringBuilder("applicationForegrounded  NBSThreadExecutor.getInstance().executeRunnable has an error : "), th);
                            }
                        }
                    });
                } catch (Throwable th) {
                    z81.k(new StringBuilder("applicationForegrounded  has an error : "), th);
                }
            }
        }, 2000L);
    }

    private void c(Context context) {
        try {
            if (com.networkbench.agent.impl.e.a.a().a(PrivacyDataType.PrivacyDataNetType)) {
                return;
            }
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                f38236b.a("initNetworkMonitor error ....");
                return;
            }
            NBSNetworkCallback nBSNetworkCallback = new NBSNetworkCallback(connectivityManager);
            this.f38242j = nBSNetworkCallback;
            connectivityManager.registerDefaultNetworkCallback(nBSNetworkCallback);
        } catch (Throwable unused) {
        }
    }
}

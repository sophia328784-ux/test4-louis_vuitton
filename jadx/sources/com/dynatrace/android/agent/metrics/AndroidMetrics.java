package com.dynatrace.android.agent.metrics;

import android.app.ActivityManager;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.view.Display;
import com.dynatrace.agent.di.CoreComponent;
import com.dynatrace.agent.metrics.AppVersion;
import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.util.SdkVersionProviderImpl;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.activitytracking.ActivityScreenMetricsCollector;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetrics;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.n00;
import defpackage.z1;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidMetrics {
    public static volatile AndroidMetrics w;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f27551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BatteryTracker f27552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppVersionTracker f27553c;
    public Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f27554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f27555f;
    public volatile Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f27556h;
    public String l;
    public String m;
    public volatile String n;
    public Integer p;
    public String q;
    public String s;
    public AppVersion t;
    public final TimeLineProvider v;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile ConnectionType f27557i = ConnectionType.OFFLINE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f27558j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f27559k = 0;
    public int o = Integer.MIN_VALUE;
    public ScreenMetrics r = null;
    public long u = 0;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.metrics.AndroidMetrics$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27560a;

        static {
            int[] iArr = new int[ConnectionType.values().length];
            f27560a = iArr;
            try {
                iArr[ConnectionType.WIFI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27560a[ConnectionType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27560a[ConnectionType.LAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        boolean z = Global.f27307a;
        w = null;
    }

    public AndroidMetrics(Context context) {
        this.f27551a = context;
        if (context == null) {
            this.f27553c = null;
            this.f27552b = null;
        } else {
            this.f27553c = new AppVersionTracker(context, new SdkVersionProviderImpl());
            this.f27552b = BatteryTracker.b(context);
        }
        this.v = TimeLineProvider.f27311c;
    }

    public static AndroidMetrics a() {
        if (w == null) {
            synchronized (AndroidMetrics.class) {
                try {
                    if (w == null) {
                        w = new AndroidMetrics(AdkSettings.f27249k.f27253e);
                        w.c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return w;
    }

    public final NetworkInfo b() {
        Context context = this.f27551a;
        if (context == null) {
            return null;
        }
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e2) {
            if (!Global.f27307a) {
                return null;
            }
            e2.toString();
            Utility.g();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x00a5 A[PHI: r6
      0x00a5: PHI (r6v2 int) = (r6v1 int), (r6v11 int) binds: [B:46:0x00d6, B:22:0x00a3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
    public final void c() throws Throwable {
        BufferedReader bufferedReader;
        int i2;
        FileReader fileReader;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        executorServiceNewSingleThreadExecutor.execute(new z1(this, 3));
        executorServiceNewSingleThreadExecutor.shutdown();
        this.f27554e = Build.MANUFACTURER;
        this.l = Build.VERSION.RELEASE;
        this.m = "Android " + this.l;
        this.q = Build.MODEL;
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (locale.getCountry().length() > 0) {
            StringBuilder sbU = n00.u(language, "_");
            sbU.append(locale.getCountry());
            language = sbU.toString();
        }
        this.f27555f = language;
        boolean z = Global.f27307a;
        TimeLineProvider timeLineProvider = this.v;
        Long lValueOf = z ? Long.valueOf(timeLineProvider.a()) : 0L;
        FileReader fileReader2 = null;
        screenMetricsB = null;
        screenMetricsB = null;
        ScreenMetrics screenMetricsB = null;
        if (this.d == null) {
            try {
                fileReader = new FileReader("/proc/meminfo");
                try {
                    bufferedReader = new BufferedReader(fileReader, 8192);
                    try {
                        try {
                            i2 = Integer.parseInt(bufferedReader.readLine().split("\\s+")[1]);
                            try {
                                bufferedReader.close();
                                fileReader.close();
                                try {
                                    fileReader.close();
                                } catch (IOException unused) {
                                    if (Global.f27307a) {
                                        Utility.g();
                                    }
                                }
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                    if (Global.f27307a) {
                                        Utility.g();
                                    }
                                }
                            } catch (IOException unused3) {
                                if (Global.f27307a) {
                                    Utility.g();
                                }
                                if (fileReader != null) {
                                    try {
                                        fileReader.close();
                                    } catch (IOException unused4) {
                                        if (Global.f27307a) {
                                            Utility.g();
                                        }
                                    }
                                }
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (IOException unused5) {
                                        if (Global.f27307a) {
                                            Utility.g();
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileReader2 = fileReader;
                            if (fileReader2 != null) {
                                try {
                                    fileReader2.close();
                                } catch (IOException unused6) {
                                    if (Global.f27307a) {
                                        Utility.g();
                                    }
                                }
                            }
                            if (bufferedReader == null) {
                                throw th;
                            }
                            try {
                                bufferedReader.close();
                                throw th;
                            } catch (IOException unused7) {
                                if (!Global.f27307a) {
                                    throw th;
                                }
                                Utility.g();
                                throw th;
                            }
                        }
                    } catch (IOException unused8) {
                        i2 = 0;
                    }
                } catch (IOException unused9) {
                    i2 = 0;
                    bufferedReader = null;
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = null;
                    fileReader2 = fileReader;
                    if (fileReader2 != null) {
                        fileReader2.close();
                    }
                    if (bufferedReader == null) {
                        throw th;
                    }
                    bufferedReader.close();
                    throw th;
                }
            } catch (IOException unused10) {
                i2 = 0;
                fileReader = null;
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                if (fileReader2 != null) {
                    fileReader2.close();
                }
                if (bufferedReader == null) {
                    throw th;
                }
                bufferedReader.close();
                throw th;
            }
            this.d = Integer.valueOf(i2 / 1024);
        }
        if (Global.f27307a) {
            Utility.n("Verbose metrics updated in " + (timeLineProvider.a() - lValueOf.longValue()) + " ms");
        }
        d();
        e();
        Context context = this.f27551a;
        if (context != null) {
            Display display = ((DisplayManager) context.getSystemService("display")).getDisplay(0);
            if (display != null) {
                screenMetricsB = ActivityScreenMetricsCollector.b(display, this.f27559k);
            } else if (Global.f27307a) {
                Utility.n("Could not find a default Display");
            }
        }
        this.r = screenMetricsB;
        CoreComponent.f26702k.getClass();
        CoreComponent coreComponent = CoreComponent.l;
        if (coreComponent != null) {
            coreComponent.f26706e.b(screenMetricsB);
        }
    }

    public final void d() {
        boolean z = Global.f27307a;
        TimeLineProvider timeLineProvider = this.v;
        Long lValueOf = z ? Long.valueOf(timeLineProvider.a()) : 0L;
        Context context = this.f27551a;
        if (context != null) {
            this.f27556h = null;
            try {
                String networkOperatorName = ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
                if (networkOperatorName != null) {
                    this.f27556h = Utility.k(250, networkOperatorName);
                }
            } catch (Exception e2) {
                if (Global.f27307a) {
                    e2.toString();
                    Utility.g();
                }
            }
        }
        if (Global.f27307a) {
            Utility.n("Basic metrics updated in " + (timeLineProvider.a() - lValueOf.longValue()) + " ms");
        }
    }

    public final void e() {
        ConnectionType connectionType;
        ActivityManager activityManager;
        String subtypeName;
        Long lValueOf = Global.f27307a ? Long.valueOf(this.v.a()) : 0L;
        NetworkInfo networkInfoB = b();
        if (networkInfoB != null && networkInfoB.isAvailable() && networkInfoB.isConnected()) {
            switch (networkInfoB.getType()) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 5:
                case 10:
                case 11:
                case 12:
                case 14:
                case 15:
                    connectionType = ConnectionType.MOBILE;
                    break;
                case 1:
                case 13:
                    connectionType = ConnectionType.WIFI;
                    break;
                case 6:
                case 7:
                case 8:
                default:
                    connectionType = ConnectionType.OTHER;
                    break;
                case 9:
                    connectionType = ConnectionType.LAN;
                    break;
            }
        } else {
            connectionType = ConnectionType.OFFLINE;
        }
        this.f27557i = connectionType;
        int i2 = AnonymousClass1.f27560a[this.f27557i.ordinal()];
        if (i2 == 1) {
            this.f27558j = "802.11x";
        } else if (i2 == 2) {
            switch (networkInfoB.getSubtype()) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    subtypeName = "2G";
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    subtypeName = "3G";
                    break;
                case 13:
                case 18:
                case 19:
                    subtypeName = "4G";
                    break;
                case 20:
                    subtypeName = "5G";
                    break;
                default:
                    subtypeName = networkInfoB.getSubtypeName();
                    break;
            }
            this.f27558j = subtypeName;
        } else if (i2 != 3) {
            this.f27558j = null;
        } else {
            this.f27558j = "Ethernet";
        }
        Context context = this.f27551a;
        if (context != null) {
            this.f27559k = context.getResources().getConfiguration().orientation;
        }
        BatteryTracker batteryTracker = this.f27552b;
        if (batteryTracker != null) {
            this.o = batteryTracker.a();
        }
        try {
            activityManager = (ActivityManager) this.f27551a.getSystemService(ActionFloatingViewItem.f37018a);
        } catch (Exception e2) {
            if (Global.f27307a) {
                e2.toString();
                Utility.g();
            }
            activityManager = null;
        }
        if (activityManager == null) {
            this.p = null;
        } else {
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            this.p = Integer.valueOf((int) (memoryInfo.availMem / 1048576));
        }
        AppVersionTracker appVersionTracker = this.f27553c;
        if (appVersionTracker != null) {
            AppVersion appVersionA = appVersionTracker.a();
            if (appVersionA.f26864a < 1 || appVersionA.f26865b == null) {
                this.t = null;
            } else {
                this.t = appVersionA;
            }
        }
        long jA = this.v.a();
        this.u = jA;
        if (Global.f27307a) {
            Utility.n("Common metrics updated in " + (jA - lValueOf.longValue()) + " ms");
        }
    }
}

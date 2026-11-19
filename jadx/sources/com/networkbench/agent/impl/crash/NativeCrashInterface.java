package com.networkbench.agent.impl.crash;

import android.content.Context;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.crash.anomalous.AnomalousCallBackControl;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.af;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.nbslens.nativecrashlib.NativeInterface;
import defpackage.md;
import defpackage.o60;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class NativeCrashInterface {
    private static com.networkbench.agent.impl.c.e log = com.networkbench.agent.impl.c.f.a();

    public static void answerAnomalousCallBack(int i2, String str, JsonArray jsonArray, JsonArray jsonArray2) {
        AnomalousCallBackControl.getInstance().answerAnomalousCallBack(i2, str, jsonArray, jsonArray2);
    }

    public static String getAddAppInfo() {
        return ak.a(r.u().J(), true);
    }

    public static List<Map.Entry<Thread, StackTraceElement[]>> getAllStackTraces() {
        return ak.g(Thread.getAllStackTraces());
    }

    public static JsonArray getAppInfo(String str) {
        try {
            return v.c(str);
        } catch (Throwable th) {
            log.a("getAppInfo error", th);
            return new JsonArray();
        }
    }

    public static int getAppPhase() {
        return com.networkbench.agent.impl.data.type.f.f36952a.a();
    }

    public static String getAppSoPath() {
        try {
            return r.u().J().getApplicationInfo().nativeLibraryDir;
        } catch (Throwable unused) {
            log.e("get app so path error");
            return "";
        }
    }

    public static String getCpuArch() {
        r.u();
        return r.n;
    }

    public static int getCrashStackCount() {
        return r.u().az();
    }

    public static String getCurrentActivity() {
        return ScreenNameManager.getCurrentScreenName();
    }

    public static JsonObject getCustData() {
        return new com.networkbench.agent.impl.data.a(r.u(), ak.p()).asJsonObject();
    }

    public static String getDataTag() {
        return r.u().d();
    }

    public static JsonArray getDeviceData() {
        try {
            return v.g(r.u().J());
        } catch (Throwable th) {
            log.a("getDeviceData error", th);
            return new JsonArray();
        }
    }

    public static long getExcursionOfMsNotConvert(long j2) {
        return r.u().g(j2);
    }

    public static long getInitAgentTime() {
        try {
            return r.u().f(r.u().R());
        } catch (Throwable unused) {
            log.e("getInitAgentTime error");
            return 0L;
        }
    }

    public static Context getNativeContext() {
        try {
            return r.u().J();
        } catch (Throwable unused) {
            log.e("getNativeContext error");
            return null;
        }
    }

    public static String getNativeVersion() {
        try {
            return NativeInterface.getNativeVersion();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static long getNetworkTimestamp() {
        return r.u().e(System.currentTimeMillis());
    }

    public static String getSessionId() {
        return NBSBitmapBeansControl.getInstance().getSessionId();
    }

    public static int getStackTraceLimitCount() {
        if (NBSAgent.getStackTraceLimit() == 0) {
            return 100;
        }
        return NBSAgent.getStackTraceLimit();
    }

    public static String getSuuid() {
        return r.u().d(System.currentTimeMillis());
    }

    public static String getSystemLogs() {
        return r.q ? i.a() : "";
    }

    public static String getUserActionId() {
        return com.networkbench.agent.impl.data.a.h.a() == null ? "" : com.networkbench.agent.impl.data.a.h.a();
    }

    public static void initNativeCrash() {
        if (isClassExist()) {
            try {
                com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37290b, 0, false);
                NativeInterface.initNativeCrash();
                com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37290b, 1, true);
            } catch (Throwable th) {
                o60.C(th, new StringBuilder("initNativeCrash failed: "), log);
            }
        }
    }

    private static boolean isClassExist() {
        return true;
    }

    @Deprecated
    public static boolean isEnableBrsAgent() {
        return true;
    }

    public static boolean isInitSuccess() {
        return ak.g() == 1;
    }

    public static void saveFeature() {
        if (isInitSuccess()) {
            return;
        }
        log.a("init failed ,native crash set feature 0");
        ak.b(0);
    }

    public static void storeCrashInfo(String str, String str2) {
        if (str == null || str2 == null) {
            md.n("error storeCrashInfo params is null");
            return;
        }
        new j(r.u().J(), g.f36654b).a(str, str2);
        try {
            if (r.u().aC()) {
                NBSAppAgent.debugLog(str2, "TingyunSDK_crash");
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("storeCrashInfo debugLog has error", th);
        }
        for (f fVar : d.f36645a) {
            if (fVar.isSpan()) {
                com.networkbench.agent.impl.c.g.s("native storeCrashInfo listeners span   isSpan: " + fVar.isSpan());
                fVar.notifyCrash(null, null, System.currentTimeMillis());
            }
        }
        NBSApplicationStateMonitor.getInstance().saveSDKData();
        try {
            Thread.sleep(500L);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        try {
            if (isInitSuccess()) {
                return;
            }
            ak.b(0);
        } catch (Throwable unused2) {
            log.f("process error");
        }
    }

    public static void storeUUID(String str) {
        g.a().a(NBSErrorEventType.crash, str);
        new af(r.u().J()).b(str);
    }

    public static JsonArray getAppInfo() {
        return getAppInfo(ContentTree.AUDIO_ID);
    }
}

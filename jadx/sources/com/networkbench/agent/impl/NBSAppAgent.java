package com.networkbench.agent.impl;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.graphics.Rect;
import android.os.Looper;
import android.text.TextUtils;
import android.util.TimingLogger;
import android.view.View;
import com.networkbench.R;
import com.networkbench.agent.impl.asyncaction.a.a;
import com.networkbench.agent.impl.asyncaction.a.b;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.crash.NativeCrashInterface;
import com.networkbench.agent.impl.crash.anomalous.AnomalousCallBackControl;
import com.networkbench.agent.impl.crash.i;
import com.networkbench.agent.impl.data.AnomalousData;
import com.networkbench.agent.impl.data.a.k;
import com.networkbench.agent.impl.data.a.m;
import com.networkbench.agent.impl.data.a.n;
import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.data.type.d;
import com.networkbench.agent.impl.harvest.ApplicationInformation;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConnection;
import com.networkbench.agent.impl.harvest.HarvestData;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.networkbench.agent.impl.instrumentation.NBSAppInstrumentation;
import com.networkbench.agent.impl.instrumentation.NBSFragmentSession;
import com.networkbench.agent.impl.instrumentation.NBSViewStatus;
import com.networkbench.agent.impl.instrumentation.TingyunAnomalousDataFeedBack;
import com.networkbench.agent.impl.instrumentation.TingyunErrorEventFeedBack;
import com.networkbench.agent.impl.instrumentation.TingyunErrorIdGenerateBlock;
import com.networkbench.agent.impl.instrumentation.callback.INBSNetworkBody;
import com.networkbench.agent.impl.instrumentation.callback.INBSNetworkHeader;
import com.networkbench.agent.impl.instrumentation.flutter.FlutterNetworkUtils;
import com.networkbench.agent.impl.pubapi.NBSLogLevel;
import com.networkbench.agent.impl.session.Event;
import com.networkbench.agent.impl.session.ISpan;
import com.networkbench.agent.impl.session.NullSpan;
import com.networkbench.agent.impl.session.SpanType;
import com.networkbench.agent.impl.session.Transaction;
import com.networkbench.agent.impl.session.network.NBSNetworkCallbackManager;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.session.screen.NBSScreenRecordControl;
import com.networkbench.agent.impl.tracing.CustomTracer;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.af;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.c;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.x;
import com.networkbench.agent.impl.webview.JsPageUtil;
import java.security.SecureRandom;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class NBSAppAgent {
    public static final int ALL_ENDBLED = 524287;
    public static final int ALL_TRACE_COLLECT_ENDBLED = 1024;
    public static final int ANR_ENABLED = 64;
    public static final int BATTERY_ERROR_ENABLED = 32768;
    public static final int BATTERY_MODULE_ENABLED = 16384;
    public static final boolean BUSINESSS = true;
    public static final int CDN_ENDBLED = 256;
    public static final int CPU_MODULE_ENABLED = 131072;
    public static final int CRASH_ENABLED = 4;
    public static final int CROSS_APP_ENABLED = 32;
    public static final boolean DEBUG_MODE = false;
    public static final int FPS_MODULE_ENABLED = 262144;
    public static final int HTTP_NETWORK_ENABLED = 1;
    public static final int LOG_LEVEL_DEBUG = 4;
    public static final int LOG_LEVEL_ERROR = 8;
    public static int LOG_LEVEL_FLAG = 1;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_VERBOSE = 2;
    public static final int LOG_LEVEL_WARNING = 16;
    public static final int LOG_MODULE_ENABLED = 4096;
    public static final boolean NETWORK_ONLY = false;
    public static final int OOM_MODULE_ENABLED = 8192;
    public static final int RECORD_ENDBLED = 512;
    public static final int RECORD_NETWORK_ENABLE = 65536;
    public static final int SOCKET_DATA_ENABLED = 16;
    private static final String TAG = "NBSAppAgent";
    public static final boolean TRACE_LOG_MODE = false;
    public static final int UI_ENABLED = 2;
    public static final int USER_ACTION_ENABLED = 128;
    public static final int VIOLENCE_ENDBLED = 2048;
    public static final int WEBVIEW_ENABLED = 8;
    private static e log = f.a();
    private static boolean onlyMainProcess = false;
    private static NBSAppAgent appAgent = null;
    public static String schemeIgnore = "";
    private boolean ssl = true;
    private boolean crashReportEnabled = true;
    private volatile boolean apmIsRunning = false;
    private int ratio = 100;
    private boolean anrReportEnabled = true;

    private NBSAppAgent(String str) {
        try {
            r.u().f(str);
        } catch (Throwable th) {
            g.b("NBSAppAgent has an error : ", th);
        }
    }

    public static void beginTracer(String str) {
        try {
            if (r.u().j()) {
                g.n(" beginTracer  = " + str);
            }
            CustomTracer.beginTracer(ak.b(), str);
        } catch (Throwable th) {
            g.b(" beginTracer has an error ", th);
        }
    }

    private void checkAppStartType(af afVar, Context context) {
        try {
            int iB = d.a(context).c().b();
            r.u().b(iB);
            if (ak.b(afVar.g(), iB)) {
                com.networkbench.agent.impl.data.type.f.f36952a.a(com.networkbench.agent.impl.data.type.f.a.FIRST_RUN);
                List<a> listA = b.f36406a.a();
                if (listA.size() > 0) {
                    for (int i2 = 0; i2 < listA.size(); i2++) {
                        try {
                            a aVar = listA.get(i2);
                            if (aVar instanceof com.networkbench.agent.impl.data.type.g) {
                                com.networkbench.agent.impl.data.type.g gVar = (com.networkbench.agent.impl.data.type.g) aVar;
                                if (gVar.d() == com.networkbench.agent.impl.data.type.f.a.COLD_RUN.a()) {
                                    gVar.a(com.networkbench.agent.impl.data.type.f.a.FIRST_RUN.a());
                                }
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
            afVar.b(iB);
        } catch (Throwable unused2) {
        }
    }

    private void closeSDK(Context context) {
        try {
            c cVar = new c(context);
            af afVar = new af(context);
            r.u().d(false);
            afVar.b(cVar.b());
            afVar.a(0);
        } catch (Throwable th) {
            Logger.error(TAG, "close sdk error", th);
        }
    }

    public static void customActionEnd(String str, String str2, Map<String, Object> map) {
        try {
            j.a("NBSAppAgent customActionEnd actionName = " + str);
            if (!TextUtils.isEmpty(str) && r.u().af()) {
                com.networkbench.agent.impl.data.a.e.a(str, str2, map);
            }
        } catch (Throwable th) {
            g.b("customActionEnd has an error : ", th);
        }
    }

    public static void customActionStart(String str) {
        try {
            j.a("NBSAppAgent customActionStart actionName = " + str);
            if (!TextUtils.isEmpty(str) && r.u().af()) {
                com.networkbench.agent.impl.data.a.e.a(str);
            }
        } catch (Throwable th) {
            g.b("customActionStart has an error : ", th);
        }
    }

    public static void customLogInvokeStackTrace(int i2) {
        try {
            NBSLogger.customLogInvokeStackTrace(i2);
        } catch (Throwable th) {
            Logger.error(TAG, "error customLogInvokeStackTrace", th);
        }
    }

    public static String customPageLoad(boolean z) {
        if (!z) {
            return "";
        }
        try {
            return com.networkbench.agent.impl.i.d.a().b();
        } catch (Throwable th) {
            Logger.error(TAG, "error customPageLoad", th);
            return "";
        }
    }

    public static void customPageLoadFinish(String str, Class cls) {
        try {
            com.networkbench.agent.impl.i.d.a().a(str, cls.getName());
        } catch (Throwable th) {
            Logger.error(TAG, "error customPageLoadFinish", th);
        }
    }

    public static void debugLog(String str, String str2) {
        try {
            NBSLogger.logDebug(str, str2);
        } catch (Throwable th) {
            Logger.error(TAG, "debug log error", th);
        }
    }

    public static void disable() {
        try {
            Harvest.getInstance().disableSdk(3153600000000L);
        } catch (Throwable unused) {
        }
    }

    private static void disableLog() {
        try {
            r.u().q(false);
            new af(r.u().J()).b(false);
        } catch (Throwable unused) {
        }
    }

    public static void disableTimeUnit(TimeUnit timeUnit, long j2) {
        try {
            long millis = timeUnit.toMillis(j2);
            if (j2 <= 0) {
                millis = 86400000;
            }
            if (millis > 2592000000L) {
                millis = 2592000000L;
            }
            Harvest.getInstance().disableSdk(millis);
        } catch (Throwable unused) {
        }
    }

    private static void disableUpload() {
        try {
            r.u().p(false);
            new af(r.u().J()).c(false);
        } catch (Throwable unused) {
        }
    }

    private static void disableUploadAndEnableLog() {
        disableUpload();
        enableLog();
    }

    public static void enable() {
        try {
            j.a("NBSAppAgent disable method called");
            new af(r.u().J()).e(0L);
        } catch (Throwable unused) {
        }
    }

    private void enableCrashReporting(Context context) {
        try {
            com.networkbench.agent.impl.crash.g.a(context);
            com.networkbench.agent.impl.crash.d.a(com.networkbench.agent.impl.crash.g.a());
        } catch (Throwable th) {
            g.b(" enableCrashReporting has an error ", th);
        }
    }

    private static void enableLog() {
        try {
            r.u().q(true);
            new af(r.u().J()).b(true);
        } catch (Throwable unused) {
        }
    }

    private static void enableUpload() {
        try {
            r.u().p(true);
            new af(r.u().J()).c(true);
        } catch (Throwable unused) {
        }
    }

    private static void enableUploadAndDisableLog() {
        enableUpload();
        disableLog();
    }

    public static void endTracer(String str) {
        try {
            if (r.u().j()) {
                g.n(" endTracer  = " + str);
            }
            CustomTracer.endTracer(ak.b(), str);
        } catch (Throwable th) {
            g.b(" endTracer has an error ", th);
        }
    }

    public static void enterAction(String str, int i2, String str2) {
        try {
            j.a("NBSAppAgent enterAction actionName = " + str);
            if (r.u().af()) {
                n.a(SlowStartState.ListenerActionType.Clicked, str, true, -1, Long.valueOf(str2).longValue(), i2);
            }
        } catch (Throwable th) {
            g.b("enterAction has an error : ", th);
        }
    }

    public static void enterActionFlutter(String str, int i2, String str2) {
        try {
            j.a("NBSAppAgent enterActionFlutter actionName = " + str);
            if (r.u().af()) {
                n.a(SlowStartState.ListenerActionType.CustomAction, str, true, -1, Long.valueOf(str2).longValue(), i2);
            }
        } catch (Throwable th) {
            g.b("enterActionFlutter has an error : ", th);
        }
    }

    public static void errorLog(String str, String str2) {
        try {
            NBSLogger.logError(str, str2);
        } catch (Throwable th) {
            Logger.error(TAG, "error log error", th);
        }
    }

    public static String finishPageWithName(String str) {
        try {
            j.a("NBSAppAgent finishPageWithName pageName = " + str);
            if (ab.c(str)) {
                Logger.error(TAG, "pageName is empty");
                return "";
            }
            Logger.debug(TAG, "finishPageWithName pageName:" + str + ", newPageName:" + ab.a(str, 128));
            return x.a().b(str);
        } catch (Throwable th) {
            Logger.error(TAG, "startPageWithName error", th);
            return "";
        }
    }

    public static Map<String, String> getApmsHeaderToRequest() {
        return FlutterNetworkUtils.getApmsHeaderToRequest();
    }

    public static Map<String, String> getExtraHeaderToRequest() {
        return FlutterNetworkUtils.getExtraHeaderToRequest();
    }

    public static String getLastCrashUUID() {
        return ak.l();
    }

    public static String getSessionId() {
        try {
            return NBSBitmapBeansControl.getInstance().getSessionId();
        } catch (Throwable th) {
            g.b("getSessionId has an error : ", th);
            return "";
        }
    }

    public static Map<String, Boolean> getSwitchConfig() {
        HashMap map = new HashMap();
        try {
            map.put("enabled", Boolean.valueOf(r.u().k()));
            map.put("crashReporting", Boolean.valueOf(r.u().ab()));
            map.put("webRequest", Boolean.valueOf(r.u().V()));
            map.put("action", Boolean.valueOf(r.u().Y()));
            map.put("ui", Boolean.valueOf(r.u().af()));
            map.put("logLevel", Boolean.FALSE);
            return map;
        } catch (Throwable th) {
            Logger.error(TAG, "getSwitchConfig  error", th);
            return map;
        }
    }

    public static String getTingyunDeviceId() {
        try {
            return new af(r.u().J()).q();
        } catch (Throwable unused) {
            return "";
        }
    }

    private boolean hitPercent() {
        try {
            return new SecureRandom().nextInt(100) + 1 <= this.ratio;
        } catch (Throwable th) {
            Logger.error(TAG, "hitPercent sdk error", th);
        }
    }

    public static void infoLog(String str, String str2) {
        try {
            NBSLogger.logInfo(str, str2);
        } catch (Throwable th) {
            Logger.error(TAG, "info log error", th);
        }
    }

    private static boolean isFilter() {
        boolean z = r.u().B;
        return false;
    }

    private boolean isInstrumented() {
        return false;
    }

    public static void leaveAction(int i2, String str) {
        try {
            j.a("NBSAppAgent leaveActionFlutterPage leaveJsStamp = " + str);
            if (r.u().af()) {
                n.a(i2, Long.valueOf(str).longValue());
            }
        } catch (Throwable th) {
            g.b("leaveAction has an error : ", th);
        }
    }

    public static void leaveActionFlutterPage(int i2, String str, String str2, Map<String, Object> map) {
        try {
            j.a("NBSAppAgent leaveActionFlutterPage leaveJsStamp = " + str);
            m mVarA = n.a(i2, Long.valueOf(str).longValue(), str2, null);
            n.f36824b = mVarA;
            if (Looper.myLooper() == Looper.getMainLooper()) {
                log.a("leaveActionFlutterPage happened in mainLooper");
            } else {
                log.a("leaveActionFlutterPage happened not in mainLooper");
            }
            try {
                log.a("leaveActionFlutterPage add to data");
                n.f36824b = null;
                if (mVarA != null) {
                    com.networkbench.agent.impl.data.d.f fVar = new com.networkbench.agent.impl.data.d.f(0, mVarA.f36820i, mVarA);
                    if (fVar.f()) {
                        g.k("not add data in harvest data because crossTheBorder is true");
                    } else {
                        g.k("add leaveActionFlutterPage data in harvest data pageData: " + fVar.asJson().toString());
                        HarvestData.successPageDatas.a(fVar);
                    }
                }
            } catch (Throwable unused) {
                log.e("thread execute error");
            }
        } catch (Throwable th) {
            g.b("leaveActionFlutterPage has an error : ", th);
        }
    }

    public static void leaveBreadcrumb(String str) {
        try {
            if (Harvest.addActionAndInteraction(r.y + str) && r.u().j()) {
                g.n(" leaveBreadcrumb = " + str);
            }
        } catch (Throwable th) {
            g.b(" leaveBreadcrumb has an error ", th);
        }
    }

    public static void maskClass(Class cls) {
        try {
            NBSScreenRecordControl.getInstance().maskViewByClass(cls);
        } catch (Throwable th) {
            Logger.error(TAG, "maskViewByClass has an error : ", th);
        }
    }

    public static void maskRegion(Rect rect) {
        try {
            NBSScreenRecordControl.getInstance().maskSensitiveRegion(rect);
        } catch (Throwable th) {
            g.b("maskSensitiveRegion has an error : ", th);
        }
    }

    public static void maskScreens(String str) {
        try {
            NBSScreenRecordControl.getInstance().maskPageByName(str);
        } catch (Throwable th) {
            Logger.error(TAG, "maskPageByName has an error : ", th);
        }
    }

    public static void maskSensitiveRegion(View view) {
        try {
            NBSScreenRecordControl.getInstance().maskSensitiveRegion(view);
        } catch (Throwable th) {
            g.b("maskSensitiveRegion has an error : ", th);
        }
    }

    public static void maskView(View view) {
        try {
            NBSScreenRecordControl.getInstance().maskSensitiveRegion(view);
        } catch (Throwable th) {
            g.b("maskSensitiveRegion has an error : ", th);
        }
    }

    public static void maskViewId(int i2) {
        try {
            NBSScreenRecordControl.getInstance().maskViewById(i2);
        } catch (Throwable th) {
            Logger.error(TAG, "maskViewById has an error : ", th);
        }
    }

    @Deprecated
    public static void onEvent(String str, String str2, Map<String, Object> map) {
        try {
            com.networkbench.agent.impl.n.b.b().a(str, str2, map);
            if (r.u().j()) {
                g.n(" setUserProfile eventId = " + str + "\n eventTag " + str2 + "\n Map " + ak.a(map).toString());
            }
        } catch (Throwable th) {
            g.b(" onEvent has an error ", th);
        }
    }

    public static void pauseVideoReplay() {
        try {
            j.a("NBSAppAgent pauseVideoReplay");
            NBSScreenRecordControl.getInstance().pauseScreenRecord();
        } catch (Throwable th) {
            Logger.error(TAG, "pauseScreenRecord", th);
        }
    }

    public static void reportError(String str, AnomalousData anomalousData) {
        try {
            if (onlyMainProcess && !ak.b(com.networkbench.agent.impl.crash.g.f36653a)) {
                log.a("非主进程不采集自定义崩溃数据...");
                return;
            }
            if (TextUtils.isEmpty(str)) {
                log.a("reportError : message == null or \"\"  return !");
                return;
            }
            if (anomalousData == null) {
                return;
            }
            try {
                if (com.networkbench.agent.impl.harvest.b.b.a().g()) {
                    log.a("reportErrorType");
                    com.networkbench.agent.impl.crash.a.a.c().a(new com.networkbench.agent.impl.crash.a.d.a().a(str).a(anomalousData).a());
                    if (r.u().j()) {
                        g.n("reportErrorType type = 2\n message = " + str + "\nmetaData = null");
                    }
                }
            } catch (Throwable unused) {
                com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
            g.b("reportError has an error : ", th);
        }
    }

    public static void reportErrorFlutter(String str, Map<String, Object> map, String str2, int i2) {
        FlutterNetworkUtils.reportErrorWebInner(str, map, str2, i2, "flutter");
    }

    private static void reportErrorType(String str, Exception exc, Map<String, Object> map, int i2) {
        try {
            if (onlyMainProcess && !ak.b(com.networkbench.agent.impl.crash.g.f36653a)) {
                log.a("非主进程不采集自定义崩溃数据...");
            } else if (com.networkbench.agent.impl.harvest.b.b.a().g()) {
                log.a("reportErrorType");
                com.networkbench.agent.impl.crash.a.a.c().a(new com.networkbench.agent.impl.crash.a.d.a().a(str).a(exc).a(map).b(i2).a(2).b().a());
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
            g.b(" reportError has an error ", th);
        }
    }

    public static void reportErrorWeb(String str, Map<String, Object> map, String str2, int i2) {
        try {
            FlutterNetworkUtils.reportErrorWebInner(str, map, str2, i2, "com.facebook.react.JavaScript");
        } catch (Throwable th) {
            g.b("reportErrorWeb has an error : ", th);
        }
    }

    public static void reportEvent(String str, Map<String, Object> map) {
        try {
            if (r.u().k() && !ab.c(str)) {
                HarvestData.getSpanDatas().addEvent(new Event(str, 4, map, NBSBitmapBeansControl.getInstance().getSessionIdRefresh()));
            }
        } catch (Throwable th) {
            g.b("reportEvent has an error : ", th);
        }
    }

    public static void resumeVideoReplay() {
        try {
            j.a("NBSAppAgent resumeVideoReplay");
            NBSScreenRecordControl.getInstance().resumeScreenRecord();
        } catch (Throwable th) {
            Logger.error(TAG, "resumeScreenRecord", th);
        }
    }

    public static List<String> retriveResponseHeader() {
        return FlutterNetworkUtils.retriveResponseHeader();
    }

    public static void setAgentErrorEventFeedBack(TingyunErrorEventFeedBack tingyunErrorEventFeedBack) {
        try {
            com.networkbench.agent.impl.crash.g.a().a(tingyunErrorEventFeedBack);
        } catch (Throwable th) {
            Logger.error(TAG, "setAgentErrorEventFeedBack  error", th);
        }
    }

    public static void setBusinessLine(String str, String str2) {
        try {
            j.a("NBSAppAgent setBusinessLine value = " + str2);
            r.u().a(ConfigurationName.dataTagKey, str2);
        } catch (Throwable th) {
            Logger.error(TAG, "setBusinessLine  error", th);
        }
    }

    public static void setCellCollectEnabled(boolean z) {
        com.networkbench.agent.impl.plugin.a.c.a(z);
    }

    public static void setCustomOnResumeEndIns(String str) {
        try {
            com.networkbench.agent.impl.data.type.b.a().c(System.currentTimeMillis());
            if (r.u().j()) {
                g.n(" setCustomOnResumeEndIns className = " + str);
            }
        } catch (Throwable th) {
            g.b(" setCustomOnResumeEndIns has an error ", th);
        }
    }

    public static void setCustomPageName(String str) {
        try {
            j.a("NBSAppAgent setCustomPageName name = " + str);
            NBSAppInstrumentation.setCustomPageName(str);
            NBSFragmentSession.custPageName = str;
        } catch (Throwable th) {
            g.b(" setCustomPageName has an error ", th);
        }
    }

    public static void setDataTypeCallBack(int i2, TingyunAnomalousDataFeedBack tingyunAnomalousDataFeedBack) {
        try {
            AnomalousCallBackControl.getInstance().setAnomalousDataFeedBack(i2, tingyunAnomalousDataFeedBack);
        } catch (Throwable th) {
            Logger.error(TAG, "setDataTypeCallBack  error", th);
        }
    }

    public static void setErrorIdGenerateBlock(TingyunErrorIdGenerateBlock tingyunErrorIdGenerateBlock) {
        try {
            AnomalousCallBackControl.getInstance().setErrorIdGenerateBlock(tingyunErrorIdGenerateBlock);
        } catch (Throwable th) {
            Logger.error(TAG, "setErrorIdGenerateBlock  error", th);
        }
    }

    public static void setGlobalContext(String str, String str2) {
        try {
            if (!ak.r(str) && !ak.r(str2)) {
                com.networkbench.agent.impl.crash.e.a(str, str2);
                if (r.u().j()) {
                    g.n(" setUserCrashMessage key = " + str + "    ----value = " + str2);
                }
            }
        } catch (Throwable th) {
            g.b(" setUserCrashMessage has an error ", th);
        }
    }

    public static void setLatLng(double d, double d2) {
        try {
            r.u().a(d, d2);
        } catch (Throwable th) {
            Logger.error(TAG, "setLatLng  error", th);
        }
    }

    public static NBSAppAgent setLicenseKey(String str) {
        NBSAppAgent nBSAppAgent;
        synchronized (NBSAppAgent.class) {
            try {
                if (appAgent == null) {
                    appAgent = new NBSAppAgent(str);
                }
                nBSAppAgent = appAgent;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nBSAppAgent;
    }

    @Deprecated
    public static void setLogEnable(boolean z) {
        setLogLevel(NBSLogLevel.INFO);
    }

    public static void setLogLevel(NBSLogLevel nBSLogLevel) {
        try {
            j.a(nBSLogLevel);
        } catch (Throwable th) {
            Logger.error(TAG, "setLogLevel has an error : " + th.getMessage());
        }
    }

    public static void setLogging(int i2, String str) {
        if (str == null || i2 <= 0) {
            return;
        }
        i.f36659b = i2;
        i.f36658a = str;
    }

    public static void setNetworkThreshold(long j2) {
        j.a("NBSAppAgent setNetworkThreshold threshold = " + j2);
        if (j2 < 0) {
            return;
        }
        r.f38389a = (int) j2;
    }

    @Deprecated
    public static void setOaidData(String str) {
    }

    public static void setPageLoadTimeoutSec(int i2) {
        try {
            j.a("NBSAppAgent setPageLoadTimeoutSec sec = " + i2);
            if (i2 >= 5 && i2 <= 15) {
                com.networkbench.agent.impl.i.f.a().b(i2 * 1000);
                return;
            }
            Logger.warning(TAG, "pageLoad timeout is error, value is " + i2);
        } catch (Throwable th) {
            Logger.error(TAG, "error setPageLoadTimeoutSec", th);
        }
    }

    @Deprecated
    public static void setPageLoadingEndTime(Class cls) {
    }

    public static void setPageName(Activity activity, String str) {
        if (activity == null || str == null) {
            return;
        }
        try {
            com.networkbench.agent.impl.data.a.b.f36766a.a(activity.getClass().getName(), ab.a(str, 128));
        } catch (Throwable th) {
            Logger.error(TAG, "error setPageName", th);
        }
    }

    public static void setPageScanInterval(int i2) {
        try {
            j.a("NBSAppAgent setPageScanInterval scanInterval = " + i2);
            if (i2 >= 50) {
                com.networkbench.agent.impl.i.f.a().a(i2);
                return;
            }
            Logger.warning(TAG, "scanInterval is too small, value is " + i2);
        } catch (Throwable th) {
            Logger.error(TAG, "error setPageScanInterval", th);
        }
    }

    public static void setPrivacyDataBlackList(List<Object> list) {
        try {
            j.a("NBSAppAgent setPrivacyDataBlackList blackList = " + list.size());
            com.networkbench.agent.impl.e.a.a().a(list);
        } catch (Throwable unused) {
        }
    }

    public static void setRequestBodyCallback(INBSNetworkBody iNBSNetworkBody) {
        if (iNBSNetworkBody == null) {
            return;
        }
        try {
            NBSNetworkCallbackManager.instance.setRequestBodyCallback(iNBSNetworkBody);
        } catch (Throwable th) {
            Logger.error(TAG, "setRequestBodyCallback", th);
        }
    }

    public static void setRequestHeaderCallback(INBSNetworkHeader iNBSNetworkHeader) {
        if (iNBSNetworkHeader == null) {
            return;
        }
        try {
            NBSNetworkCallbackManager.instance.setRequestHeaderCallback(iNBSNetworkHeader);
        } catch (Throwable th) {
            Logger.error(TAG, "setRequestHeaderCallback", th);
        }
    }

    public static void setResponseBodyCallback(INBSNetworkBody iNBSNetworkBody) {
        if (iNBSNetworkBody == null) {
            return;
        }
        try {
            NBSNetworkCallbackManager.instance.setRespBodyCallback(iNBSNetworkBody);
        } catch (Throwable th) {
            Logger.error(TAG, "setResponseBodyCallback", th);
        }
    }

    public static void setResponseHeaderCallback(INBSNetworkHeader iNBSNetworkHeader) {
        if (iNBSNetworkHeader == null) {
            return;
        }
        try {
            NBSNetworkCallbackManager.instance.setRespHeaderCallback(iNBSNetworkHeader);
        } catch (Throwable th) {
            Logger.error(TAG, "setResponseHeaderCallback", th);
        }
    }

    public static void setSessionIdleTime(int i2) {
        try {
            NBSBitmapBeansControl.getInstance().setSessionIdleTime(i2);
        } catch (Throwable th) {
            g.b("setSessionIdleTime has an error : ", th);
        }
    }

    private NBSAppAgent setStartOption(int i2, boolean z) {
        try {
            r.u().a(i2, z);
            return this;
        } catch (Throwable th) {
            g.b("setStartOption has an error : ", th);
            return this;
        }
    }

    @Deprecated
    public static void setUserCrashMessage(String str, String str2) {
        try {
            com.networkbench.agent.impl.crash.e.b(str, str2);
            if (r.u().j()) {
                g.n(" setUserCrashMessage key = " + str + "    ----value = " + str2);
            }
        } catch (Throwable th) {
            g.b(" setUserCrashMessage has an error ", th);
        }
    }

    public static void setUserIdentifier(String str) {
        try {
            if (str == null) {
                if (r.u().j()) {
                    g.n(" setUserIdentifier = null");
                    return;
                }
                return;
            }
            if (str.length() > 256) {
                str = str.substring(0, 256);
                log.a(" userId must be m than 0,less than 64 ,remove it ");
            }
            r.u().e(str);
            if (r.u().j()) {
                g.n(" setUserIdentifier = ".concat(str));
            }
        } catch (Throwable th) {
            g.b(" setUserIdentifier has an error ", th);
        }
    }

    public static void setUserProfile(String str, String str2, Long l, String str3, String str4, Map<String, Object> map) {
        try {
            com.networkbench.agent.impl.n.f.a().a(str, str2, l, str3, str4, map);
            if (r.u().j()) {
                g.n(" setUserProfile userID = " + str + "\n userName " + str2 + "\n signupTime " + l + "\n provice " + str3 + "\n city " + str4 + "\n Map " + ak.a(map).toString());
            }
        } catch (Throwable th) {
            g.b(" setUserProfile has an error ", th);
        }
    }

    public static void setViewContent(View view, String str) {
        if (str == null || view == null) {
            return;
        }
        try {
            view.setTag(R.string.view_attached_content, ab.a(str, 128));
        } catch (Throwable th) {
            Logger.error(TAG, "error set view content", th);
        }
    }

    public static void setViewId(View view, String str) {
        try {
            setViewTag(view, R.string.view_attached_id, str);
        } catch (Throwable th) {
            Logger.error(TAG, "setViewId error", th);
        }
    }

    public static void setViewStatus(View view, NBSViewStatus nBSViewStatus) {
        if (view == null || nBSViewStatus == null) {
            return;
        }
        try {
            String viewStatusValue = NBSViewStatus.VIEW_STATUS_VALID.getViewStatusValue();
            NBSViewStatus nBSViewStatus2 = NBSViewStatus.VIEW_STATUS_INVALID;
            if (nBSViewStatus == nBSViewStatus2) {
                viewStatusValue = nBSViewStatus2.getViewStatusValue();
            } else {
                NBSViewStatus nBSViewStatus3 = NBSViewStatus.VIEW_STATUS_IGNORE;
                if (nBSViewStatus == nBSViewStatus3) {
                    viewStatusValue = nBSViewStatus3.getViewStatusValue();
                }
            }
            setViewTag(view, R.string.view_status_tag, viewStatusValue);
        } catch (Throwable th) {
            Logger.error(TAG, "error setViewStatus", th);
        }
    }

    private static void setViewTag(View view, int i2, String str) {
        if (str == null || view == null || i2 <= 0) {
            return;
        }
        try {
            view.setTag(i2, ab.a(str, 128));
        } catch (Throwable th) {
            Logger.error(TAG, "setViewTag error", th);
        }
    }

    public static void setWebviewProgressControlVol(int i2) {
        try {
            JsPageUtil.progressControl = i2;
        } catch (Throwable th) {
            Logger.error(TAG, "setWebviewProgressControlVol  error", th);
        }
    }

    public static void standbyEventActionEnd(String str) {
        try {
            if (r.u().af() && Harvest.isInitialized()) {
                k.b(str);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "standbyEventActionEnd  error", th);
        }
    }

    public static void standbyEventActionStart(String str) {
        try {
            if (r.u().af() && Harvest.isInitialized()) {
                k.a(str);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "standbyEventActionStart  error", th);
        }
    }

    private static void startNextSession(String str) {
        try {
            NBSBitmapBeansControl.getInstance().startNextSession(str);
        } catch (Throwable th) {
            g.b("startNextSession has an error : ", th);
        }
    }

    public static String startPageWithName(String str) {
        try {
            j.a("NBSAppAgent startPageWithName pageName = " + str);
            if (ab.c(str)) {
                Logger.error(TAG, "pageName is empty");
                return "";
            }
            Logger.debug(TAG, "startPageWithName pageName:" + str + ", newPageName:" + ab.a(str, 128));
            return x.a().a(str);
        } catch (Throwable th) {
            Logger.error(TAG, "startPageWithName error", th);
            return "";
        }
    }

    public static ISpan startSpan(String str, String str2) {
        try {
            return startTransaction(str, str2, "", SpanType.TYPE_SPAN);
        } catch (Throwable th) {
            Logger.error(TAG, "startSpan  error", th);
            return new NullSpan();
        }
    }

    private static ISpan startTransaction(String str, String str2, String str3, SpanType spanType) {
        if (ab.c(str) || ab.c(str2)) {
            log.e("name or operation is empty, please check");
            return new NullSpan();
        }
        if (r.u().k() && r.u().ap()) {
            return new Transaction(str, str2, str3, spanType);
        }
        return new NullSpan();
    }

    public static void startVideoReplay() {
        try {
            j.a("NBSAppAgent startVideoReplay");
            NBSScreenRecordControl.getInstance().startScreenRecord();
        } catch (Throwable th) {
            Logger.error(TAG, "startScreenRecord", th);
        }
    }

    public static void startWebRequestTiming(Map<String, Object> map) {
        FlutterNetworkUtils.startWebRequestTiming(map);
    }

    private static void stopVideoReplay() {
        try {
            j.a("NBSAppAgent stopVideoReplay");
            NBSScreenRecordControl.getInstance().stopScreenRecord();
        } catch (Throwable th) {
            Logger.error(TAG, "stopScreenRecord", th);
        }
    }

    public static void stopWebRequestTiming(Map<String, Object> map, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4) {
        FlutterNetworkUtils.stopWebRequestTiming(map, map2, map3, map4);
    }

    public static void unMaskClass(Class cls) {
        try {
            NBSScreenRecordControl.getInstance().unMaskViewByClass(cls);
        } catch (Throwable th) {
            Logger.error(TAG, "unMaskViewByClass has an error : ", th);
        }
    }

    public static void unMaskRegion(Rect rect) {
        try {
            NBSScreenRecordControl.getInstance().unMaskSensitiveRegion(rect);
        } catch (Throwable th) {
            g.b("unMaskSensitiveRegion has an error : ", th);
        }
    }

    public static void unMaskScreens(String str) {
        try {
            NBSScreenRecordControl.getInstance().unMaskPageByName(str);
        } catch (Throwable th) {
            Logger.error(TAG, "unMaskPageByName has an error : ", th);
        }
    }

    public static void unMaskSensitiveRegion(View view) {
        try {
            NBSScreenRecordControl.getInstance().unMaskSensitiveRegion(view);
        } catch (Throwable th) {
            g.b("unMaskSensitiveRegion has an error : ", th);
        }
    }

    public static void unMaskView(View view) {
        try {
            NBSScreenRecordControl.getInstance().unMaskSensitiveRegion(view);
        } catch (Throwable th) {
            g.b("unMaskSensitiveRegion has an error : ", th);
        }
    }

    public static void unMaskViewId(int i2) {
        try {
            NBSScreenRecordControl.getInstance().unMaskViewById(i2);
        } catch (Throwable th) {
            Logger.error(TAG, "unMaskViewById has an error : ", th);
        }
    }

    public static void warningLog(String str, String str2) {
        try {
            NBSLogger.logWaring(str, str2);
        } catch (Throwable th) {
            Logger.error(TAG, "warning log error", th);
        }
    }

    private NBSAppAgent withLoggingEnabled(boolean z) {
        return this;
    }

    public NBSAppAgent closeLogForUpdateHint() {
        r.u().z = false;
        return this;
    }

    public NBSAppAgent customLaunchEnd(boolean z) {
        return isCustomAppStart(z);
    }

    public NBSAppAgent enableLogging(boolean z) {
        r.q = z;
        return this;
    }

    public NBSAppAgent enableNetworkContentRecord(boolean z) {
        j.a("NBSAppAgent enableNetworkContentRecord enableNetworkRecord = " + z);
        NBSNetworkCallbackManager.instance.setEnableNetworkContentRecord(z);
        return this;
    }

    public NBSAppAgent enableNewCalcAlgoForPage(boolean z) {
        try {
            r.u().r(z);
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "error enableNewPageCalcAlgo", th);
            return this;
        }
    }

    public NBSAppAgent encryptionRequired(boolean z) {
        r.u().B = z;
        return this;
    }

    public NBSAppAgent isCustomAppStart(boolean z) {
        try {
            com.networkbench.agent.impl.data.type.b.a().b(z);
            return this;
        } catch (Throwable th) {
            g.b(" isCustomAppStart has an error ", th);
            return this;
        }
    }

    public NBSAppAgent isHarmonyOs(boolean z) {
        try {
            r.u().f38394e = z;
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "isHarmonyOs  error", th);
            return this;
        }
    }

    public NBSAppAgent isHookWebChromeClient(boolean z) {
        try {
            r.u().h(z);
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "isHookWebChromeClient  error", th);
            return this;
        }
    }

    public NBSAppAgent isOperatorCollect(boolean z) {
        try {
            r.u().o(z);
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "isOperatorCollect  error", th);
            return this;
        }
    }

    public boolean isSslEnabled() {
        return this.ssl;
    }

    public NBSAppAgent setChannelID(String str) {
        try {
            ApplicationInformation.customSetChannelId = str == null ? "" : str;
            if (r.u().j()) {
                g.n("setChannelID channelID = " + str);
            }
            return this;
        } catch (Throwable th) {
            g.b("setChannelID has an error : ", th);
            return this;
        }
    }

    @Deprecated
    public NBSAppAgent setDefaultCert(boolean z) {
        try {
            HarvestConnection.IsCertEnabled = z;
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "setDefaultCert  error", th);
            return this;
        }
    }

    public NBSAppAgent setHttpEnabled(boolean z) {
        this.ssl = !z;
        return this;
    }

    public NBSAppAgent setIngoreScheme(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            schemeIgnore = str;
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "setIngoreScheme  error", th);
            return this;
        }
    }

    public NBSAppAgent setMultiRedirectHost(String[] strArr) {
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    HarvestConnection.redirectHostList = strArr;
                    HarvestConnection.redirectHost = strArr[0];
                    return this;
                }
            } catch (Throwable th) {
                Logger.error(TAG, "setMultiRedirectHost  error", th);
                return this;
            }
        }
        log.c("setMultiRedirectHost error");
        return this;
    }

    public NBSAppAgent setOkhttpResponseBodyFilter(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            com.networkbench.agent.impl.okhttp3.d.f37580c.add(str);
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "setOkhttpResponseBodyFilter  error", th);
            return this;
        }
    }

    public NBSAppAgent setOkhttpTcpListener(boolean z) {
        com.networkbench.agent.impl.okhttp3.d.f37579b = z;
        return this;
    }

    public NBSAppAgent setProxy(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            return this;
        }
        InitUrlConnection.proxy = str;
        InitUrlConnection.port = i2;
        return this;
    }

    public NBSAppAgent setRedirectHost(String str) {
        try {
            HarvestConnection.redirectHostList = null;
            HarvestConnection.redirectHost = str;
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "setRedirectHost  error", th);
            return this;
        }
    }

    public NBSAppAgent setRequestIdHeader(String str) {
        if (TextUtils.isEmpty(str)) {
            log.f("setRequestIdHeader is empty or null");
            return this;
        }
        r.u().f38396h = str;
        return this;
    }

    public NBSAppAgent setVersionName(String str) {
        try {
            com.networkbench.agent.impl.e.b.a(str);
            if (!r.u().j()) {
                return this;
            }
            g.n("setVersionName  : versionName = " + str);
            return this;
        } catch (Throwable th) {
            Logger.error(TAG, "setVersionName  error", th);
            return this;
        }
    }

    public synchronized void start(Context context) {
        if (this.apmIsRunning) {
            log.c("NBSAgent is already running.");
            return;
        }
        j.a("NBSAppAgent start method called with context: " + context);
        TimingLogger timingLogger = new TimingLogger("NBSAgent", "NBSAppAgent start");
        try {
            r.u().a(context);
            if (ak.d()) {
                log.a("tingyun oom process, not run sdk");
                return;
            }
            r.u().a(context);
            com.networkbench.agent.impl.util.a.f38249a.b(System.currentTimeMillis());
            af afVar = new af(context);
            try {
                checkAppStartType(afVar, context);
                afVar.c(d.a(context).c().b());
            } catch (Throwable unused) {
            }
            if (System.currentTimeMillis() < afVar.Q()) {
                log.c("NBSAgent disable !");
                return;
            }
            if (hitPercent()) {
                boolean zB = ak.b(context);
                r.p = !zB ? 1 : 0;
                if (!zB && TextUtils.isEmpty(com.networkbench.agent.impl.data.type.b.a().e())) {
                    if (!zB) {
                        log.a("is not main process!");
                    }
                    log.a("is not main process or is not deviceId! skip run sdk");
                    return;
                }
                if (onlyMainProcess && !zB) {
                    log.a("is not main process! NBSAgent not start!");
                    return;
                }
                if (isFilter()) {
                    log.f("because os version is below 23, skip run sdk with sm encrypt");
                    closeSDK(context);
                    return;
                }
                log.c("NBSAgent start.");
                timingLogger.addSplit("setLog");
                if (!isInstrumented()) {
                    log.c("NBSAgent not enabled.");
                    return;
                }
                log.c("NBSAgent enabled.");
                log.c(MessageFormat.format("NBSAgent V{0}", NBSAgent.getVersion()));
                r.u().k(this.ssl);
                if (r.u().R() <= 0) {
                    r.u().b(System.currentTimeMillis() / 1000);
                }
                if (!com.networkbench.agent.impl.data.type.b.a().f()) {
                    log.c("Application inject code failed，please contact tingyun for tech support");
                    com.networkbench.agent.impl.data.type.b.a().b(context);
                }
                if (r.u().ag()) {
                    Logger.debug(TAG, "begin initLogTrack in start");
                    NBSLogger.initLogTrack(r.u().J(), com.networkbench.agent.impl.plugin.c.b.a());
                }
                if (ak.c(context)) {
                    log.c("Android app is debugMode !");
                    setStartOption(524287, true);
                }
                setStartOption(4, true);
                if (r.u().j()) {
                    r.u().U();
                }
                NBSAndroidAgentImpl nBSAndroidAgentImpl = new NBSAndroidAgentImpl(context);
                NBSAgent.setImpl(nBSAndroidAgentImpl);
                r.u().ax();
                if (r.p == 0) {
                    log.a("begin init battery module");
                    com.networkbench.agent.impl.f.e.a().a(r.u().J(), log, 0, null);
                }
                if (this.crashReportEnabled) {
                    enableCrashReporting(context);
                    if (com.networkbench.agent.impl.harvest.b.b.a().h() && r.u().ac()) {
                        NativeCrashInterface.initNativeCrash();
                        j.a("init native Crash hook");
                    }
                }
                if (r.u().af()) {
                    x.a().b();
                }
                nBSAndroidAgentImpl.a(context);
                this.apmIsRunning = true;
                timingLogger.addSplit("instrument");
                timingLogger.dumpToLog();
                j.a("NBSAppAgent start method completed");
            }
        } catch (Throwable th) {
            log.a("Error occurred while starting the NBS agent!", th);
        }
    }

    @Deprecated
    public synchronized void startInApplication(Context context) {
        log.a("NBSAgent starts at application! ");
        start(context);
    }

    @Deprecated
    public NBSAppAgent withAnrEnabled(boolean z) {
        this.anrReportEnabled = z;
        return this;
    }

    public NBSAppAgent withApmTraceIdLength(int i2) {
        if (i2 >= 8 && i2 <= 32) {
            return this;
        }
        log.a("apmTraceIdLength length must bigger than 8,less or equals 32");
        return this;
    }

    public NBSAppAgent withCrashReportEnabled(boolean z) {
        this.crashReportEnabled = z;
        return this;
    }

    public NBSAppAgent withOnlyMainProcEnabled(boolean z) {
        onlyMainProcess = z;
        return this;
    }

    public NBSAppAgent withSampleRatio(int i2) {
        this.ratio = i2;
        return this;
    }

    public static void setLogging(String str) {
        if (str == null) {
            return;
        }
        i.f36658a = str;
    }

    public static void setLogging(int i2) {
        if (i2 <= 0) {
            return;
        }
        i.f36659b = i2;
    }

    public static void maskSensitiveRegion(Rect rect) {
        try {
            NBSScreenRecordControl.getInstance().maskSensitiveRegion(rect);
        } catch (Throwable th) {
            g.b("maskSensitiveRegion has an error : ", th);
        }
    }

    public static void startNextSession() {
        try {
            startNextSession(null);
        } catch (Throwable th) {
            g.b("startNextSession has an error : ", th);
        }
    }

    public static void unMaskSensitiveRegion(Rect rect) {
        try {
            NBSScreenRecordControl.getInstance().unMaskSensitiveRegion(rect);
        } catch (Throwable th) {
            g.b("unMaskSensitiveRegion has an error : ", th);
        }
    }

    public NBSAppAgent setStartOption(int i2) {
        setStartOption(i2, false);
        return this;
    }

    public static void maskViewId(String str) {
        try {
            NBSScreenRecordControl.getInstance().maskViewByTag(str);
        } catch (Throwable th) {
            Logger.error(TAG, "maskViewById has an error : ", th);
        }
    }

    public static void unMaskViewId(String str) {
        try {
            NBSScreenRecordControl.getInstance().unMaskViewByTag(str);
        } catch (Throwable th) {
            Logger.error(TAG, "unMaskViewById has an error : ", th);
        }
    }

    public static void setViewTag(View view, String str) {
        try {
            setViewTag(view, R.string.view_attached_id, str);
        } catch (Throwable th) {
            Logger.error(TAG, "setViewTag error", th);
        }
    }

    private NBSAppAgent() {
    }

    public static <T extends ComponentCallbacks> void setPageName(T t, String str) {
        if (t == null || str == null) {
            return;
        }
        try {
            com.networkbench.agent.impl.data.a.b.f36766a.a(t.getClass().getName(), ab.a(str, 128));
        } catch (Throwable th) {
            Logger.error(TAG, "error setPageName", th);
        }
    }

    public static void leaveAction(int i2, String str, String str2, Map<String, Object> map) {
        try {
            j.a("NBSAppAgent leaveActionFlutterPage leaveJsStamp = " + str);
            if (r.u().af()) {
                n.a(i2, Long.valueOf(str).longValue(), str2, map);
            }
        } catch (Throwable th) {
            g.b("leaveAction has an error : ", th);
        }
    }

    public static ISpan startTransaction(String str, String str2) {
        try {
            return startTransaction(str, str2, "", SpanType.TYPE_TRANSACTION);
        } catch (Throwable th) {
            Logger.error(TAG, "startTransaction  error", th);
            return new NullSpan();
        }
    }

    @Deprecated
    public static void onEvent(String str) {
        try {
            com.networkbench.agent.impl.n.b.b().a(str, null, null);
            if (r.u().j()) {
                g.n(" onEvent  = " + str);
            }
        } catch (Throwable th) {
            g.b(" onEvent has an error ", th);
        }
    }

    public static void reportError(String str, Map<String, Object> map) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            log.a("reportError(String message, Map<String, Object> metaData)");
            reportErrorType(str, new Exception(ak.e(2)), map, 1);
            if (r.u().j()) {
                g.n("reportErrorType   message = " + str + "\nmetaData = " + ak.a(map).toString());
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
            g.b(" reportError has an error ", th);
        }
    }

    public static void reportError(String str, Exception exc, Map<String, Object> map) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            log.a("reportError(String message, Exception e, Map<String, Object> metaData)");
            reportErrorType(str, exc, map, 2);
        } catch (Throwable th) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
            g.b(" reportError has an error ", th);
        }
    }
}

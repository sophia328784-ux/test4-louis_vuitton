package com.networkbench.agent.impl.instrumentation;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.oom.OOMModuleWrapper;
import com.networkbench.agent.impl.data.type.a;
import com.networkbench.agent.impl.data.type.b;
import com.networkbench.agent.impl.data.type.f;
import com.networkbench.agent.impl.data.type.q;
import com.networkbench.agent.impl.data.type.r;
import com.networkbench.agent.impl.floatbtnmanager.c;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.session.screen.NBSScreenRecordTimer;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ag;
import com.networkbench.agent.impl.util.ak;

/* JADX INFO: loaded from: classes2.dex */
public class NBSAppInstrumentation {
    private static final String TAG = "NBSAppInstrumentation";
    public static q activityTrace;

    static {
        try {
            activityTrace = new a();
        } catch (Throwable th) {
            Logger.error(TAG, "error init params", th);
        }
    }

    public static void activityCreateBeginIns(Object obj) {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityCreateBeginIns invoke in parent");
                return;
            }
            String activityName = getActivityName(obj);
            activityTrace.a(activityName, "#onCreate", r.ACTIVITY_ONCREATE);
            ScreenNameManager.setCurrentActivityName(activityName);
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  activityCreateBeginIns() has an error :" + th);
        }
    }

    public static void activityCreateEndIns() {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityCreateEndIns invoke in parent");
            } else {
                activityTrace.b();
            }
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  activityCreateEndIns() has an error :" + th);
        }
    }

    public static void activityRestartBeginIns(Object obj) {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityRestartBeginIns invoke in parent");
            } else {
                activityTrace.a(getActivityName(obj), "#onRestart", r.ACTIVITY_ONRESTART);
            }
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  activityRestartBeginIns() has an error :" + th);
        }
    }

    public static void activityRestartEndIns() {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityRestartEndIns invoke in parent");
            } else {
                activityTrace.b();
            }
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  activityRestartEndIns() has an error :" + th);
        }
    }

    public static void activityResumeBeginIns(Object obj) {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityResumeBeginIns invoke in parent");
                return;
            }
            String activityName = getActivityName(obj);
            configDecorview(obj);
            ScreenNameManager.setCurrentActivityName(activityName);
            activityTrace.a(activityName, r.ACTIVITY_ONRESUME);
        } catch (Throwable th) {
            Logger.error(TAG, "NBSAppInstrumentation activityResumeBeginIns() error", th);
        }
    }

    public static void activityResumeEndIns() {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityResumeEndIns invoke in parent");
                return;
            }
            Logger.debug(TAG, "activityResumeEndIns");
            activityTrace.a();
            f.f36952a.a(f.a.RUNNING);
            NBSScreenRecordTimer.storeBitmapDelay(100L);
        } catch (Throwable th) {
            Logger.error(TAG, "NBSAppInstrumentation activityResumeEndIns() error", th);
        }
    }

    public static void activityStartBeginIns(Object obj) {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityStartBeginIns invoke in parent");
                return;
            }
            String activityName = getActivityName(obj);
            activityTrace.b(activityName, r.ACTIVITY_ONSTART);
            ScreenNameManager.setCurrentActivityName(activityName);
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  activityStartBeginIns() has an error :" + th);
        }
    }

    public static void activityStartEndIns() {
        try {
            if (isInvokedTwice(6)) {
                Logger.debug(TAG, "activityStartEndIns invoke in parent");
            } else {
                activityTrace.c();
            }
        } catch (Exception e2) {
            Logger.error(TAG, "NBSAppInstrumentation activityStartEndIns() error", e2);
        }
    }

    public static void activityStop(Object obj) {
    }

    public static void applicationCreateBeginIns() {
        try {
            b.a().c();
            registerListener();
        } catch (Throwable th) {
            Logger.error(TAG, "applicationCreateBeginIns has an error", th);
        }
    }

    public static void applicationCreateEndIns() {
        try {
            Application applicationE = ak.e();
            if ((com.networkbench.agent.impl.util.r.u().ah() && applicationE != null) || ak.d()) {
                Logger.debug(TAG, "init oom module in applicationCreateEndIns");
                OOMModuleWrapper.INSTANCE.initOOMModule();
            }
            if (applicationE != null && com.networkbench.agent.impl.util.r.u().k() && !c.f37078a) {
                g.i("applicationCreateEndIns application start to registerActivityLifecycleCallbacks");
                applicationE.registerActivityLifecycleCallbacks(c.b());
            }
            b.a().d();
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  applicationCreateEndIns() has an error :" + th);
        }
    }

    public static void attachBaseContextBeginIns(Context context) {
        try {
            b.a().a(context);
            com.networkbench.agent.impl.util.a.f38249a.a(System.currentTimeMillis());
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  attachBaseContextBeginIns() has an error :" + th);
        }
    }

    public static void attachBaseContextEndIns() {
        try {
            b.a().b();
        } catch (Throwable th) {
            g.i("NBSAppInstrumentation  attachBaseContextEndIns() has an error :" + th);
        }
    }

    private static void configDecorview(Object obj) {
        if (obj != null && com.networkbench.agent.impl.util.r.u().aK() && (obj instanceof Activity)) {
            com.networkbench.agent.impl.i.f.a().a(((Activity) obj).getWindow().getDecorView());
        }
    }

    private static String getActivityName(Object obj) {
        if (obj == null) {
            return "";
        }
        return obj instanceof Activity ? ((Activity) obj).getClass().getName() : obj.getClass().getName();
    }

    public static boolean isInvokedTwice(int i2) {
        return ag.b(i2);
    }

    private static void registerListener() {
        c.a().a((a) activityTrace);
    }

    public static void setCustomPageName(String str) {
        try {
            activityTrace.a(str);
        } catch (Throwable th) {
            g.i("setCustomPageName  has an  error!!" + th.getMessage());
        }
    }
}

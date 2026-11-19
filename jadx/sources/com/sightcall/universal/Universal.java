package com.sightcall.universal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.agent.UniversalAgent;
import com.sightcall.universal.ar.UniversalAr;
import com.sightcall.universal.consent.ConsentRequestEvent;
import com.sightcall.universal.fcm.UniversalFcm;
import com.sightcall.universal.fcm.messages.Ping;
import com.sightcall.universal.guest.UniversalGuest;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.internal.ui.CallOverlay;
import com.sightcall.universal.internal.ui.UniversalNotification;
import com.sightcall.universal.media.UniversalMedia;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.permission.PermissionsEvent;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.scenario.UniversalScenario;
import com.sightcall.universal.scenario.steps.FetchReferenceStep;
import com.sightcall.universal.util.DeeplinkParser;
import com.sightcall.universal.util.UniversalSettings;
import defpackage.b21;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.util.DeadEvent;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes3.dex */
public final class Universal {
    private static final Handler UI_HANDLER;
    private static Universal instance;
    private static final OldLogger logger = OldLogger.get("UNIVERSAL");
    private final UniversalAgent agent;
    private final UniversalAr ar;
    private final Context context;
    private final UniversalFcm fcm;
    private final UniversalGuest guest;
    private final UniversalMedia media;
    private final UniversalScenario scenario;
    private final UniversalSettings settings;

    static {
        logger().trace("Version:%s, Code:%d, Date:%s, Git:#%s, Type:%s", "7.10.2 Build 800120953 (120952)", Integer.valueOf(net.rtccloud.sdk.BuildConfig.VERSION_CODE), "2026-09-07 08:49:28 UTC", "84e19ba2", "release");
        UI_HANDLER = new Handler(Looper.getMainLooper());
    }

    private Universal(Context context) {
        RxJavaPlugins.f71154a = new b21(16);
        register(this);
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.settings = new UniversalSettings(applicationContext);
        this.fcm = new UniversalFcm(applicationContext);
        this.agent = new UniversalAgent(applicationContext);
        this.guest = new UniversalGuest(applicationContext);
        this.media = new UniversalMedia(applicationContext);
        this.scenario = new UniversalScenario(applicationContext);
        this.ar = new UniversalAr(applicationContext);
        CallOverlay.instance(applicationContext);
    }

    private static boolean abortIfNull(Object obj, String str) {
        if (obj != null) {
            return false;
        }
        logger.e("[%s] must not be null", str);
        return true;
    }

    public static UniversalAgent agent() {
        return instance.agent;
    }

    public static UniversalAr ar() {
        return instance.ar;
    }

    public static Context context() {
        return instance.context;
    }

    public static UniversalFcm fcm() {
        return instance.fcm;
    }

    public static UniversalGuest guest() {
        return instance.guest;
    }

    public static void init(Context context) {
        Rtcc.init(context);
        if (instance == null) {
            synchronized (Universal.class) {
                try {
                    if (instance == null) {
                        instance = new Universal(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static Universal instance() {
        return instance;
    }

    public static OldLogger logger() {
        return logger;
    }

    public static UniversalMedia media() {
        return instance.media;
    }

    public static void register(Object obj) {
        Utils.checkNotNull(obj, "listener");
        Rtcc.instance().bus().register(obj);
    }

    public static UniversalScenario scenario() {
        return instance.scenario;
    }

    public static UniversalSettings settings() {
        return instance.settings;
    }

    public static void start(String str) {
        logger.i("Universal.start(url=" + str + ")");
        if (abortIfNull(str, ConfigurationName.DOWNLOAD_PLUGIN_URL)) {
            return;
        }
        try {
            DeeplinkParser.parse(Uri.parse(str)).execute(context());
        } catch (Exception e2) {
            logger.e(e2.getMessage());
        }
    }

    public static void stop() {
        logger.i("Universal.stop()");
        instance.scenario.interrupt();
    }

    public static Handler uiHandler() {
        return UI_HANDLER;
    }

    public static void unregister(Object obj) {
        Utils.checkNotNull(obj, "listener");
        Rtcc.instance().bus().unregister(obj);
    }

    public void moveCallActivityToBackground() {
        ActivityManager activityManager;
        CallActivity callActivity = CallActivity.getInstance();
        if (callActivity == null) {
            logger.e("Universal", "CallActivity instance is null. Cannot move to background.");
            return;
        }
        callActivity.getWindow().addFlags(8388608);
        callActivity.setTaskDescription(new ActivityManager.TaskDescription((String) null, (Bitmap) null, 0));
        CallOverlay.instance(this.context).disable();
        callActivity.moveTaskToBack(true);
        if (!SdkUtilsKt.isAtLeastSdk34() || (activityManager = (ActivityManager) callActivity.getSystemService(ActionFloatingViewItem.f37018a)) == null) {
            return;
        }
        for (ActivityManager.AppTask appTask : activityManager.getAppTasks()) {
            if (appTask.getTaskInfo().id == callActivity.getTaskId()) {
                appTask.finishAndRemoveTask();
            }
        }
    }

    @Event
    public void onDeadEvent(DeadEvent<?> deadEvent) {
        if (deadEvent.event() instanceof ConsentRequestEvent) {
            logger.e("Consent requested but there is currently no listener!");
        }
    }

    @Event
    public void onPermissionsEvent(PermissionsEvent permissionsEvent) {
        if (permissionsEvent.granted()) {
            return;
        }
        logger.i(permissionsEvent.toString());
    }

    @Event
    public void onPing(Ping ping) {
        UniversalNotification.PING.show(this.context, ping);
    }

    public static void start(Intent intent) {
        logger.i(String.format("Universal.start(intent=%s)", intent));
        if (abortIfNull(intent, "intent")) {
            return;
        }
        try {
            DeeplinkParser.parse(intent.getData()).execute(context());
        } catch (Exception e2) {
            logger.e(e2.getMessage());
        }
    }

    public static void start(Uri uri) {
        logger.i(String.format("Universal.start(uri=%s)", uri));
        if (abortIfNull(uri, "uri")) {
            return;
        }
        try {
            DeeplinkParser.parse(uri).execute(context());
        } catch (Exception e2) {
            logger.e(e2.getMessage());
        }
    }

    public static void start(Scenario scenario) {
        logger.i(String.format("Universal.start(scenario=%s)", scenario));
        if (abortIfNull(scenario, "scenario")) {
            return;
        }
        instance.scenario.start(scenario);
    }

    public static void start(Config config) {
        logger.i(String.format("Universal.start(config=%s)", config));
        if (abortIfNull(config, "config")) {
            return;
        }
        Step next = FetchReferenceStep.next(config);
        if (abortIfNull(next, "step")) {
            return;
        }
        instance.scenario.start(Scenario.with(next));
    }
}

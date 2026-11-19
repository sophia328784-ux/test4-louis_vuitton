package com.appsflyer.internal;

import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.appsflyer.migration.internal.MigrationDataProvider;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFh1oSDK implements AFh1sSDK {
    private Long AFKeystoreWrapper;
    private JSONObject AFLogger;
    private final AFi1aSDK d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f22652e;
    private boolean force;
    private Long registerClient;
    private final AFc1iSDK unregisterClient;
    private boolean v;

    public AFh1oSDK(AFc1iSDK aFc1iSDK, AFi1aSDK aFi1aSDK) {
        aFc1iSDK.getClass();
        aFi1aSDK.getClass();
        this.unregisterClient = aFc1iSDK;
        this.d = aFi1aSDK;
    }

    private final JSONObject AFKeystoreWrapper() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObjectWaitForAttributionData = MigrationDataProvider.waitForAttributionData(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
        if (jSONObjectWaitForAttributionData != null) {
            this.registerClient = Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis);
        }
        return jSONObjectWaitForAttributionData;
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void AFLogger() {
        this.f22652e = false;
        this.force = false;
        MigrationDataProvider.clear();
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void D_(Intent intent, AFa1qSDK aFa1qSDK) throws Throwable {
        intent.getClass();
        aFa1qSDK.getClass();
        Uri data = intent.getData();
        if (data == null) {
            return;
        }
        try {
            Object[] objArr = {data, aFa1qSDK};
            Map map = AFa1bSDK.getInstance;
            Object declaredConstructor = map.get(1527976489);
            if (declaredConstructor == null) {
                declaredConstructor = ((Class) AFa1bSDK.AFLogger((char) ((SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)) + 41415), Gravity.getAbsoluteGravity(0, 0), TextUtils.lastIndexOf("", '0') + 38)).getDeclaredConstructor(Uri.class, AFa1qSDK.class);
                map.put(1527976489, declaredConstructor);
            }
            Object objNewInstance = ((Constructor) declaredConstructor).newInstance(objArr);
            Object method = map.get(260993585);
            if (method == null) {
                method = ((Class) AFa1bSDK.AFLogger((char) (41416 - (ViewConfiguration.getWindowTouchSlop() >> 8)), KeyEvent.keyCodeFromString(""), View.MeasureSpec.getSize(0) + 37)).getMethod("AFLogger", null);
                map.put(260993585, method);
            }
            Object objInvoke = ((Method) method).invoke(objNewInstance, null);
            Object method2 = map.get(1508099722);
            if (method2 == null) {
                method2 = ((Class) AFa1bSDK.AFLogger((char) View.getDefaultSize(0, 0), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 36, 50 - (ViewConfiguration.getEdgeSlop() >> 16))).getMethod("AFLogger", null);
                map.put(1508099722, method2);
            }
            boolean zBooleanValue = ((Boolean) ((Method) method2).invoke(objInvoke, null)).booleanValue();
            this.f22652e = !zBooleanValue;
            this.force = zBooleanValue;
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                throw th;
            }
            throw cause;
        }
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void d() {
        if (this.f22652e || this.force || MigrationDataProvider.waitForDeepLinkingData(0L) == null) {
            return;
        }
        this.f22652e = true;
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void registerClient(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        JSONObject jSONObjectWaitForDeepLinkingData = MigrationDataProvider.waitForDeepLinkingData(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
        if (jSONObjectWaitForDeepLinkingData != null) {
            this.AFKeystoreWrapper = Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis);
            unregisterClient("dl", aFh1pSDK, jSONObjectWaitForDeepLinkingData);
        }
        MigrationDataProvider.clear();
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void unregisterClient(AFf1uSDK aFf1uSDK, Function0<Unit> function0) {
        JSONObject jSONObjectAFKeystoreWrapper;
        aFf1uSDK.getClass();
        function0.getClass();
        if (this.unregisterClient.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 1 && aFf1uSDK.unregisterClient == AFd1bSDK.CONVERSION) {
            Iterator<Referrer> it = this.d.unregisterClient.iterator();
            while (it.hasNext()) {
                if (it.next().getState() == Referrer.State.STARTED) {
                    return;
                }
            }
            if (this.v || (jSONObjectAFKeystoreWrapper = AFKeystoreWrapper()) == null) {
                return;
            }
            this.AFLogger = jSONObjectAFKeystoreWrapper;
            function0.mo47invoke();
        }
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void d(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        JSONObject attributionData = MigrationDataProvider.getAttributionData();
        if (attributionData != null) {
            unregisterClient("attr", aFh1pSDK, attributionData);
            this.v = true;
        }
        MigrationDataProvider.clear();
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final boolean registerClient() {
        return this.f22652e;
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final void unregisterClient(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        JSONObject jSONObject = this.AFLogger;
        if (jSONObject != null) {
            jSONObject.getClass();
            unregisterClient("attr", aFh1pSDK, jSONObject);
        } else {
            JSONObject jSONObjectAFKeystoreWrapper = AFKeystoreWrapper();
            if (jSONObjectAFKeystoreWrapper != null) {
                unregisterClient("attr", aFh1pSDK, jSONObjectAFKeystoreWrapper);
            }
        }
        MigrationDataProvider.clear();
    }

    private final void unregisterClient(String str, AFh1pSDK aFh1pSDK, JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put(str, jSONObject);
        HashMap map2 = new HashMap();
        map2.put("branch", map);
        HashMap map3 = new HashMap();
        map3.put("external", map2);
        aFh1pSDK.AFKeystoreWrapper(map3);
        Map<String, Object> map4 = aFh1pSDK.d;
        map4.getClass();
        AFe1zSDK aFe1zSDKAFKeystoreWrapper = aFh1pSDK.AFKeystoreWrapper();
        aFe1zSDKAFKeystoreWrapper.getClass();
        unregisterClient(map4, aFe1zSDKAFKeystoreWrapper);
    }

    private final void unregisterClient(Map<String, Object> map, AFe1zSDK aFe1zSDK) {
        Long l;
        if (aFe1zSDK == AFd1bSDK.LAUNCH) {
            l = this.AFKeystoreWrapper;
        } else {
            l = aFe1zSDK == AFd1bSDK.ATTR ? this.registerClient : null;
        }
        if (l != null) {
            AFj1iSDK.AFLogger(map).put("migration", MapsKt.h(new Pair("delay", Long.valueOf(l.longValue()))));
        }
    }

    @Override // com.appsflyer.internal.AFh1sSDK
    public final boolean unregisterClient() {
        return this.v;
    }
}

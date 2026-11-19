package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.sdk_base.logger.LogTag;
import com.appsflyer.sdk_base.referrer.Payload;
import com.appsflyer.sdk_base.referrer.Referrer;
import com.appsflyer.share.AppsFlyerConversionListener;
import com.appsflyer.share.network.http.ResponseNetwork;
import defpackage.v40;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AFf1uSDK extends AFf1tSDK {
    private final AFi1aSDK AFLoggerLogLevel;
    private final AFe1wSDK AppsFlyerLib;
    private final AFa1lSDK afDebugLog;
    private final AFh1xSDK afErrorLog;
    private final AFf1hSDK afInfoLog;
    private final AFc1eSDK afWarnLog;
    private final AFc1dSDK<AppsFlyerConversionListener> force;
    private final AFf1aSDK getEntries;
    public Map<? extends String, ? extends Object> v;
    private final AFh1sSDK values;

    public /* synthetic */ class AFa1ySDK {
        public static final /* synthetic */ int[] AFLogger;

        static {
            int[] iArr = new int[Referrer.State.values().length];
            try {
                iArr[Referrer.State.FINISHED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Referrer.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Referrer.State.NOT_STARTED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            AFLogger = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AFf1uSDK(AFh1pSDK aFh1pSDK, AFc1bSDK aFc1bSDK) {
        super(aFh1pSDK, aFc1bSDK, null, 4, null);
        aFh1pSDK.getClass();
        aFc1bSDK.getClass();
        this.force = new AFc1dSDK<>(new d(aFc1bSDK, 2));
        AFi1aSDK aFi1aSDKAfDebugLog = aFc1bSDK.afDebugLog();
        aFi1aSDKAfDebugLog.getClass();
        this.AFLoggerLogLevel = aFi1aSDKAfDebugLog;
        AFh1xSDK aFh1xSDKE = aFc1bSDK.e();
        aFh1xSDKE.getClass();
        this.afErrorLog = aFh1xSDKE;
        AFf1hSDK aFf1hSDKI = aFc1bSDK.i();
        aFf1hSDKI.getClass();
        this.afInfoLog = aFf1hSDKI;
        AFa1lSDK userPhone = aFc1bSDK.setUserPhone();
        userPhone.getClass();
        this.afDebugLog = userPhone;
        AFc1eSDK androidIdData = aFc1bSDK.setAndroidIdData();
        androidIdData.getClass();
        this.afWarnLog = androidIdData;
        AFe1wSDK aFe1wSDKAfWarnLog = aFc1bSDK.afWarnLog();
        aFe1wSDKAfWarnLog.getClass();
        this.AppsFlyerLib = aFe1wSDKAfWarnLog;
        AFf1aSDK aFf1aSDKW = aFc1bSDK.w();
        aFf1aSDKW.getClass();
        this.getEntries = aFf1aSDKW;
        this.values = aFc1bSDK.setUserLastName();
        AFd1bSDK aFd1bSDK = AFd1bSDK.RESOLVE_ESP;
        aFd1bSDK.getClass();
        this.AFKeystoreWrapper.add(aFd1bSDK);
        AFd1bSDK aFd1bSDK2 = AFd1bSDK.DLSDK;
        aFd1bSDK2.getClass();
        this.AFKeystoreWrapper.add(aFd1bSDK2);
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final boolean AFLogger() {
        if (!super.AFLogger()) {
            ResponseNetwork responseNetwork = ((AFe1kSDK) this).v;
            boolean z = this.e == AFd1cSDK.FAILURE && responseNetwork != null && responseNetwork.getStatusCode() / 500 == 1;
            AFe1zSDK aFe1zSDK = this.unregisterClient;
            boolean z2 = aFe1zSDK == AFd1bSDK.CONVERSION || aFe1zSDK == AFd1bSDK.ATTR;
            if (!z || !z2) {
                return false;
            }
        }
        return true;
    }

    @Override // com.appsflyer.internal.AFf1tSDK
    public final void d(AFh1pSDK aFh1pSDK) {
        aFh1pSDK.getClass();
        super.d(aFh1pSDK);
        int i2 = aFh1pSDK.afWarnLog;
        AFh1xSDK aFh1xSDK = this.afErrorLog;
        if (aFh1xSDK.unregisterClient.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 1) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            aFh1xSDK.afErrorLog = jCurrentTimeMillis;
            long j2 = aFh1xSDK.f22657e;
            if (j2 != 0) {
                aFh1xSDK.d.put("from_fg", Long.valueOf(jCurrentTimeMillis - j2));
                aFh1xSDK.AFKeystoreWrapper.d("first_launch", new JSONObject(aFh1xSDK.d).toString());
            } else {
                AFLogger.INSTANCE.i(LogTag.GENERAL, "Metrics: fg ts is missing");
            }
        }
        Object obj = aFh1pSDK.d.get("meta");
        Map map = (!(obj instanceof Map) || ((obj instanceof KMappedMarker) && !(obj instanceof KMutableMap))) ? null : (Map) obj;
        if (map == null) {
            map = new HashMap();
            Map<String, Object> map2 = aFh1pSDK.d;
            map2.getClass();
            map2.put("meta", map);
        }
        Map<String, ?> mapUnregisterClient = this.afDebugLog.unregisterClient();
        if (!mapUnregisterClient.isEmpty()) {
            aFh1pSDK.AFKeystoreWrapper(mapUnregisterClient);
        }
        AFh1bSDK aFh1bSDKD = this.afInfoLog.d();
        if (aFh1bSDKD != null) {
            HashMap map3 = new HashMap();
            map3.put("cdn_token", aFh1bSDKD.AFKeystoreWrapper);
            String str = aFh1bSDKD.d;
            if (str != null) {
                map3.put("c_ver", str);
            }
            long j3 = aFh1bSDKD.AFLogger;
            if (j3 > 0) {
                map3.put(Payload.LATENCY, Long.valueOf(j3));
            }
            long j4 = aFh1bSDKD.unregisterClient;
            if (j4 > 0) {
                map3.put("delay", Long.valueOf(j4));
            }
            int i3 = aFh1bSDKD.registerClient;
            if (i3 > 0) {
                map3.put("res_code", Integer.valueOf(i3));
            }
            if (aFh1bSDKD.f22651e != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(aFh1bSDKD.f22651e.getClass().getSimpleName());
                sb.append(": ");
                sb.append(aFh1bSDKD.f22651e.getMessage());
                map3.put("error", sb.toString());
            }
            AFh1dSDK aFh1dSDK = aFh1bSDKD.force;
            if (aFh1dSDK != null) {
                map3.put("sig", aFh1dSDK.toString());
            }
            String str2 = aFh1bSDKD.w;
            if (str2 != null) {
                map3.put("cdn_cache_status", str2);
            }
            map.put("rc", map3);
        }
        AFg1rSDK aFg1rSDKValues = getW();
        Map<String, Object> map4 = aFh1pSDK.d;
        map4.getClass();
        aFg1rSDKValues.registerClient(map4);
        if (i2 == 1) {
            AFh1xSDK aFh1xSDK2 = this.afErrorLog;
            HashMap map5 = new HashMap(aFh1xSDK2.registerClient);
            aFh1xSDK2.registerClient.clear();
            if (!map5.isEmpty()) {
                map.put("ddl", map5);
            }
            HashMap map6 = new HashMap(this.afErrorLog.d);
            if (!map6.isEmpty()) {
                map.put("first_launch", map6);
            }
        } else if (i2 == 2) {
            AFh1xSDK aFh1xSDK3 = this.afErrorLog;
            aFh1xSDK3.AFKeystoreWrapper.AFLogger("first_launch");
            HashMap map7 = new HashMap(aFh1xSDK3.d);
            if (!map7.isEmpty()) {
                map.put("first_launch", map7);
            }
        }
        AFh1sSDK aFh1sSDK = this.values;
        if (aFh1sSDK != null) {
            if (i2 == 1) {
                aFh1sSDK.d(aFh1pSDK);
            } else if (i2 == 2 && (aFh1pSDK instanceof AFh1kSDK) && !aFh1sSDK.unregisterClient()) {
                aFh1sSDK.unregisterClient(aFh1pSDK);
            }
        }
        if (map.isEmpty()) {
            aFh1pSDK.d.remove("meta");
        }
        if (i2 <= 2) {
            if (i2 == 1) {
                this.AFLoggerLogLevel.AFLogger = true;
            }
            ArrayList arrayList = new ArrayList();
            for (Referrer referrer : (Referrer[]) this.AFLoggerLogLevel.unregisterClient.toArray(new Referrer[0])) {
                boolean z = referrer instanceof AFi1gSDK;
                int i4 = AFa1ySDK.AFLogger[referrer.getState().ordinal()];
                if (i4 == 1) {
                    if (z) {
                        getE().registerClient(AppsFlyerProperties.NEW_REFERRER_SENT, true);
                    }
                    arrayList.add(referrer.map);
                } else if (i4 != 2) {
                    if (i4 != 3) {
                        v40.g();
                        return;
                    }
                } else if (i2 == 2 && !z) {
                    HashMap map8 = new HashMap();
                    map8.put(Payload.SOURCE, referrer.getSource());
                    map8.put(Payload.RESPONSE, Payload.RESPONSE_TIMEOUT);
                    map8.put("type", referrer.getType());
                    arrayList.add(map8);
                }
            }
            if (!arrayList.isEmpty()) {
                aFh1pSDK.AFKeystoreWrapper(Payload.RFRS, arrayList);
            }
            Object obj2 = this.v;
            if (obj2 != null) {
                aFh1pSDK.AFKeystoreWrapper("fb_ddl", obj2);
            }
        }
        AFh1sSDK aFh1sSDK2 = this.values;
        if (aFh1sSDK2 != null && aFh1pSDK.AFKeystoreWrapper() == AFd1bSDK.LAUNCH && aFh1sSDK2.registerClient()) {
            aFh1sSDK2.registerClient(aFh1pSDK);
        }
        getW().unregisterClient(aFh1pSDK);
    }

    @Override // com.appsflyer.internal.AFe1kSDK, com.appsflyer.internal.AFe1ySDK
    public final void force() {
        super.force();
        AFd1cSDK aFd1cSDK = this.e;
        AFd1cSDK aFd1cSDK2 = AFd1cSDK.SUCCESS;
        if (aFd1cSDK == aFd1cSDK2) {
            this.afWarnLog.onPause = System.currentTimeMillis();
        }
        AFh1xSDK aFh1xSDK = this.afErrorLog;
        if (aFh1xSDK.unregisterClient.AFKeystoreWrapper.AFLogger("appsFlyerCount", 0) == 1) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j2 = aFh1xSDK.afErrorLog;
            if (j2 != 0) {
                aFh1xSDK.d.put("net", Long.valueOf(jCurrentTimeMillis - j2));
                aFh1xSDK.AFKeystoreWrapper.d("first_launch", new JSONObject(aFh1xSDK.d).toString());
            } else {
                AFLogger.INSTANCE.i(LogTag.GENERAL, "Metrics collection skipped: launch start timestamp not recorded");
            }
        }
        AppsFlyerConversionListener appsFlyerConversionListener = (AppsFlyerConversionListener) this.force.AFKeystoreWrapper.mo47invoke();
        if (appsFlyerConversionListener != null) {
            boolean z = getForce() == 1;
            if (this.e == aFd1cSDK2 || z) {
                this.AppsFlyerLib.d(new AFg1lSDK(this, getE(), appsFlyerConversionListener));
            }
        }
        AFh1sSDK aFh1sSDK = this.values;
        if (aFh1sSDK != null) {
            aFh1sSDK.unregisterClient(this, new d(this, 3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AppsFlyerConversionListener AFLogger(AFc1bSDK aFc1bSDK) {
        return aFc1bSDK.setUserFirstName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(AFf1uSDK aFf1uSDK) {
        aFf1uSDK.getEntries.d(new AFh1kSDK());
        return Unit.f71739a;
    }
}

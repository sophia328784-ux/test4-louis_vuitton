package com.networkbench.agent.impl.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Looper;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.PrivacyDataType;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.instrumentation.NBSTransactionStateUtil;
import com.networkbench.agent.impl.session.network.NBSNetworkCallbackManager;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.md;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f38411a = 20;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f38412b = 29;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f38413c = "ActionData";
    private static final int d = -1;

    public static JsonArray a() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(com.networkbench.agent.impl.e.c.a()));
        jsonArray.add(new JsonPrimitive(NBSAgent.getVersion()));
        jsonArray.add(new JsonPrimitive(NBSAgent.getBuildId()));
        jsonArray.add(new JsonPrimitive(NBSAgent.getApplicationInformation().getChannelId()));
        com.networkbench.agent.impl.c.e eVar = r.A;
        eVar.a("buildId is" + NBSAgent.getBuildId());
        eVar.a("appinfo is" + jsonArray.toString());
        return jsonArray;
    }

    private static JsonObject b(HashMap<String, String> map, boolean z, String str) {
        JsonObject jsonObject = new JsonObject();
        com.networkbench.agent.impl.data.j.c avalidUrlParam = NBSTransactionStateUtil.getAvalidUrlParam(HarvestConfiguration.getDefaultHarvestConfiguration().getUrlParamArray(), str);
        if (avalidUrlParam != null) {
            com.networkbench.agent.impl.c.g.o("getHeaderData httpUrlParam:  " + avalidUrlParam.toString());
            String[] strArr = z ? avalidUrlParam.d : avalidUrlParam.f36925c;
            if (strArr == null || strArr.length <= 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (!h(entry.getKey().toLowerCase())) {
                        jsonObject.addProperty(entry.getKey(), entry.getValue());
                    }
                }
            } else {
                for (String str2 : strArr) {
                    for (Map.Entry<String, String> entry2 : map.entrySet()) {
                        if (entry2.getKey().toLowerCase().equalsIgnoreCase(str2)) {
                            jsonObject.addProperty(entry2.getKey(), entry2.getValue());
                        }
                    }
                }
            }
        }
        if (z) {
            Logger.debug(f38413c, "white list responce header:" + jsonObject);
            return jsonObject;
        }
        Logger.debug(f38413c, "white list request header:" + jsonObject);
        return jsonObject;
    }

    private static JsonObject c(HashMap<String, String> map, boolean z, String str) {
        JsonObject jsonObject = new JsonObject();
        ConcurrentHashMap<HarvestConfiguration.UrlFilter, com.networkbench.agent.impl.data.j.c> urlParamBlackArray = HarvestConfiguration.getDefaultHarvestConfiguration().getUrlParamBlackArray();
        if (urlParamBlackArray.size() > 0) {
            com.networkbench.agent.impl.data.j.c avalidUrlParam = NBSTransactionStateUtil.getAvalidUrlParam(urlParamBlackArray, str);
            if (avalidUrlParam != null) {
                String[] strArr = z ? avalidUrlParam.d : avalidUrlParam.f36925c;
                if (strArr != null && strArr.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (String str2 : strArr) {
                        sb.append(str2.toLowerCase());
                        sb.append(",");
                    }
                    String string = sb.toString();
                    for (String str3 : map.keySet()) {
                        String lowerCase = str3.toLowerCase();
                        if (!string.contains(lowerCase + ",") && !h(lowerCase)) {
                            String str4 = map.get(str3);
                            com.networkbench.agent.impl.c.g.o("blacklist getHeaderData headerParam value:" + str4 + ", key:" + str3);
                            if (!TextUtils.isEmpty(str4)) {
                                jsonObject.addProperty(lowerCase, str4);
                            }
                        }
                    }
                }
            } else {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    if (!h(entry.getKey().toLowerCase())) {
                        jsonObject.addProperty(entry.getKey(), entry.getValue());
                    }
                }
            }
        }
        return jsonObject;
    }

    public static boolean d(String str) {
        return !ak.r(str) && str.contains("networkbench.com");
    }

    public static boolean e(Context context) {
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        if (context.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", context.getPackageName()) != 0) {
            return false;
        }
        r.A.a("isGetNetworkTypePermission get READ_PHONE_STATE permission");
        return true;
    }

    public static Bitmap f(String str) throws Throwable {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            md.k("run network action in ui thread");
            return null;
        }
        if (str == null) {
            md.n("loadBitmap url is null");
            return null;
        }
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        httpURLConnection.setDoInput(true);
        Callback.a(httpURLConnection);
        return BitmapFactory.decodeStream(Callback.g(httpURLConnection));
    }

    public static JsonArray g(Context context) {
        JsonArray jsonArray = new JsonArray();
        int iAw = r.u().aw();
        if (iAw == 1) {
            jsonArray.add(new JsonPrimitive(""));
        } else {
            jsonArray.add(new JsonPrimitive(r.u().av()));
        }
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(iAw)));
        jsonArray.add(new JsonPrimitive(r.u().au()));
        String strT = r.u().t();
        jsonArray.add(new JsonPrimitive(strT != null ? strT : ""));
        jsonArray.add(new JsonPrimitive((Number) Double.valueOf(r.u().q().a())));
        jsonArray.add(new JsonPrimitive((Number) Double.valueOf(r.u().q().b())));
        return jsonArray;
    }

    private static boolean h(String str) {
        return ab.c(str) || str.equalsIgnoreCase("authorization") || str.equalsIgnoreCase("cookie") || str.equalsIgnoreCase("proxy-authorization") || str.equalsIgnoreCase("set-cookie");
    }

    public static int d(Context context) {
        return com.networkbench.agent.impl.e.b.c(PrivacyDataType.PrivacyDataNetType);
    }

    public static boolean d(int i2) {
        return i2 >= 400 || i2 <= 0;
    }

    private static boolean d() {
        return HarvestConfiguration.getDefaultHarvestConfiguration().isUrlWhiteListEnabled();
    }

    public static boolean e(String str) {
        HarvestConfiguration harvestConfigurationM;
        if (str == null) {
            return true;
        }
        NBSAndroidAgentImpl impl = NBSAgent.getImpl();
        if (impl == null || (harvestConfigurationM = impl.m()) == null) {
            return false;
        }
        return !aj.b(str, harvestConfigurationM.getUrlFilterMode(), harvestConfigurationM.getUrlRules());
    }

    private static int h(Context context) {
        if (b(context) || !e(context)) {
            return -1;
        }
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return 0;
        }
        return telephonyManager.getNetworkType();
    }

    public static String f(Context context) {
        return a(h(context));
    }

    public static int a(Context context, int i2) {
        if (i2 == 20) {
            return 5;
        }
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 2;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 3;
            case 13:
                return b(context, i2) == 20 ? 5 : 4;
            default:
                return 0;
        }
    }

    public static String a(int i2) {
        if (i2 == -1) {
            return "WIFI";
        }
        if (i2 != 20) {
            switch (i2) {
                case 1:
                    return "GPRS";
                case 2:
                    return "EDGE";
                case 3:
                    return "UMTS";
                case 4:
                    return "CDMA";
                case 5:
                    return "EVDO_0";
                case 6:
                    return "EVDO_A";
                case 7:
                    return "1xRTT";
                case 8:
                    return "HSDPA";
                case 9:
                    return "HSUPA";
                case 10:
                    return "HSPA";
                case 11:
                    return "iDen";
                case 12:
                    return "EVDO_B";
                case 13:
                    return "LTE";
                case 14:
                    return "EHRPD";
                case 15:
                    return "HSPAP";
                default:
                    return "UNKNOWN";
            }
        }
        return "NR";
    }

    public static int a(String str) {
        try {
            if (Harvest.isHttp_network_enabled() && !TextUtils.isEmpty(str) && !ak.f()) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                InetAddress[] allByName = InetAddress.getAllByName(str);
                int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                if (!b(iCurrentTimeMillis)) {
                    iCurrentTimeMillis = -1;
                }
                if (allByName != null && allByName.length > 0) {
                    ConcurrentHashMap<String, com.networkbench.agent.impl.socket.r.a> concurrentHashMap = com.networkbench.agent.impl.socket.r.f38217a;
                    com.networkbench.agent.impl.socket.r.a aVar = concurrentHashMap.get(str);
                    if (aVar != null) {
                        if (ak.r(aVar.a())) {
                            aVar.a(allByName[0].getHostAddress());
                            return iCurrentTimeMillis;
                        }
                    } else {
                        concurrentHashMap.put(str, new com.networkbench.agent.impl.socket.r.a(iCurrentTimeMillis, allByName[0].getHostAddress()));
                    }
                }
                return iCurrentTimeMillis;
            }
        } catch (Throwable unused) {
        }
        return -1;
    }

    public static void a(String str, String str2, int i2, int i3, boolean z) {
        com.networkbench.agent.impl.data.l lVar = new com.networkbench.agent.impl.data.l();
        lVar.a(str2);
        lVar.b(str);
        lVar.b(i3);
        lVar.c(i2);
        lVar.a(0);
        lVar.a(z);
        if (s.a(i3)) {
            lVar.b(true);
        }
        ai.a(lVar);
    }

    private static boolean g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("nrState=NOT_RESTRICTED") || str.contains("nrState=CONNECTED");
    }

    public static boolean a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                r.A.f("couldn't get connectivity manager");
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isAvailable();
            }
            return false;
        } catch (Throwable unused) {
        }
    }

    public static void a(com.networkbench.agent.impl.d.b.a aVar) {
        b(aVar);
        ai.a(aVar);
    }

    public static boolean a(int i2, String str) {
        HarvestConfiguration harvestConfigurationM;
        try {
            NBSAndroidAgentImpl impl = NBSAgent.getImpl();
            return impl != null && (harvestConfigurationM = impl.m()) != null && c(i2) && aj.a(str, i2, harvestConfigurationM.getIgnoreErrRules());
        } catch (Throwable unused) {
        }
    }

    public static void a(JsonObject jsonObject, String str, String str2, HashMap<String, String> map, HttpLibType httpLibType, boolean z) {
        if (!NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord()) {
            jsonObject.add(str, new JsonObject());
            return;
        }
        if (NBSNetworkCallbackManager.instance.isRequestHeaderCallbackEnabled() && !a(httpLibType)) {
            jsonObject.add(str, NBSNetworkCallbackManager.instance.invokeRequestHeaderCallback(str2, map));
        } else if (map.size() <= 0) {
            jsonObject.add(str, new JsonObject());
        } else {
            jsonObject.add(str, a(map, z, str2));
        }
    }

    public static void a(JsonObject jsonObject, String str, String str2, String str3, String str4, HttpLibType httpLibType) {
        if (!NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord()) {
            jsonObject.add(str, new JsonPrimitive(""));
        } else if (NBSNetworkCallbackManager.instance.isRequestBodyCallbackEnabled() && !a(httpLibType) && ak.s(str3)) {
            jsonObject.add(str, new JsonPrimitive(ab.a(NBSNetworkCallbackManager.instance.invokeRequestBodyCallback(str2, str4), (int) ak.o())));
        } else {
            jsonObject.add(str, new JsonPrimitive(ab.a(a(str4, str2), (int) ak.o())));
        }
    }

    private static String a(String str, String str2) {
        if (!c() && !d()) {
            r.A.a("network body white list and black list is empty");
            return str;
        }
        if (!c()) {
            r.A.a("network body white url list");
            if (!a(HarvestConfiguration.getDefaultHarvestConfiguration().getUrlParamArray(), str2)) {
                return "";
            }
        } else if (a(HarvestConfiguration.getDefaultHarvestConfiguration().getUrlParamBlackArray(), str2)) {
            return "";
        }
        return str;
    }

    private static boolean a(ConcurrentHashMap<HarvestConfiguration.UrlFilter, com.networkbench.agent.impl.data.j.c> concurrentHashMap, String str) {
        return (concurrentHashMap == null || concurrentHashMap.size() == 0 || NBSTransactionStateUtil.getAvalidUrlParam(concurrentHashMap, str) == null) ? false : true;
    }

    private static JsonObject a(HashMap<String, String> map, boolean z, String str) {
        JsonObject jsonObject = new JsonObject();
        if (!c() && !d()) {
            r.A.a("white list and black list is empty");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!h(entry.getKey())) {
                    jsonObject.addProperty(entry.getKey(), entry.getValue());
                }
            }
            return jsonObject;
        }
        if (!c()) {
            r.A.a("white url list");
            return b(map, z, str);
        }
        return c(map, z, str);
    }

    public static boolean a(HttpLibType httpLibType) {
        return httpLibType == HttpLibType.Webview || httpLibType == HttpLibType.WebviewAJAX || httpLibType == HttpLibType.WebViewResource;
    }

    public static boolean b(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1;
        } catch (Throwable unused) {
        }
    }

    public static int b(Context context, int i2) {
        return i2 == 13 ? c(context, i2) : i2;
    }

    private static int b() {
        return SubscriptionManager.getDefaultDataSubscriptionId();
    }

    public static String b(String str) {
        for (List<String> list : ai.d.keySet()) {
            if (list != null && list.contains(str)) {
                ConcurrentHashMap<List<String>, String> concurrentHashMap = ai.d;
                String str2 = concurrentHashMap.get(list);
                concurrentHashMap.remove(list);
                return str2;
            }
        }
        return str;
    }

    public static int c(Context context) {
        TelephonyManager telephonyManager;
        if (e(context) && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            return telephonyManager.getNetworkType();
        }
        return 0;
    }

    public static void b(com.networkbench.agent.impl.d.b.a aVar) {
        if (d(aVar.f())) {
            return;
        }
        com.networkbench.agent.impl.data.a.n.a(aVar);
        com.networkbench.agent.impl.data.a.e.a(aVar);
        com.networkbench.agent.impl.data.a.k.a(aVar);
    }

    private static int c(Context context, int i2) {
        ServiceState serviceState;
        ServiceState serviceState2;
        if (context.getApplicationInfo().targetSdkVersion >= 29 || context.checkSelfPermission("android.permission.READ_PHONE_STATE") != 0) {
            return i2;
        }
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            int iB = b();
            if (iB == -1) {
                serviceState2 = telephonyManager.getServiceState();
            } else {
                try {
                    Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getServiceStateForSubscriber", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    serviceState = (ServiceState) declaredMethod.invoke(telephonyManager, Integer.valueOf(iB));
                } catch (Throwable unused) {
                    serviceState = null;
                }
                serviceState2 = serviceState == null ? telephonyManager.getServiceState() : serviceState;
            }
            if (serviceState2 == null || !g(serviceState2.toString())) {
                return i2;
            }
            return 20;
        } catch (Throwable unused2) {
            return i2;
        }
    }

    public static void b(JsonObject jsonObject, String str, String str2, HashMap<String, String> map, HttpLibType httpLibType, boolean z) {
        if (!NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord()) {
            jsonObject.add(str, new JsonObject());
            return;
        }
        if (NBSNetworkCallbackManager.instance.isRespHeaderCallbackEnabled() && !a(httpLibType)) {
            jsonObject.add(str, NBSNetworkCallbackManager.instance.invokeRespHeaderCallback(str2, map));
        } else if (map.size() <= 0) {
            jsonObject.add(str, new JsonObject());
        } else {
            jsonObject.add(str, a(map, z, str2));
        }
    }

    public static JsonArray c(String str) {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(com.networkbench.agent.impl.e.c.a()));
        jsonArray.add(new JsonPrimitive(NBSAgent.getVersion()));
        jsonArray.add(new JsonPrimitive(NBSAgent.getBuildId()));
        jsonArray.add(new JsonPrimitive(NBSAgent.getApplicationInformation().getChannelId()));
        jsonArray.add(new JsonPrimitive(str));
        com.networkbench.agent.impl.c.e eVar = r.A;
        eVar.a("buildId is " + NBSAgent.getBuildId());
        eVar.a("appinfo is" + jsonArray.toString());
        eVar.a("crashType" + str);
        return jsonArray;
    }

    public static void b(JsonObject jsonObject, String str, String str2, String str3, String str4, HttpLibType httpLibType) {
        if (!NBSNetworkCallbackManager.instance.isEnableNetworkContentRecord()) {
            jsonObject.add(str, new JsonPrimitive(""));
        } else if (NBSNetworkCallbackManager.instance.isRespBodyCallbackEnabled() && !a(httpLibType) && ak.s(str3)) {
            jsonObject.add(str, new JsonPrimitive(ab.a(NBSNetworkCallbackManager.instance.invokeRespBodyCallback(str2, str4), (int) ak.o())));
        } else {
            jsonObject.add(str, new JsonPrimitive(ab.a(a(str4, str2), (int) ak.o())));
        }
    }

    public static boolean c(int i2) {
        return i2 >= 400 || i2 == -1 || i2 == 0;
    }

    private static boolean c() {
        return HarvestConfiguration.getDefaultHarvestConfiguration().isUrlBlackListEnabled();
    }

    public static boolean b(int i2) {
        return i2 >= 8;
    }
}

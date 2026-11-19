package com.networkbench.agent.impl.instrumentation.flutter;

import android.text.TextUtils;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.a.a;
import com.networkbench.agent.impl.crash.a.d;
import com.networkbench.agent.impl.d.b.c;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.b.b;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import defpackage.fc;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class FlutterNetworkUtils {
    private static Map<String, NBSTransactionState> webTimings = new ConcurrentHashMap();

    public static void configCrossApplicationInfo(Map<String, String> map, NBSTransactionState nBSTransactionState) {
        String str = "";
        if (map != null) {
            try {
                if (map.size() != 0) {
                    if (map.containsKey(r.t)) {
                        nBSTransactionState.setAppData(map.get(r.t));
                    }
                    if (r.u().aj()) {
                        if (map.get(r.w) != null) {
                            str = map.get(r.w);
                        }
                        nBSTransactionState.setAppDataNew(str);
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                g.f("Flutter configCrossApplicationInfo has an error : ", th);
                return;
            }
        }
        g.B("Flutter configCrossApplicationInfo responseHeader is null");
        if (r.u().aj()) {
            nBSTransactionState.setAppDataNew("");
        }
    }

    public static Map<String, String> getApmsHeaderToRequest() {
        HashMap map = new HashMap();
        try {
            if (r.u().b()) {
                try {
                    String strAt = r.u().at();
                    JSONArray jSONArrayA = r.u().a();
                    for (int i2 = 0; i2 < jSONArrayA.length() && i2 < 10; i2++) {
                        String string = jSONArrayA.getString(i2);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(string, strAt);
                        }
                    }
                } catch (Throwable th) {
                    g.f("Flutter getapms error", th);
                }
            }
        } catch (Throwable th2) {
            g.f("Flutter getApmsHeaderToRequest has an error : ", th2);
        }
        return map;
    }

    public static Map<String, String> getExtraHeaderToRequest() {
        HashMap map = new HashMap();
        try {
            if (r.u().aj()) {
                g.B("flutter getExtraHeaderToRequest cross app enabled is false");
                if (!TextUtils.isEmpty(r.u().am())) {
                    map.put(r.u, r.u().am());
                }
                if (r.u().aH().a()) {
                    map.put(r.v, r.u().an());
                }
            }
            return map;
        } catch (Throwable th) {
            g.b(" Flutter  getExtraHeaderToRequest has an error : ", th);
            return map;
        }
    }

    public static void reportErrorWebInner(String str, Map<String, Object> map, String str2, int i2, String str3) {
        StringBuilder sbS = fc.s("reportErrorWeb messge:", str, ", errorStackTrace:", str2, ", type:");
        sbS.append(i2);
        g.C(sbS.toString());
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            g.C("reportErrorWeb");
            if (b.a().g()) {
                g.C("NBSGlobalSettings.getInstance().isUserAction_Enable() is true");
                a.c().a(new d.a().a(str).a(str2, str3).a(map).b(i2).a(3).b().a());
                if (r.u().j()) {
                    g.n("reportErrorType type = " + i2 + "\n message = " + str + "\nmetaData = " + ak.a(map).toString() + "\nerrorStackTrace = " + str2);
                }
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.harvest.b.a.a().a(com.networkbench.agent.impl.harvest.b.a.f37289a, 0, true);
            g.g("error happened in reportError(String message, Exception e, Map<String, Object> metaData)", th);
        }
    }

    public static List<String> retriveResponseHeader() {
        ArrayList arrayList = new ArrayList();
        try {
            if (!r.u().aj()) {
                g.B(" Flutter  retriveResponseHeader cross app enabled is false");
                return arrayList;
            }
            arrayList.add(r.t);
            if (r.u().ap()) {
                arrayList.add(r.w);
            }
            return arrayList;
        } catch (Throwable th) {
            g.f("Flutter retriveResponseHeader has an error : ", th);
            return arrayList;
        }
    }

    public static void startWebRequestTiming(final Map<String, Object> map) {
        com.networkbench.agent.impl.util.c.a.a().a(new y() { // from class: com.networkbench.agent.impl.instrumentation.flutter.FlutterNetworkUtils.2
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                try {
                    Map map2 = map;
                    if (map2 != null) {
                        String str = (String) map2.get("requestTag");
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        NBSTransactionState nBSTransactionState = new NBSTransactionState();
                        nBSTransactionState.setUrl((String) map.get(ConfigurationName.DOWNLOAD_PLUGIN_URL));
                        nBSTransactionState.resetStartTimeStamp(((Long) map.get("startTime")).longValue());
                        FlutterNetworkUtils.webTimings.put(str, nBSTransactionState);
                    }
                } catch (Throwable th) {
                    g.b(" reportError has an error ", th);
                }
            }
        });
    }

    public static void stopWebRequestTiming(final Map<String, Object> map, final Map<String, String> map2, final Map<String, String> map3, final Map<String, String> map4) {
        com.networkbench.agent.impl.util.c.a.a().a(new y() { // from class: com.networkbench.agent.impl.instrumentation.flutter.FlutterNetworkUtils.1
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                NBSTransactionState nBSTransactionState;
                try {
                    Map map5 = map;
                    if (map5 == null) {
                        return;
                    }
                    String str = (String) map5.get("requestTag");
                    if (TextUtils.isEmpty(str) || (nBSTransactionState = (NBSTransactionState) FlutterNetworkUtils.webTimings.get(str)) == null) {
                        return;
                    }
                    Map map6 = map4;
                    if (map6 != null && map6.size() > 0) {
                        for (Map.Entry entry : map4.entrySet()) {
                            if (entry != null) {
                                nBSTransactionState.setUUid((String) entry.getValue());
                                break;
                            }
                        }
                    }
                    if (map3 != null) {
                        nBSTransactionState.getApmsList().putAll(map3);
                    }
                    FlutterNetworkUtils.configCrossApplicationInfo(map2, nBSTransactionState);
                    int iIntValue = ((Integer) map.get("dns")).intValue();
                    if (iIntValue >= 0) {
                        nBSTransactionState.setDnsElapse(iIntValue);
                    }
                    nBSTransactionState.setIpAddress(map.get("ip") == null ? "" : (String) map.get("ip"));
                    nBSTransactionState.setStatusCode(map.get("responseCode") == null ? 0 : ((Integer) map.get("responseCode")).intValue());
                    nBSTransactionState.endWithEndTimeStamp(map.get("endTime") == null ? 0L : ((Long) map.get("endTime")).longValue());
                    if (nBSTransactionState.isError()) {
                        nBSTransactionState.setErrorDataInfo("", new HashMap(), "");
                    }
                    c cVar = new c(nBSTransactionState);
                    if (nBSTransactionState.isError()) {
                        cVar.a("");
                    }
                    ai.a(cVar);
                    FlutterNetworkUtils.webTimings.remove(str);
                } catch (Throwable th) {
                    g.b(" reportError has an error ", th);
                }
            }
        });
    }
}

package com.networkbench.agent.impl.webview;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.session.screen.NBSScreenRecordTimer;
import com.networkbench.agent.impl.util.aj;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.Gson;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f38525b = 120000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f38526c = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f38524a = com.networkbench.agent.impl.c.f.a();
    private static ConcurrentLinkedQueue<com.networkbench.agent.impl.webview.b.e> d = new ConcurrentLinkedQueue<>();

    public static void a(String str, ConcurrentLinkedQueue<com.networkbench.agent.impl.webview.b.c> concurrentLinkedQueue) {
        String str2;
        String str3;
        String str4;
        try {
            JSONObject jSONObject = new JSONObject(str);
            long jOptLong = jSONObject.optLong("ns");
            String strB = ak.b(jSONObject.optString("ul"));
            String strOptString = jSONObject.optString("pvid");
            int iA = (int) a(jSONObject.optLong("es"));
            long jA = a(jSONObject.optLong("ee"));
            long jA2 = a(jSONObject.optLong("f"));
            long jA3 = a(jSONObject.optLong("ds"));
            long jA4 = a(jSONObject.optLong("de"));
            long jA5 = a(jSONObject.optLong("cs"));
            long jA6 = a(jSONObject.optLong("ce"));
            long jA7 = a(jSONObject.optLong("sl"));
            long jA8 = a(jSONObject.optLong("qs"));
            long jA9 = a(jSONObject.optLong("rs"));
            long jA10 = a(jSONObject.optLong("re"));
            long jA11 = a(jSONObject.optLong("doml"));
            long jA12 = a(jSONObject.optLong("oi"));
            long jA13 = a(jSONObject.optLong("os"));
            long jA14 = a(jSONObject.optLong("oe"));
            long jA15 = a(jSONObject.optLong("oc"));
            long jA16 = a(jSONObject.optLong("ls"));
            long jA17 = a(jSONObject.optLong("le"));
            long jA18 = a(jSONObject.optLong("fp"));
            long jA19 = a(jSONObject.optLong("fs"));
            int iOptInt = jSONObject.optInt("je");
            int iOptInt2 = jSONObject.optInt("sli");
            a(jSONObject.optLong("dr"));
            long j2 = jA18 > jA15 ? jA15 : jA18;
            if (aj.a(strB)) {
                return;
            }
            try {
                Map<String, String> mapC = ak.c(jSONObject.optString("header"));
                if (mapC != null) {
                    str2 = r.u().aj() ? mapC.get(r.t) : "";
                    try {
                        str4 = mapC.get(HarvestConfiguration.getDefaultHarvestConfiguration().getCdnHeaderName());
                    } catch (Throwable th) {
                        th = th;
                        f38524a.f("parsePageData header warning " + th);
                        str2 = str2;
                        str3 = "";
                    }
                } else {
                    str4 = "";
                    str2 = str4;
                }
                str3 = str4;
            } catch (Throwable th2) {
                th = th2;
                str2 = "";
            }
            int iA2 = ak.a(strB, false);
            if (iA2 <= 900 && iA2 != -1) {
                int iA3 = aj.a(strB, iA2);
                if (JsPageUtil.isUpdate) {
                    com.networkbench.agent.impl.webview.b.d dVarA = a(jOptLong, strB, strOptString, iA, (int) jA, (int) jA2, (int) jA3, (int) jA4, (int) jA5, (int) jA6, (int) jA7, (int) jA8, (int) jA9, (int) jA10, (int) jA11, (int) jA12, (int) jA13, (int) jA14, (int) jA15, (int) jA16, (int) jA17, (int) j2, (int) jA19, iOptInt, iOptInt2, str2, str3, iA3);
                    for (com.networkbench.agent.impl.webview.b.e eVar : d) {
                        if (eVar != null) {
                            dVarA.b().a(eVar);
                        }
                    }
                    if (concurrentLinkedQueue != null) {
                        for (com.networkbench.agent.impl.webview.b.c cVar : concurrentLinkedQueue) {
                            if (cVar != null) {
                                dVarA.c().a(cVar);
                            }
                        }
                    }
                    Harvest.addPagePerfData(dVarA);
                }
            }
        } catch (Throwable th3) {
            f38524a.e("parsePageData error " + th3);
        }
    }

    public static ConcurrentLinkedQueue<com.networkbench.agent.impl.webview.b.c> b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ConcurrentLinkedQueue<com.networkbench.agent.impl.webview.b.c> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONArray jSONArray2 = jSONArray.getJSONArray(i2);
                if (jSONArray2 != null) {
                    String strB = ak.b(jSONArray2.getString(8));
                    String string = jSONArray2.getString(0);
                    int i3 = jSONArray2.getInt(1);
                    int i4 = jSONArray2.getInt(2);
                    String string2 = jSONArray2.getString(3);
                    String strF = f(jSONArray2.getString(5));
                    int i5 = jSONArray2.getInt(4);
                    int i6 = jSONArray2.getInt(7);
                    int i7 = jSONArray2.getInt(9);
                    if (i3 > 0 && i4 > 0) {
                        concurrentLinkedQueue.add(new com.networkbench.agent.impl.webview.b.c.a().a(strB).b(string).b(i3).c(i4).c(string2).d(strF).d(i5).e(i6).a(i7).a());
                    }
                }
            }
            return concurrentLinkedQueue;
        } catch (Exception e2) {
            f38524a.a("parseJsError failed:", e2);
            return concurrentLinkedQueue;
        }
    }

    public static void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            jSONObject.optLong("navigationStart");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("entries");
            if (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) {
                return;
            }
            int length = jSONArrayOptJSONArray.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject jSONObject2 = (JSONObject) jSONArrayOptJSONArray.get(i2);
                String strOptString = jSONObject2.optString("name");
                long jOptLong = jSONObject2.optLong("duration");
                jSONObject2.optLong("fetchStart");
                long jOptLong2 = jSONObject2.optLong("domainLookupStart");
                long jOptLong3 = jSONObject2.optLong("domainLookupEnd");
                long jOptLong4 = jSONObject2.optLong("connectStart");
                long jOptLong5 = jSONObject2.optLong("connectEnd");
                long jOptLong6 = jSONObject2.optLong("secureConnectionStart");
                long jOptLong7 = jSONObject2.optLong("requestStart");
                long jOptLong8 = jSONObject2.optLong("responseStart");
                long jOptLong9 = jSONObject2.optLong("responseEnd");
                long jOptLong10 = jSONObject2.optLong("transferSize");
                long jOptLong11 = jSONObject2.optLong("encodedBodySize");
                long jOptLong12 = jSONObject2.optLong("decodedBodySize");
                String strOptString2 = jSONObject2.optString("initiatorType");
                String strOptString3 = jSONObject2.optString("renderBlockingStatus");
                long jOptLong13 = jSONObject2.optLong("responseStatus");
                JsonArray jsonArray = (JsonArray) new Gson().fromJson(jSONObject2.optString("serverTiming", "[]"), JsonArray.class);
                String strOptString4 = jSONObject2.optString("entryType");
                if (jOptLong <= 0) {
                    jOptLong = jOptLong9;
                }
                String strB = ak.b(strOptString);
                if (!aj.a(strB)) {
                    int iA = ak.a(strB, true);
                    if (jOptLong >= f38525b) {
                        return;
                    }
                    if (jOptLong10 != 0 || jOptLong >= 5) {
                        a(strB, iA, jOptLong, jOptLong4, jOptLong5, jOptLong8, jOptLong7, jOptLong6, jOptLong2, jOptLong3, h(strOptString4) ? HttpLibType.WebViewResource : HttpLibType.Webview, jOptLong10, a(strOptString2, strOptString3, jOptLong11, jOptLong12, jOptLong13, jsonArray));
                    }
                }
            }
        } catch (Throwable th) {
            f38524a.e("parseResourceNew error " + th);
        }
    }

    public static void d(String str) {
        ConcurrentLinkedQueue<com.networkbench.agent.impl.webview.b.e> concurrentLinkedQueue;
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("cpm");
            if (string == null || (concurrentLinkedQueue = d) == null) {
                return;
            }
            concurrentLinkedQueue.clear();
            String string2 = jSONObject.getString("rm");
            if (string2 != null) {
                com.networkbench.agent.impl.c.g.d("resource_metric :" + string2);
            }
            String string3 = jSONObject.getString("em");
            com.networkbench.agent.impl.c.g.d("errors_metrics:" + string3);
            ConcurrentLinkedQueue<com.networkbench.agent.impl.webview.b.c> concurrentLinkedQueueB = b(string3);
            com.networkbench.agent.impl.c.g.d("current_pg_metric :" + string);
            a(string, concurrentLinkedQueueB);
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.d("parsePageInfo error: " + th.getMessage());
        }
    }

    public static int e(String str) {
        try {
            return new JSONObject(str).optInt("sli");
        } catch (Throwable th) {
            f38524a.e("getSlowIndicator error " + th);
            return 0;
        }
    }

    public static String f(String str) {
        if (ak.r(str)) {
            return "";
        }
        return a(str.split("\n")) ? a(str.split("\n"), 10) : str;
    }

    public static void g(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.getInt("type") == 1) {
                a(jSONObject);
                return;
            }
            if (str != null && r.u().ad() && r.u().V()) {
                com.networkbench.agent.impl.m.b.a().a(str, System.nanoTime());
                com.networkbench.agent.impl.util.c.a.a().a(new d());
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean h(String str) {
        return str == null || !str.equalsIgnoreCase("navigation");
    }

    public static void a(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            int length = jSONArray.length();
            if (length > 0) {
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i2);
                    String string = jSONObject.getString("md");
                    String string2 = jSONObject.getString("hf");
                    String string3 = jSONObject.getString("ul");
                    int i3 = jSONObject.getInt("dr");
                    jSONObject.getInt("rt");
                    int i4 = jSONObject.getInt("sc");
                    int i5 = jSONObject.getInt("ec");
                    int i6 = jSONObject.getInt("rsz");
                    int i7 = jSONObject.getInt("rqz");
                    jSONObject.getLong("st");
                    jSONObject.getLong("ed");
                    String string4 = jSONObject.getString("xData");
                    ActionData actionData = new ActionData(true);
                    actionData.setUrl(ak.b(string2 + string3));
                    actionData.setStatusCode(i4);
                    actionData.setErrorCode(i5);
                    actionData.setTotalTime(i3);
                    actionData.setCarrier("");
                    actionData.setBytesReceived(i6);
                    actionData.setBytesSent(i7);
                    actionData.setAppData(string4);
                    actionData.setTimestamp(Long.valueOf(System.currentTimeMillis()));
                    actionData.setUrlParams(null);
                    actionData.setRequestMethod(j.a(string));
                    actionData.setHttpLibType(HttpLibType.WebviewAJAX);
                    actionData.setTime_to_connect(0);
                    actionData.setTime_first_package(0);
                    actionData.setTime_ssl_handshake(0);
                    actionData.setTime_to_dns(0);
                    actionData.setIP("");
                    if (aj.a(actionData.getUrl())) {
                        return;
                    }
                    actionData.correctDataInfo();
                    if (i3 >= 300000) {
                        return;
                    }
                    Harvest.addHttpTransaction(actionData);
                }
            }
        } catch (Throwable th) {
            f38524a.e("parseAjax error " + th);
        }
    }

    public static void a(String str, String str2, String str3, String str4, int i2, int i3, String str5, String str6, int i4, int i5, String str7, long j2, int i6) {
        if (i2 <= 0 || i3 <= 0) {
            return;
        }
        try {
            com.networkbench.agent.impl.webview.b.c.a aVar = new com.networkbench.agent.impl.webview.b.c.a();
            aVar.a(str3).b(str4).b(i2).c(i3).c(str5).d(f(str6)).d(i4).e(i5).a(i6);
            com.networkbench.agent.impl.webview.b.a aVar2 = new com.networkbench.agent.impl.webview.b.a(aVar);
            aVar2.c(str7);
            aVar2.b(ak.b(str2));
            aVar2.a(str);
            aVar2.a((int) (j2 / 1000));
            Harvest.addJsError(aVar2);
        } catch (Throwable unused) {
        }
    }

    private static JsonObject a(String str, String str2, long j2, long j3, long j4, JsonArray jsonArray) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.add("initiatorType", new JsonPrimitive(str));
        jsonObject.add("renderBlockingStatus", new JsonPrimitive(str2));
        jsonObject.add("encodedBodySize", new JsonPrimitive((Number) Long.valueOf(j2)));
        jsonObject.add("decodedBodySize", new JsonPrimitive((Number) Long.valueOf(j3)));
        jsonObject.add("responseStatus", new JsonPrimitive((Number) Long.valueOf(j4)));
        jsonObject.add("serverTiming", jsonArray);
        return jsonObject;
    }

    private static void a(String str, int i2, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, HttpLibType httpLibType, long j10, JsonObject jsonObject) {
        int i3 = i2;
        String strD = r.u().d(System.currentTimeMillis());
        ActionData actionData = new ActionData(true);
        actionData.setSuuid(strD);
        actionData.setDataTag(r.u().e());
        actionData.setUrl(str);
        actionData.setStatusCode(i3);
        if (i3 == 200) {
            i3 = 0;
        }
        actionData.setErrorCode(i3);
        int i4 = (int) j2;
        actionData.setTotalTime(i4);
        actionData.setCarrier("");
        actionData.setBytesReceived(j10);
        actionData.setBytesSent(0L);
        actionData.setAppData(null);
        actionData.setTimestamp(Long.valueOf(System.currentTimeMillis()));
        actionData.setUrlParams(null);
        actionData.setRequestMethod(RequestMethodType.GET);
        actionData.setHttpLibType(httpLibType);
        long j11 = j4 - j3;
        if (j11 == 0) {
            j11 = -1;
        }
        actionData.setTime_to_connect((int) j11);
        actionData.setTime_first_package((int) (j5 - j6));
        actionData.setTime_ssl_handshake(ak.a(str, j4, j7));
        long j12 = j9 - j8;
        actionData.setTime_to_dns((int) (j12 != 0 ? j12 : -1L));
        actionData.setIP("");
        actionData.setAppPhase(com.networkbench.agent.impl.data.type.f.f36952a.a());
        actionData.setWebviewData(jsonObject);
        actionData.correctDataInfo();
        if (i4 >= r.f38390b) {
            return;
        }
        if (actionData.getHttpLibType() == HttpLibType.Webview && (((actionData.getStatusCode() >= 400 && actionData.getStatusCode() < 900) || actionData.getStatusCode() == -1) && (actionData.getStatusCode() >= 400 || actionData.getStatusCode() == -1))) {
            com.networkbench.agent.impl.data.f fVar = new com.networkbench.agent.impl.data.f(ak.a(actionData.getUrl()), "", ak.p(actionData.getUrl()), "", actionData.getStatusCode(), "", "", null, "", actionData.getRequestMethod(), actionData.getCdnVendorName(), actionData.getHttpLibType(), actionData.getAppPhase(), com.networkbench.agent.impl.data.a.h.a(), actionData.requestHeaderParam, actionData.responseHeaderParam, r.u().e());
            fVar.a(r.u().e());
            fVar.c(strD);
            Harvest.addHttpError(actionData, fVar);
            return;
        }
        Harvest.addHttpTransaction(actionData);
    }

    private static long a(long j2) {
        if (j2 >= -1) {
            return j2;
        }
        return 0L;
    }

    public static com.networkbench.agent.impl.webview.b.d a(long j2, String str, String str2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, String str3, String str4, int i24) {
        int i25 = i24;
        com.networkbench.agent.impl.webview.b.d.a aVarW = new com.networkbench.agent.impl.webview.b.d.a().a((int) (j2 / 1000)).a(str).b(str2).b(i2).c(i3).d(i4).e(i5).f(i6).g(i7).h(i8).i(i9).j(i10).k(i11).l(i12).m(i13).n(i14).o(i15).p(i16).q(i17).r(i18).s(i19).t(i20).u(i21).v(i22).w(i25);
        if (i25 == 200) {
            i25 = 0;
        }
        return aVarW.x(i25).y(0).c(str3).d(str4).z(i23).a();
    }

    private static boolean a(String[] strArr) {
        return strArr != null && strArr.length > 10;
    }

    private static String a(String[] strArr, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(strArr[i3]);
            sb.append('\n');
        }
        return sb.toString();
    }

    private static void a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("params");
        String string = jSONObject2.getString(DbParams.KEY_CHANNEL_EVENT_NAME);
        if (string.equals("userAction")) {
            NBSScreenRecordTimer.storeBitmapDelay(100L);
            return;
        }
        if (string.equals("userEvent")) {
            NBSScreenRecordTimer.storeBitmapDelay(100L);
            return;
        }
        try {
            if (string.equals("newSession")) {
                NBSBitmapBeansControl.getInstance().startNextSession(jSONObject2.getJSONObject(DbParams.KEY_DATA).getString(com.batch.android.s.b.a.f24015b));
            } else if (string.equals("setUser")) {
                NBSAppAgent.setUserIdentifier(jSONObject2.getJSONObject(DbParams.KEY_DATA).getString(com.batch.android.s.b.a.f24015b));
            }
        } catch (Throwable unused) {
        }
    }
}

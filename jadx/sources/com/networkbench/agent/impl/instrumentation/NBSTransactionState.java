package com.networkbench.agent.impl.instrumentation;

import android.os.Looper;
import android.text.TextUtils;
import com.networkbench.agent.impl.asyncaction.q;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.type.SlowStartState;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.k.c;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.socket.n;
import com.networkbench.agent.impl.socket.s;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.j;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.d21;
import defpackage.o60;
import defpackage.tr;
import java.net.InetAddress;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.bouncycastle.cms.CMSAttributeTableGenerator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NBSTransactionState {
    private static final String TAG = "NBSTransactionState";
    public static final int URLLIMIT = 1024;
    private static final e log = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f37372a;
    private String addressAllStr;
    private String allGetRequestParams;
    private Map<String, String> apmsList;
    private String appData;
    private String appDataNew;
    private int appPhase;
    private UUID attachedUnit;
    private long bytesReceived;
    private long bytesSent;
    private String carrier;
    private String cdnVendorName;
    private String contentType;
    private Map dataTag;
    private int dnsElapse;
    private long endTime;
    private int errorCode;
    private com.networkbench.agent.impl.a.a.a errorData;
    private String exception;
    private int firstPacketPeriod;
    private String formattedUrlParams;
    private boolean hasInvokeSetTrace;
    public volatile boolean hasParseUrlParams;
    private HttpLibType httpLibType;
    private String ipAddress;
    public boolean isConnect;
    private boolean isNetworkErrorExist;
    private boolean isOk2DnsFromThread;
    private boolean isOkhttp3;
    public int remainPackage;
    private String requestBody;
    private String requestHeaderIdValue;
    public HashMap<String, String> requestHeaderParam;
    private RequestMethodType requestMethod;
    private String responseBody;
    public HashMap<String, String> responseHeaderParam;
    private b seriesData;
    private int sslHandShakeTime;
    private long startTime;
    private a state;
    private int statusCode;
    private int tcpHandShakeTime;
    private com.networkbench.agent.impl.asyncaction.e traceMetrics;
    private com.networkbench.agent.impl.a.a.b transactionData;
    private String url;
    private s urlBuilder;
    private String urlParams;
    private String userActionId;

    public enum a {
        READY,
        SENT,
        COMPLETE
    }

    public NBSTransactionState(boolean z) {
        this.hasParseUrlParams = false;
        this.url = "";
        this.statusCode = 0;
        this.appData = "";
        this.appDataNew = "";
        this.carrier = "";
        this.contentType = "";
        this.isNetworkErrorExist = false;
        this.requestHeaderIdValue = "";
        this.isConnect = false;
        this.apmsList = new ConcurrentHashMap();
        this.exception = null;
        this.formattedUrlParams = null;
        this.urlParams = null;
        this.urlBuilder = new s();
        this.addressAllStr = "";
        this.isOk2DnsFromThread = false;
        this.hasInvokeSetTrace = false;
        this.ipAddress = "";
        this.firstPacketPeriod = -1;
        this.userActionId = "";
        this.requestHeaderParam = new HashMap<>();
        this.responseHeaderParam = new HashMap<>();
        this.f37372a = "";
        this.isOkhttp3 = false;
        try {
            this.dataTag = r.u().e();
            initMembers();
            if (!z) {
                setTraces();
            }
            this.appPhase = com.networkbench.agent.impl.data.type.f.f36952a.a();
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("error init NBSTransactionState e:"), log);
        }
    }

    private String checkAppDataNew(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            g.o("checkAppDataNew  " + str);
            JSONObject jSONObject2 = ak.r(str) ? new JSONObject() : new JSONObject(str);
            if (r.u().b()) {
                JSONArray jSONArray = new JSONArray(r.u().a().toString());
                g.o("checkAppDataNew apmsIssue" + jSONArray.toString());
                for (int i2 = 0; i2 < checkSize(jSONArray.length()); i2++) {
                    String string = jSONArray.getString(i2);
                    g.o("checkAppDataNew   headerValue" + string);
                    if (checkRepetition(string)) {
                        Map<String, String> map = this.apmsList;
                        if (map != null) {
                            for (String str2 : map.keySet()) {
                                if (str2.equalsIgnoreCase(string)) {
                                    String str3 = this.apmsList.get(str2);
                                    jSONObject.put(str2, str3);
                                    g.o("checkAppDataNew checkRepetition!  headerValue   res" + str3);
                                }
                            }
                        }
                    } else {
                        if (!ak.r(this.f37372a)) {
                            jSONObject.put(string, this.f37372a);
                        }
                        g.o("checkAppDataNew checkRepetition  headerValue" + string);
                    }
                }
            }
            extractedSw8_w3c(jSONObject);
            jSONObject2.put("apms", jSONObject);
            return jSONObject2.length() == 0 ? "" : jSONObject2.toString();
        } catch (Throwable th) {
            g.o("setAppDataNew JSONException has error " + th.getLocalizedMessage());
            return "";
        }
    }

    private void checkAppPhase(com.networkbench.agent.impl.a.a.b bVar) {
        if (this.appPhase != com.networkbench.agent.impl.data.type.f.f36952a.a()) {
            bVar.i(0);
        }
    }

    private boolean checkHeader(String str, Map<String, String> map) {
        boolean z;
        String next;
        Iterator<String> it = map.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                next = "";
                break;
            }
            next = it.next();
            if (next.equalsIgnoreCase(str)) {
                z = true;
                break;
            }
        }
        if (!ak.r(next)) {
            map.remove(next);
        }
        return z;
    }

    private boolean checkRepetition(String str) {
        Map<String, String> map = this.apmsList;
        if (map == null) {
            return false;
        }
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (it.next().equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private int checkSize(int i2) {
        return i2 < 10 ? i2 : r.f38391c;
    }

    private boolean checkTraceTime(com.networkbench.agent.impl.asyncaction.r rVar) {
        return rVar != null && System.currentTimeMillis() - rVar.getStartTime() <= 7000;
    }

    private void extractedSw8_w3c(JSONObject jSONObject) throws JSONException {
        String str = this.apmsList.get("sw8");
        String str2 = this.apmsList.get("traceparent");
        String str3 = this.apmsList.get("tracestate");
        if (!ak.r(str)) {
            jSONObject.put("sw8", str);
        }
        if (!ak.r(str2)) {
            jSONObject.put("traceparent", str2);
        }
        if (ak.r(str3)) {
            return;
        }
        jSONObject.put("tracestate", str3);
    }

    private String getTrimmedUrl(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf < 0 && (iIndexOf = str.indexOf(59)) < 0) {
            iIndexOf = str.length();
        }
        return str.substring(0, iIndexOf);
    }

    private void initMembers() {
        this.startTime = System.currentTimeMillis();
        this.tcpHandShakeTime = -1;
        this.sslHandShakeTime = -1;
        this.carrier = "Other";
        this.state = a.READY;
        this.errorCode = com.networkbench.agent.impl.socket.a.b.OK.a();
        this.requestMethod = RequestMethodType.GET;
        this.httpLibType = HttpLibType.URLConnection;
        this.dnsElapse = -1;
        this.ipAddress = "";
        this.errorData = new com.networkbench.agent.impl.a.a.a();
        this.requestBody = "";
        this.responseBody = "";
    }

    private boolean isEqualsToNBSRequestHeader(String str) {
        return !ak.r(str) && str.equalsIgnoreCase(r.u().f38396h);
    }

    private boolean isWebViewData() {
        HttpLibType httpLibType = this.httpLibType;
        return httpLibType == HttpLibType.Webview || httpLibType == HttpLibType.WebviewAJAX || httpLibType == HttpLibType.WebViewResource;
    }

    private void setInfoIfHttpClientLib(com.networkbench.agent.impl.a.a.b bVar) {
        bVar.d(ai.d(this.addressAllStr));
        n nVarE = com.networkbench.agent.impl.socket.r.a().e(this.addressAllStr);
        if (nVarE != null) {
            bVar.e(nVarE.a());
            bVar.a(nVarE.b());
        }
        String strE = ai.e(this.addressAllStr);
        if (!TextUtils.isEmpty(strE)) {
            this.ipAddress = strE;
        }
        bVar.c(this.ipAddress);
    }

    private void setInfoIfOkhttpLib(com.networkbench.agent.impl.a.a.b bVar, String str) {
        if (this.isOk2DnsFromThread) {
            bVar.h(bVar.C() + com.networkbench.agent.impl.socket.r.c(str));
        }
        if (bVar.m() <= 0) {
            bVar.d(ai.a(str));
        }
        if (bVar.o() <= 0) {
            bVar.e(com.networkbench.agent.impl.socket.r.a().c(str));
        }
        if (bVar.b() <= 0) {
            bVar.a(com.networkbench.agent.impl.socket.r.a().d(str));
        }
    }

    private com.networkbench.agent.impl.a.a.b toTransactionData() {
        if (!isComplete()) {
            log.f("toTransactionData() called on incomplete TransactionState");
        }
        if (this.url == null) {
            log.e("Attempted to convert a TransactionState instance with no URL into a TransactionData");
            return null;
        }
        g.o("requestHeaderParam : " + this.requestHeaderParam.size());
        g.o("responseHeaderParam : " + this.responseHeaderParam.size());
        log.a("firstpktime:" + this.firstPacketPeriod + ", remainPackage:" + this.remainPackage);
        StringBuilder sb = new StringBuilder("this.statusCode :  ");
        sb.append(this.statusCode);
        g.u(sb.toString());
        g.u("this.errorCode :  " + this.errorCode);
        if (this.transactionData == null) {
            String trimmedUrl = getTrimmedUrl(this.url);
            String str = this.carrier;
            long j2 = this.endTime;
            long j3 = this.startTime;
            this.transactionData = new com.networkbench.agent.impl.a.a.b(trimmedUrl, str, (int) (j2 - j3), this.statusCode, this.errorCode, this.bytesSent, this.bytesReceived, this.appData, this.formattedUrlParams, this.urlParams, this.requestMethod, this.httpLibType, this.dnsElapse, this.ipAddress, this.tcpHandShakeTime, this.sslHandShakeTime, this.firstPacketPeriod, this.cdnVendorName, this.contentType, this.appPhase, this.userActionId, this.allGetRequestParams, this.remainPackage, this.requestHeaderParam, this.responseHeaderParam, this.appDataNew, j3, this.requestHeaderIdValue, j2, this.requestBody, this.responseBody);
        }
        this.transactionData.a(this.dataTag);
        checkAppPhase(this.transactionData);
        this.transactionData.d(this.addressAllStr);
        this.transactionData.b(this.isOk2DnsFromThread);
        this.transactionData.a(this.isOkhttp3);
        this.transactionData.a(this.seriesData);
        if (!isWebViewData()) {
            setOtherTimeInfo(this.transactionData);
        }
        return this.transactionData;
    }

    public boolean checkAmpsHeader(String str) {
        return checkHeader(str, this.apmsList);
    }

    public boolean checkTransparentHeader(String str) {
        if (ab.c(str)) {
            return false;
        }
        return j.a().b(str);
    }

    public com.networkbench.agent.impl.a.a.b end() {
        setEndState();
        return toTransactionData();
    }

    public void endOkTcpData() {
        com.networkbench.agent.impl.a.a.b bVar = this.transactionData;
        if (bVar != null) {
            bVar.d(this.tcpHandShakeTime);
            this.transactionData.c(this.sslHandShakeTime);
            this.transactionData.e(this.firstPacketPeriod);
            this.transactionData.a(this.remainPackage);
        }
    }

    public com.networkbench.agent.impl.a.a.b endWithEndTimeStamp(long j2) {
        setEndState();
        setEndTime(j2);
        return toTransactionData();
    }

    public String getAllGetRequestParams() {
        return this.allGetRequestParams;
    }

    public Map<String, String> getApmsList() {
        return this.apmsList;
    }

    public String getAppDataNew() {
        return this.appDataNew;
    }

    public int getAppPhase() {
        return this.appPhase;
    }

    public UUID getAttachedUnit() {
        return this.attachedUnit;
    }

    public long getBytesReceived() {
        return this.bytesReceived;
    }

    public String getCdnVendorName() {
        return this.cdnVendorName;
    }

    public String getConfigIpAddress() {
        String str = this.url;
        if (str == null) {
            return "";
        }
        String strA = com.networkbench.agent.impl.util.s.a(str);
        if (TextUtils.isEmpty(strA)) {
            return "";
        }
        String strC = ai.c(strA);
        if (!TextUtils.isEmpty(strC)) {
            this.ipAddress = strC;
        }
        if (this.httpLibType == HttpLibType.HttpClient) {
            String strE = ai.e(this.addressAllStr);
            if (!TextUtils.isEmpty(strE)) {
                this.ipAddress = strE;
            }
        }
        return this.ipAddress;
    }

    public String getContentType() {
        return this.contentType;
    }

    public int getDnsElapse() {
        return this.dnsElapse;
    }

    public long getEndTime() {
        return this.endTime;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public com.networkbench.agent.impl.a.a.a getErrorData() {
        return this.errorData;
    }

    public String getException() {
        return this.exception;
    }

    public int getFirstPacketPeriod() {
        return this.firstPacketPeriod;
    }

    public String getFormattedUrlParams() {
        return this.formattedUrlParams;
    }

    public HttpLibType getHttpLibType() {
        return this.httpLibType;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getRequestMethod() {
        return this.requestMethod.name();
    }

    public RequestMethodType getRequestMethodType() {
        return this.requestMethod;
    }

    public b getSeriesData() {
        return this.seriesData;
    }

    public int getSslHandShakeTime() {
        return this.sslHandShakeTime;
    }

    public long getStartTime() {
        return this.startTime;
    }

    public a getState() {
        return this.state;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public int getTcpHandShakeTime() {
        return this.tcpHandShakeTime;
    }

    public com.networkbench.agent.impl.a.a.b getTransactionData() {
        return this.transactionData;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUrlParams() {
        return this.urlParams;
    }

    public boolean isComplete() {
        return this.state.ordinal() >= a.COMPLETE.ordinal();
    }

    public boolean isError() {
        int i2 = this.statusCode;
        return i2 >= 400 || i2 == -1;
    }

    public boolean isNetworkExist() {
        return this.isNetworkErrorExist;
    }

    public boolean isOkhttp3() {
        return this.isOkhttp3;
    }

    public boolean isSent() {
        return this.state.ordinal() >= a.SENT.ordinal();
    }

    public JsonObject networkForActionTrace(long j2) {
        JsonObject jsonObject = new JsonObject();
        try {
            jsonObject.add("offset", new JsonPrimitive((Number) Long.valueOf(this.startTime - j2)));
            jsonObject.add(ConfigurationName.DOWNLOAD_PLUGIN_URL, new JsonPrimitive(getUrl()));
            jsonObject.add("param", this.formattedUrlParams == null ? new JsonPrimitive("") : new JsonPrimitive(this.formattedUrlParams));
            jsonObject.add("method", new JsonPrimitive((Number) Integer.valueOf(this.requestMethod.ordinal())));
            jsonObject.add("hc", new JsonPrimitive((Number) Integer.valueOf(this.statusCode)));
            jsonObject.add("ec", new JsonPrimitive((Number) Integer.valueOf(this.errorCode)));
            jsonObject.add("du", new JsonPrimitive((Number) Long.valueOf(this.endTime - this.startTime)));
            jsonObject.add("dns", new JsonPrimitive((Number) Integer.valueOf(this.dnsElapse)));
            jsonObject.add("tcp", new JsonPrimitive((Number) Integer.valueOf(this.tcpHandShakeTime)));
            jsonObject.add("ssl", new JsonPrimitive((Number) Integer.valueOf(this.sslHandShakeTime)));
            jsonObject.add("fp", new JsonPrimitive((Number) Integer.valueOf(this.firstPacketPeriod)));
            jsonObject.add("rp", new JsonPrimitive((Number) Integer.valueOf(this.remainPackage)));
            jsonObject.add("lq", new JsonPrimitive((Number) 0));
            jsonObject.add("bs", new JsonPrimitive((Number) Long.valueOf(this.bytesSent)));
            jsonObject.add("br", new JsonPrimitive((Number) Long.valueOf(this.bytesReceived)));
            JsonPrimitive jsonPrimitive = null;
            jsonObject.add("tx", this.appData == null ? null : new JsonPrimitive(this.appData));
            if (this.appDataNew != null) {
                jsonPrimitive = new JsonPrimitive(this.appDataNew);
            }
            jsonObject.add("txn", jsonPrimitive);
            return jsonObject;
        } catch (Throwable th) {
            log.a("completeSegmentParams has an error ", th);
            return jsonObject;
        }
    }

    public JsonObject networkForTrace() {
        JsonObject jsonObject = new JsonObject();
        try {
            String str = this.ipAddress;
            String str2 = "";
            if (str == null) {
                str = "";
            }
            jsonObject.add("host", new JsonPrimitive(str));
            jsonObject.add(ConfigurationName.DOWNLOAD_PLUGIN_URL, new JsonPrimitive(getUrl()));
            jsonObject.add("httpStatus", new JsonPrimitive((Number) Integer.valueOf(this.statusCode)));
            jsonObject.add("errorCode", new JsonPrimitive((Number) Integer.valueOf(this.errorCode)));
            jsonObject.add("bytesSent", new JsonPrimitive((Number) Long.valueOf(this.bytesSent)));
            jsonObject.add("bytesReceived", new JsonPrimitive((Number) Long.valueOf(this.bytesReceived)));
            jsonObject.add("dns", new JsonPrimitive((Number) Integer.valueOf(this.dnsElapse)));
            jsonObject.add("conn", new JsonPrimitive((Number) Integer.valueOf(this.tcpHandShakeTime)));
            jsonObject.add("fp", new JsonPrimitive((Number) Integer.valueOf(this.firstPacketPeriod)));
            jsonObject.add("ssl", new JsonPrimitive((Number) Integer.valueOf(this.sslHandShakeTime)));
            JsonPrimitive jsonPrimitive = null;
            jsonObject.add("txData", this.appData == null ? null : new JsonPrimitive(this.appData));
            if (this.appDataNew != null) {
                jsonPrimitive = new JsonPrimitive(this.appDataNew);
            }
            jsonObject.add("txDataNew", jsonPrimitive);
            String str3 = this.contentType;
            if (str3 != null) {
                str2 = str3;
            }
            jsonObject.add(CMSAttributeTableGenerator.CONTENT_TYPE, new JsonPrimitive(str2));
            JsonObject jsonObject2 = new JsonObject();
            v.a(jsonObject2, ConfigurationName.REQUEST_HEADERS, this.url, this.requestHeaderParam, this.httpLibType, false);
            v.b(jsonObject2, ConfigurationName.RESPONSE_HEADERS, this.url, this.responseHeaderParam, this.httpLibType, true);
            v.a(jsonObject2, "requestBody", this.url, this.contentType, this.requestBody, this.httpLibType);
            v.b(jsonObject2, "responseBody", this.url, this.contentType, this.responseBody, this.httpLibType);
            jsonObject.add("httpData", new JsonPrimitive(jsonObject2.toString()));
            return jsonObject;
        } catch (Throwable th) {
            log.a("completeSegmentParams has an error ", th);
            return jsonObject;
        }
    }

    public com.networkbench.agent.impl.a.a.b newend() {
        if (!isComplete()) {
            this.state = a.COMPLETE;
        }
        return toTransactionData();
    }

    public void resetStartTimeStamp(long j2) {
        this.startTime = j2;
    }

    public void setAddress(String str) {
        this.urlBuilder.a(str);
    }

    public void setAddressAllStr(String str) {
        this.addressAllStr = str;
    }

    public void setAllGetRequestParams(String str) {
        this.allGetRequestParams = str;
    }

    public void setAppData(String str) {
        if (!isComplete()) {
            this.appData = str;
            "".equals(str);
            return;
        }
        log.f("setAppData(...) called on TransactionState in " + this.state.toString() + " state");
    }

    public void setAppDataNew(String str) {
        if (!isComplete()) {
            this.appDataNew = checkAppDataNew(str);
            return;
        }
        log.f("setAppDataNew(...) called on TransactionState in " + this.state.toString() + " state");
    }

    public void setAttachedTrace(com.networkbench.agent.impl.asyncaction.e eVar, UUID uuid) {
        this.traceMetrics = eVar;
        this.attachedUnit = uuid;
        NBSTraceUnit nBSTraceUnitB = eVar.b();
        if (nBSTraceUnitB == null || nBSTraceUnitB.unitType != com.networkbench.agent.impl.data.type.r.OPERATE_ACTION_ROOT_UNIT) {
            return;
        }
        this.userActionId = this.traceMetrics.b().metricName;
        Logger.debug(TAG, "set network userActionId attach operate value:" + this.userActionId);
    }

    public void setBytesReceived(long j2) {
        this.bytesReceived = j2;
        log.d(j2 + "bytes received");
    }

    public void setBytesReceivedContent(long j2) {
        if (this.bytesReceived <= 0) {
            this.bytesReceived = j2;
            log.d(j2 + "bytes received");
        }
    }

    public void setBytesSent(long j2) {
        if (isComplete()) {
            log.f("setBytesSent(...) called on TransactionState in " + this.state.toString() + " state");
            return;
        }
        log.d(j2 + " bytes sent");
        this.bytesSent = j2;
        this.state = a.SENT;
    }

    public void setBytesSentAfterComplete(long j2) {
        log.d("After Complete " + j2 + " bytes sent.");
        this.bytesSent = j2;
        this.state = a.SENT;
    }

    public void setCarrier(String str) {
    }

    public void setCdnVendorName(String str) {
        this.cdnVendorName = str;
    }

    public void setContentType(String str) {
        if (str == null) {
            return;
        }
        this.contentType = str;
    }

    public void setDnsElapse(int i2) {
        this.dnsElapse = i2;
    }

    public void setEndState() {
        if (isComplete()) {
            return;
        }
        this.state = a.COMPLETE;
        setEndTime(System.currentTimeMillis());
        NBSTraceEngine.notifyObserverAddNetworkToSegment(this);
        r.u().i(this.bytesReceived);
    }

    public void setEndTime(long j2) {
        UUID uuid;
        this.endTime = j2;
        com.networkbench.agent.impl.asyncaction.e eVar = this.traceMetrics;
        if (eVar == null || (uuid = this.attachedUnit) == null) {
            return;
        }
        eVar.a(uuid);
    }

    public void setErrorCode(int i2, String str) {
        this.errorCode = i2;
        this.exception = str;
        log.a("errorCode:" + this.errorCode + ", errorInfo:" + this.exception);
    }

    public void setErrorDataInfo(String str, Map<String, Object> map, String str2) {
        int i2;
        com.networkbench.agent.impl.a.a.a aVar = this.errorData;
        aVar.f36390b = map;
        HttpLibType httpLibType = this.httpLibType;
        if ((httpLibType == HttpLibType.URLConnection || httpLibType == HttpLibType.HttpClient) && (i2 = this.statusCode) <= 600 && i2 >= 400) {
            aVar.f36389a = "";
            aVar.f36391c = "";
        } else {
            aVar.f36389a = str;
            aVar.f36391c = str2;
        }
        this.isNetworkErrorExist = true;
    }

    public void setFirstPacketPeriod(int i2) {
        this.firstPacketPeriod = i2;
    }

    public void setFormattedUrlParams(String str) {
        String str2 = this.urlParams;
        if (str2 != null && !str2.isEmpty()) {
            boolean zIsEmpty = str.isEmpty();
            String str3 = this.urlParams;
            str = !zIsEmpty ? tr.h(str3, "&", str) : str3;
        }
        if (str.endsWith("&")) {
            str = o60.g(1, 0, str);
        }
        if (str.length() > 1024) {
            this.formattedUrlParams = str.substring(0, 1024);
        } else {
            this.formattedUrlParams = str;
        }
        this.hasParseUrlParams = true;
    }

    public void setHttpLibType(HttpLibType httpLibType) {
        this.httpLibType = httpLibType;
    }

    public void setIpAddress(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str == null) {
            str = "";
        }
        this.ipAddress = str;
    }

    public void setNBSRequestHeader(String str, String str2) {
        try {
            if (r.u().aj() && isEqualsToNBSRequestHeader(str)) {
                setRequestHeaderIdValue(str2);
            }
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("setting value error:"), log);
        }
    }

    public void setOk2DnsFromThread(boolean z) {
        this.isOk2DnsFromThread = z;
    }

    public void setOtherTimeInfo(com.networkbench.agent.impl.a.a.b bVar) {
        String str;
        if (bVar == null || (str = this.url) == null) {
            return;
        }
        String strA = com.networkbench.agent.impl.util.s.a(str);
        if (ak.r(strA)) {
            return;
        }
        if (this.statusCode == 901) {
            this.ipAddress = "";
            return;
        }
        String strC = ai.c(strA);
        if (!ak.r(strC)) {
            this.ipAddress = strC;
        }
        if (ak.r(this.ipAddress) && bVar.A() == HttpLibType.OkHttp) {
            Map<String, String> map = com.networkbench.agent.impl.socket.r.f38219c;
            this.ipAddress = map.get(strA) != null ? map.get(strA) : "";
        }
        if (ak.r(this.ipAddress)) {
            try {
                ConcurrentHashMap<String, com.networkbench.agent.impl.socket.r.a> concurrentHashMap = com.networkbench.agent.impl.socket.r.f38217a;
                if (concurrentHashMap.containsKey(strA)) {
                    com.networkbench.agent.impl.socket.r.a aVar = concurrentHashMap.get(strA);
                    if (ak.r(aVar.a())) {
                        InetAddress[] allByName = InetAddress.getAllByName(strA);
                        if (allByName != null) {
                            this.ipAddress = allByName[0].getHostAddress();
                        }
                        aVar.a(this.ipAddress);
                    } else {
                        this.ipAddress = aVar.a();
                    }
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    InetAddress[] allByName2 = InetAddress.getAllByName(strA);
                    long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                    if (allByName2 != null) {
                        this.ipAddress = allByName2[0].getHostAddress();
                    }
                    concurrentHashMap.put(strA, new com.networkbench.agent.impl.socket.r.a((int) jCurrentTimeMillis2, this.ipAddress));
                }
            } catch (Throwable unused) {
            }
        }
        bVar.c(this.ipAddress);
    }

    public void setPort(int i2) {
        this.urlBuilder.a(i2);
    }

    public void setRemainPackage(int i2) {
        this.remainPackage = i2;
    }

    public void setRequestBody(String str) {
        if (str == null) {
            return;
        }
        this.requestBody = str;
    }

    public void setRequestHeaderIdValue(String str) {
        log.a("setRequestHeaderIdValue:" + str);
        if (ak.r(str)) {
            return;
        }
        this.requestHeaderIdValue = str;
    }

    public void setRequestMethod(RequestMethodType requestMethodType) {
        this.requestMethod = requestMethodType;
    }

    public void setResponseBody(String str) {
        if (str == null) {
            return;
        }
        this.responseBody = str;
    }

    public void setSslHandShakeTime(int i2) {
        this.sslHandShakeTime = i2;
    }

    public void setState(int i2) {
        a aVar = a.READY;
        if (i2 == aVar.ordinal()) {
            this.state = aVar;
            return;
        }
        a aVar2 = a.SENT;
        if (i2 == aVar2.ordinal()) {
            this.state = aVar2;
            return;
        }
        a aVar3 = a.COMPLETE;
        if (i2 == aVar3.ordinal()) {
            this.state = aVar3;
        }
    }

    public void setStatusCode(int i2) {
        this.isConnect = true;
        if (isComplete()) {
            this.statusCode = i2;
            log.f("setStatusCode(...) called on TransactionState in " + this.state.toString() + " state");
        } else {
            this.statusCode = i2;
            if (i2 == 200) {
                log.d("set status code:" + i2);
            }
        }
        if (this.statusCode == 0) {
            this.statusCode = -1;
        }
    }

    public void setTcpHandShakeTime(int i2) {
        this.tcpHandShakeTime = i2;
    }

    public void setTraces() {
        com.networkbench.agent.impl.asyncaction.r rVar;
        if (this.hasInvokeSetTrace) {
            return;
        }
        String strB = "";
        if (Looper.myLooper() != Looper.getMainLooper()) {
            NBSTraceEngine.enterMethod("", SlowStartState.SegmentType.NETWORK.getValue(), com.networkbench.agent.impl.data.type.r.UNIT_TYPE_FOR_NETWORK);
        }
        com.networkbench.agent.impl.data.a.a aVarH = null;
        try {
            rVar = (com.networkbench.agent.impl.asyncaction.r) q.a().c();
        } catch (Throwable unused) {
            rVar = null;
        }
        try {
            this.seriesData = new b(NBSBitmapBeansControl.getInstance().getSessionId());
            if (rVar != null && checkTraceTime(rVar)) {
                this.seriesData.f37423c = rVar.a();
                aVarH = rVar.h();
                q qVarD = rVar.d();
                strB = qVarD != null ? qVarD.b() : "";
                if (aVarH != null) {
                    this.seriesData.f37424e = aVarH.h();
                }
                g.A("NBSTransactionState setTraces traceEngineManager " + rVar.toString());
            } else if (c.a() != null) {
                com.networkbench.agent.impl.data.a.c cVarA = c.a();
                if (cVarA.b() <= 6000) {
                    this.seriesData.f37423c = cVarA.a();
                    g.A("custom eventAction  actionId:" + this.seriesData.f37423c);
                }
            } else {
                g.A("NBSTransactionState setTraces traceEngineManager is null");
            }
            if (aVarH == null || TextUtils.isEmpty(aVarH.g())) {
                this.seriesData.d = ScreenNameManager.getCurrentScreenName();
            } else {
                this.seriesData.d = aVarH.g();
            }
            com.networkbench.agent.impl.data.d.c cVarA2 = com.networkbench.agent.impl.data.d.b.a().a(strB);
            b bVar = this.seriesData;
            if (cVarA2 != null) {
                bVar.f37425f = cVarA2.asJsonObject().toString();
                this.seriesData.f37422b = cVarA2.f();
            } else {
                ak.a(bVar);
            }
            g.A("NBSTransactionState setTraces seriesData:" + this.seriesData.toString());
        } catch (Throwable unused2) {
            this.seriesData = new b(NBSBitmapBeansControl.getInstance().getSessionId());
        }
        this.hasInvokeSetTrace = true;
    }

    public void setTransactionData(com.networkbench.agent.impl.a.a.b bVar) {
        this.transactionData = bVar;
    }

    public void setUUid(String str) {
        this.f37372a = str;
    }

    public void setUrl(String str) {
        String strA = ak.a(str);
        if (strA == null) {
            return;
        }
        if (strA.length() > 1024) {
            strA = strA.substring(0, 1024);
        }
        if (!isSent()) {
            this.url = strA;
            return;
        }
        log.f("setUrl(...) called on TransactionState in " + this.state.toString() + " state");
    }

    public void setUrlParams(String str) {
        this.urlParams = str;
    }

    public void setokhttp3(boolean z) {
        this.isOkhttp3 = z;
    }

    public String toString() {
        return "NBSTransactionState{hasParseUrlParams=" + this.hasParseUrlParams + ", url='" + this.url + "', statusCode=" + this.statusCode + ", errorCode=" + this.errorCode + ", bytesSent=" + this.bytesSent + ", bytesReceived=" + this.bytesReceived + ", startTime=" + this.startTime + ", endTime=" + this.endTime + ", state=" + this.state + ", addressAllStr='" + this.addressAllStr + "', requestMethod=" + this.requestMethod + ", httpLibType=" + this.httpLibType + ", isOk2DnsFromThread=" + this.isOk2DnsFromThread + ", dnsElapse=" + this.dnsElapse + ", ipAddress='" + this.ipAddress + "', tcpHandShakeTime=" + this.tcpHandShakeTime + ", firstPacketPeriod=" + this.firstPacketPeriod + ", remainPackage=" + this.remainPackage + ", sslHandShakeTime=" + this.sslHandShakeTime + ", uuid='" + this.f37372a + "', isOkhttp3=" + this.isOkhttp3 + ", thread Name = " + Thread.currentThread().getName() + '}';
    }

    public NBSTransactionState() {
        this(false);
    }
}

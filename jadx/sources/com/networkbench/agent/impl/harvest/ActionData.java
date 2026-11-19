package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.c.a;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.k.b;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.v;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonObject;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.fc;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class ActionData extends HarvestableArray implements a {
    private static final String TAG = "ActionData";
    private static final e log = f.a();
    private String IP;
    private String addressAllStr;
    private String appData;
    private String appDataNew;
    private int app_phase;
    private long bytesReceived;
    private long bytesSent;
    private String carrier;
    private String cdnVendorName;
    private int connectType;
    private String contentType;
    private boolean controllerDispatch;
    private Map dataTag;
    private String errMsg;
    private String errStackTrace;
    private int errorCode;
    private HttpLibType httpLibType;
    private boolean isOk2DnsFromThread;
    private boolean isOkhttp3;
    private JsonObject networkHeaderAndBody;
    private int remainPkTime;
    private String requestBody;
    public HashMap<String, String> requestHeaderParam;
    private RequestMethodType requestMethod;
    private String responseBody;
    public HashMap<String, String> responseHeaderParam;
    private b seriesData;
    private int statusCode;
    private String suuid;
    private int timeToQueueTime;
    private int time_first_package;
    private int time_ssl_handshake;
    private int time_to_connect;
    private int time_to_dns;
    private Long timestamp;
    private int totalTime;
    private HashMap<String, JsonObject> unknown;
    private String url;
    private String urlParams;
    private String userActionId;
    private JsonObject webviewData;

    public ActionData(boolean z) {
        HttpLibType httpLibType = HttpLibType.URLConnection;
        this.httpLibType = httpLibType;
        this.IP = "";
        this.time_to_dns = -1;
        this.time_to_connect = -1;
        this.time_ssl_handshake = -1;
        this.time_first_package = 0;
        this.timeToQueueTime = 0;
        this.remainPkTime = 0;
        this.unknown = new HashMap<>();
        this.app_phase = 0;
        this.isOkhttp3 = false;
        this.addressAllStr = "";
        this.requestMethod = RequestMethodType.GET;
        this.httpLibType = httpLibType;
        this.requestHeaderParam = new HashMap<>();
        this.responseHeaderParam = new HashMap<>();
        this.networkHeaderAndBody = new JsonObject();
        this.requestBody = "";
        this.responseBody = "";
        this.userActionId = "";
        this.errMsg = "";
        this.errStackTrace = "";
        this.webviewData = null;
        if (z) {
            b bVar = new b(NBSBitmapBeansControl.getInstance().getSessionId());
            this.seriesData = bVar;
            bVar.d = ScreenNameManager.getCurrentScreenName();
            this.seriesData.f37422b = com.networkbench.agent.impl.data.d.b.a().b().f();
        }
    }

    private int caclErrorCode() {
        int i2 = this.statusCode;
        if (i2 >= 100 && i2 <= 600 && this.errorCode != 905) {
            log.a("setErrorCode :  重置为0 ... url + " + this.url);
            this.errorCode = 0;
        }
        return this.errorCode;
    }

    private int calcRemainPackageTime() {
        int i2 = this.remainPkTime;
        if (i2 > 0) {
            return i2;
        }
        return 0;
    }

    private String check(String str) {
        return str.length() >= 1024 ? str.substring(0, 1024) : str;
    }

    private boolean conutHttpTime() {
        return ak.d(this.timeToQueueTime) + (ak.d(this.remainPkTime) + (ak.d(this.time_to_dns) + (ak.d(this.time_first_package) + (ak.d(this.time_to_connect) + ak.d(this.time_ssl_handshake))))) >= this.totalTime;
    }

    private String getErrorMsg() {
        int i2;
        String str = this.errMsg;
        if (str == null || (i2 = this.statusCode) == 200) {
            return "";
        }
        HttpLibType httpLibType = this.httpLibType;
        return ((httpLibType == HttpLibType.URLConnection || httpLibType == HttpLibType.HttpClient) && i2 <= 600 && i2 >= 400) ? "" : str;
    }

    private String getErrorStackTrace() {
        String str = this.errStackTrace;
        return (str == null || this.statusCode == 200) ? "" : str;
    }

    private String getHttpData() {
        if (!r.u().aA().b()) {
            Logger.debug(TAG, "isRecordNetworkEnabled false, get Http data return empty");
            return "";
        }
        JsonObject jsonObject = new JsonObject();
        v.a(jsonObject, ConfigurationName.REQUEST_HEADERS, this.url, this.requestHeaderParam, this.httpLibType, false);
        v.b(jsonObject, ConfigurationName.RESPONSE_HEADERS, this.url, this.responseHeaderParam, this.httpLibType, true);
        v.a(jsonObject, "requestBody", this.url, this.contentType, this.requestBody, this.httpLibType);
        v.b(jsonObject, "responseBody", this.url, this.contentType, this.responseBody, this.httpLibType);
        return jsonObject.toString();
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive(check(this.url)));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.requestMethod.ordinal())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.httpLibType.ordinal())));
        jsonArray.add(new JsonPrimitive(this.IP));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(calcTotalTime())));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.time_to_dns)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.time_to_connect)));
        int i2 = this.time_first_package;
        if (i2 == -1) {
            i2 = 0;
        }
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(i2)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.time_ssl_handshake)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.statusCode)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(caclErrorCode())));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.bytesSent)));
        jsonArray.add(new JsonPrimitive((Number) Long.valueOf(this.bytesReceived)));
        jsonArray.add(this.appData == null ? null : new JsonPrimitive(this.appData));
        String str = this.contentType;
        if (str == null) {
            str = "";
        }
        jsonArray.add(new JsonPrimitive(str));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.controllerDispatch ? 1 : 0)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.connectType)));
        String str2 = this.cdnVendorName;
        if (str2 == null) {
            str2 = "";
        }
        jsonArray.add(new JsonPrimitive(str2));
        if (r.u().af()) {
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.app_phase)));
        } else {
            jsonArray.add(new JsonPrimitive((Number) 0));
        }
        int i3 = this.timeToQueueTime;
        if (i3 == -1) {
            i3 = 0;
        }
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(i3)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(calcRemainPackageTime() != -1 ? calcRemainPackageTime() : 0)));
        HashMap<String, JsonObject> map = this.unknown;
        if (map != null) {
            jsonArray.add(ak.c((Map<String, JsonObject>) map));
        } else {
            jsonArray.add(new JsonObject());
        }
        String str3 = this.appDataNew;
        if (str3 == null) {
            str3 = "";
        }
        jsonArray.add(new JsonPrimitive(str3));
        jsonArray.add(new JsonPrimitive(""));
        jsonArray.add(new JsonPrimitive(getHttpData()));
        jsonArray.add(new JsonPrimitive(new com.networkbench.agent.impl.data.a(r.u(), this.seriesData, getTimestamp().longValue()).asJsonObject().toString()));
        JsonObject jsonObject = this.webviewData;
        jsonArray.add(new JsonPrimitive(jsonObject != null ? jsonObject.toString() : ""));
        jsonArray.add(new JsonPrimitive(this.userActionId));
        jsonArray.add(new JsonPrimitive(getErrorMsg()));
        jsonArray.add(new JsonPrimitive(getErrorStackTrace()));
        return jsonArray;
    }

    public void calcFirstpackage() {
        if (ak.d(this.time_first_package) == 0) {
            this.time_first_package = ak.d((((this.totalTime - ak.d(this.time_ssl_handshake)) - ak.d(this.time_to_connect)) - ak.d(this.time_to_dns)) - ak.d(this.remainPkTime));
        }
    }

    public void calcQueueTime() {
        int i2 = this.time_first_package;
        int i3 = this.totalTime;
        if (i2 > 0) {
            this.timeToQueueTime = ak.d(((((i3 - ak.d(this.time_ssl_handshake)) - ak.d(this.time_to_connect)) - ak.d(this.time_first_package)) - ak.d(this.time_to_dns)) - ak.d(this.remainPkTime));
        } else {
            this.time_first_package = ak.d(((((i3 - ak.d(this.time_ssl_handshake)) - ak.d(this.time_to_connect)) - ak.d(this.time_first_package)) - ak.d(this.time_to_dns)) - ak.d(this.remainPkTime));
            this.timeToQueueTime = 0;
        }
    }

    public int calcTotalTime() {
        return this.totalTime;
    }

    public void checkActionData() {
        if (conutHttpTime()) {
            if (this.isOkhttp3) {
                this.totalTime = getAllTime();
                return;
            }
            int i2 = this.time_ssl_handshake;
            int i3 = this.totalTime;
            if (i2 >= i3) {
                this.time_ssl_handshake = -1;
            }
            if (this.time_to_connect >= i3) {
                this.time_to_connect = -1;
            }
            if (this.time_to_dns >= i3) {
                this.time_to_dns = -1;
            }
            if (this.remainPkTime >= i3) {
                this.remainPkTime = -1;
            }
            if (this.time_first_package >= i3) {
                this.time_first_package = -1;
            }
            if (conutHttpTime()) {
                this.time_to_connect = -1;
            }
            if (conutHttpTime()) {
                this.time_ssl_handshake = -1;
            }
            if (conutHttpTime()) {
                this.remainPkTime = -1;
            }
            if (conutHttpTime()) {
                this.time_first_package = -1;
            }
            if (conutHttpTime()) {
                this.timeToQueueTime = 0;
            }
        }
    }

    public void correctDataInfo() {
        e eVar = log;
        eVar.a(String.format("before connecttime:%d, ssl:%d, remainpktime:%d, firstpk:%d, dns:%d, alltime:%d, queuetime:%d", Integer.valueOf(this.time_to_connect), Integer.valueOf(this.time_ssl_handshake), Integer.valueOf(this.remainPkTime), Integer.valueOf(this.time_first_package), Integer.valueOf(this.time_to_dns), Integer.valueOf(this.totalTime), Integer.valueOf(this.timeToQueueTime)));
        checkActionData();
        calcFirstpackage();
        calcQueueTime();
        eVar.a(String.format("after connecttime:%d, ssl:%d, remainpktime:%d, firstpk:%d, dns:%d, alltime:%d, queuetime:%d", Integer.valueOf(this.time_to_connect), Integer.valueOf(this.time_ssl_handshake), Integer.valueOf(this.remainPkTime), Integer.valueOf(this.time_first_package), Integer.valueOf(this.time_to_dns), Integer.valueOf(this.totalTime), Integer.valueOf(this.timeToQueueTime)));
    }

    public String getAddressAllStr() {
        return this.addressAllStr;
    }

    public int getAllTime() {
        return ak.d(this.timeToQueueTime) + ak.d(this.remainPkTime) + ak.d(this.time_first_package) + ak.d(this.time_ssl_handshake) + ak.d(this.time_to_connect) + ak.d(this.time_to_dns);
    }

    public String getAppData() {
        return this.appData;
    }

    public String getAppDataNew() {
        return this.appDataNew;
    }

    public int getAppPhase() {
        return this.app_phase;
    }

    public long getBytesReceived() {
        return this.bytesReceived;
    }

    public long getBytesSent() {
        return this.bytesSent;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getCdnVendorName() {
        return this.cdnVendorName;
    }

    public String getContentType() {
        return this.contentType;
    }

    public Map getDataTag() {
        return this.dataTag;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public HttpLibType getHttpLibType() {
        return this.httpLibType;
    }

    public String getIP() {
        return this.IP;
    }

    public int getRemainPkTime() {
        return this.remainPkTime;
    }

    public RequestMethodType getRequestMethod() {
        return this.requestMethod;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getSuuid() {
        return this.suuid;
    }

    public int getTime_first_package() {
        return this.time_first_package;
    }

    public int getTime_ssl_handshake() {
        return this.time_ssl_handshake;
    }

    public int getTime_to_connect() {
        return this.time_to_connect;
    }

    public int getTime_to_dns() {
        return this.time_to_dns;
    }

    public Long getTimestamp() {
        return this.timestamp;
    }

    public int getTotalTime() {
        return this.totalTime;
    }

    public HashMap<String, JsonObject> getUnknown() {
        return this.unknown;
    }

    public String getUrl() {
        return this.url;
    }

    public String getUrlParams() {
        return this.urlParams;
    }

    public boolean isOk2DnsFromThread() {
        return this.isOk2DnsFromThread;
    }

    public boolean isOkhttp3() {
        g.t("isOkhttp3 : " + this.isOkhttp3);
        g.t("isOkhttp3 : " + r.u().d);
        return this.isOkhttp3 && r.u().d;
    }

    public boolean isWebViewData() {
        HttpLibType httpLibType = this.httpLibType;
        return httpLibType == HttpLibType.Webview || httpLibType == HttpLibType.WebviewAJAX || httpLibType == HttpLibType.WebViewResource;
    }

    public void setAddressAllStr(String str) {
        this.addressAllStr = str;
    }

    public void setAppData(String str) {
        this.appData = str;
    }

    public void setAppDataNew(String str) {
        this.appDataNew = str;
    }

    public void setAppPhase(int i2) {
        this.app_phase = i2;
    }

    public void setBytesReceived(long j2) {
        this.bytesReceived = j2;
    }

    public void setBytesSent(long j2) {
        this.bytesSent = j2;
    }

    public void setCarrier(String str) {
        this.carrier = str;
    }

    public void setCdnVendorName(String str) {
        this.cdnVendorName = str;
    }

    public void setConnectType(int i2) {
        this.connectType = i2;
    }

    public void setContentType(String str) {
        this.contentType = str;
    }

    public void setDataTag(Map map) {
        this.dataTag = map;
    }

    public void setErrorCode(int i2) {
        int i3 = this.statusCode;
        if (i3 < 100 || i3 > 600 || i2 == 905) {
            e eVar = log;
            StringBuilder sbQ = fc.q(i2, "setErrorCode  : ", " ......url");
            sbQ.append(this.url);
            eVar.a(sbQ.toString());
            this.errorCode = i2;
            return;
        }
        log.a("setErrorCode :  重置为0 ... url + " + this.url);
        this.errorCode = 0;
    }

    public void setErrorInfo(String str, String str2) {
        if (str == null) {
            str = "";
        }
        this.errMsg = str;
        if (str2 == null) {
            str2 = "";
        }
        this.errStackTrace = str2;
    }

    public void setHttpLibType(HttpLibType httpLibType) {
        this.httpLibType = httpLibType;
    }

    public void setIP(String str) {
        this.IP = str;
    }

    @Override // com.networkbench.agent.impl.harvest.c.a
    public void setNetworkData(b bVar) {
        this.seriesData = bVar;
    }

    public void setOk2DnsFromThread(boolean z) {
        this.isOk2DnsFromThread = z;
    }

    public void setOkhttp3(boolean z) {
        this.isOkhttp3 = z;
    }

    public void setRemainPkTime(int i2) {
        this.remainPkTime = i2;
    }

    public void setRequestBody(String str) {
        this.requestBody = str;
    }

    public void setRequestMethod(RequestMethodType requestMethodType) {
        this.requestMethod = requestMethodType;
    }

    public void setResponseBody(String str) {
        this.responseBody = str;
    }

    public void setSeriesData(b bVar) {
        this.seriesData = bVar;
    }

    public void setStatusCode(int i2) {
        this.statusCode = i2;
    }

    public void setSuuid(String str) {
        this.suuid = str;
    }

    public void setTimeToQueueTime(int i2) {
        this.timeToQueueTime = i2;
    }

    public void setTime_first_package(int i2) {
        this.time_first_package = i2;
    }

    public void setTime_ssl_handshake(int i2) {
        this.time_ssl_handshake = i2;
    }

    public void setTime_to_connect(int i2) {
        this.time_to_connect = i2;
    }

    public void setTime_to_dns(int i2) {
        this.time_to_dns = i2;
    }

    public void setTimestamp(Long l) {
        this.timestamp = l;
    }

    public void setTotalTime(int i2) {
        this.totalTime = i2;
    }

    public void setUnknown(HashMap<String, JsonObject> map) {
        this.unknown = map;
    }

    public void setUrl(String str) {
        if (str.length() > 1024) {
            str = str.substring(0, 1024);
        }
        this.url = str;
    }

    public void setUrlParams(String str) {
        this.urlParams = str;
    }

    public void setUserActionId(String str) {
        if (str == null) {
            str = "";
        }
        this.userActionId = str;
    }

    public void setWebviewData(JsonObject jsonObject) {
        if (jsonObject == null) {
            return;
        }
        this.webviewData = jsonObject;
    }

    public String toString() {
        return "[url=" + this.url + ", carrier=" + this.carrier + ", totalTime(include timeQueueTime)=" + calcTotalTime() + ", statusCode=" + this.statusCode + ", errorCode=" + this.errorCode + ", bytesSent=" + this.bytesSent + ", bytesReceived=" + this.bytesReceived + ", appData=" + this.appData + ", timestamp=" + this.timestamp + ", totalTime=" + this.totalTime + ", urlParams=" + this.urlParams + ", requestMethod=" + this.requestMethod + ", httpLibType=" + this.httpLibType + ", IP = " + this.IP + ", time_to_dns = " + this.time_to_dns + ", time_to_connect = " + this.time_to_connect + ",time_to_ssl= " + this.time_ssl_handshake + ", time_first_package =" + this.time_first_package + ",content_type=" + this.contentType + ",ctl_flag=" + (this.controllerDispatch ? 1 : 0) + ",connectType=" + this.connectType + ",cdnVendorName=" + this.cdnVendorName + ",app_phase=" + this.app_phase + ", timeQueueTime:" + this.timeToQueueTime + ", remainPkTime:" + calcRemainPackageTime() + ", webviewData" + this.webviewData + ",userActionId:" + this.userActionId + ", errMsg:" + getErrorMsg() + ", errStack:" + getErrorStackTrace() + ",requestBody:" + this.networkHeaderAndBody + "]";
    }

    public ActionData() {
        HttpLibType httpLibType = HttpLibType.URLConnection;
        this.httpLibType = httpLibType;
        this.IP = "";
        this.time_to_dns = -1;
        this.time_to_connect = -1;
        this.time_ssl_handshake = -1;
        this.time_first_package = 0;
        this.timeToQueueTime = 0;
        this.remainPkTime = 0;
        this.unknown = new HashMap<>();
        this.app_phase = 0;
        this.isOkhttp3 = false;
        this.addressAllStr = "";
        this.requestMethod = RequestMethodType.GET;
        this.httpLibType = httpLibType;
        this.requestHeaderParam = new HashMap<>();
        this.responseHeaderParam = new HashMap<>();
        this.networkHeaderAndBody = new JsonObject();
        this.requestBody = "";
        this.responseBody = "";
        this.userActionId = "";
        this.errMsg = "";
        this.errStackTrace = "";
        this.webviewData = null;
    }
}

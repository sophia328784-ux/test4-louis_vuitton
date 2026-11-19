package com.networkbench.agent.impl.harvest;

import android.text.TextUtils;
import com.linkplay.medialib.FinalDataUtil;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.floatbtnmanager.l;
import com.networkbench.agent.impl.floatbtnmanager.m;
import com.networkbench.agent.impl.floatbtnmanager.p;
import com.networkbench.agent.impl.harvest.a.h;
import com.networkbench.agent.impl.harvest.a.k;
import com.networkbench.agent.impl.harvest.d.c;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.af;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.ct0;
import defpackage.v7;
import java.io.File;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestConnection {
    public static final int HOST_ERROR = 8888;
    public static final String INIT_SP_TAG = "initresult";
    private static final String TAG = "HarvestConnection";
    private String actionDefinerUrl;
    private String applicationToken;
    private String collectorHost;
    private ConnectInformation connectInformation;
    private HarvestConnectionInterface connectionInterface;
    private HarvestSoc harvestSoc;
    private String resourceHost;
    private boolean useSsl;
    private static final e log = f.a();
    private static final String DEFAULT_HOST_REDIRECT_NAME = "redirect.networkbench.com";
    public static String[] redirectHostList = {DEFAULT_HOST_REDIRECT_NAME, "tyrd1.networkbench.com", "tyrd2.networkbench.com", "tyrd1.tingyun.com", "tyrd2.tingyun.com"};
    private static int redirectHostIndex = 1;
    public static boolean isRedirectSuccess = false;
    public static String redirectHost = DEFAULT_HOST_REDIRECT_NAME;
    public static boolean IsCertEnabled = true;
    private static boolean isSoDisable = true;

    public HarvestConnection() {
        if (r.u().Q()) {
            this.useSsl = true;
        }
        isSoDisable = true;
        this.harvestSoc = new HarvestSoc();
        this.connectionInterface = new HarvestURLConnection(ak.i(), NBSAgent.getDeviceInformation().initUserHeaderValue(), r.u().z());
    }

    public static String a() {
        String[] strArr = redirectHostList;
        if (strArr == null || strArr.length == 0) {
            return redirectHost;
        }
        int length = redirectHostIndex % strArr.length;
        redirectHostIndex = length + 1;
        return strArr[length];
    }

    private String getHttpScheme(String str) {
        if (str.startsWith(SecurityConstants.SECURITY_NONE)) {
            return str;
        }
        return (this.useSsl ? "https://" : FinalDataUtil.HTTP_HEAD).concat(str);
    }

    private String getRedirectResult() {
        String strC = new af(r.u().J()).c(INIT_SP_TAG);
        return !TextUtils.isEmpty(strC) ? strC : "";
    }

    public static boolean isSoDisable() {
        return isSoDisable;
    }

    private void showUploadActionDefinerLog(int i2, l lVar) {
        if (i2 != 200) {
            switch (i2) {
                case 500:
                    log.f("statusCode is 500, dc error");
                    break;
                case 501:
                    log.f("statusCode is 501, token error");
                    break;
                case 502:
                    log.f("statusCode is 502, appid error");
                    break;
                case 503:
                    log.f("statusCode is 503, bitmap error");
                    break;
                default:
                    log.a("upload ActionDefiner statusCode:" + i2);
                    break;
            }
        } else {
            log.a("upload ActionDefiner success");
        }
        lVar.a(i2);
    }

    public void getActionDefinerHost() {
        try {
            this.actionDefinerUrl = this.connectionInterface.sendDataGet(com.networkbench.agent.impl.harvest.a.l.a(com.networkbench.agent.impl.harvest.a.r.ACTION_SELECTED, redirectHost, this.useSsl)).k();
        } catch (Exception e2) {
            log.f("getActionDefinerHost error:" + e2);
        }
    }

    public String getApplicationToken() {
        return this.applicationToken;
    }

    public ConnectInformation getConnectInformation() {
        return this.connectInformation;
    }

    public k getLogTrackDataProcess() {
        h hVarA = com.networkbench.agent.impl.harvest.a.l.a(com.networkbench.agent.impl.harvest.a.r.LOG_TASK_URL, this.collectorHost, this.useSsl);
        if (hVarA instanceof k) {
            return (k) hVarA;
        }
        v7.h("error result is not instance of LogTaskUrl");
        return null;
    }

    public c getRedirectHost() {
        c cVarSendDataStr = null;
        try {
            cVarSendDataStr = this.connectionInterface.sendDataStr(null, com.networkbench.agent.impl.harvest.a.l.a(com.networkbench.agent.impl.harvest.a.r.REDIRECT, redirectHost, this.useSsl));
        } catch (Exception e2) {
            log.a("send init info failed", e2);
        }
        if (cVarSendDataStr != null && !cVarSendDataStr.o()) {
            this.harvestSoc.setSocketInfo(cVarSendDataStr);
        }
        if (cVarSendDataStr != null && cVarSendDataStr.h() && !TextUtils.isEmpty(redirectHost)) {
            isRedirectSuccess = true;
        }
        if (cVarSendDataStr != null && cVarSendDataStr.h()) {
            return cVarSendDataStr;
        }
        String redirectResult = getRedirectResult();
        if (TextUtils.isEmpty(redirectResult)) {
            redirectHost = a();
            return cVarSendDataStr;
        }
        h hVarA = com.networkbench.agent.impl.harvest.a.l.a(com.networkbench.agent.impl.harvest.a.r.REDIRECT, redirectHost, this.useSsl);
        if (cVarSendDataStr == null) {
            return cVarSendDataStr;
        }
        cVarSendDataStr.a(200);
        return hVarA.a(redirectResult, hVarA.b());
    }

    public void getResourceBmp() {
        try {
            String strK = this.connectionInterface.sendDataGet(com.networkbench.agent.impl.harvest.a.l.a(com.networkbench.agent.impl.harvest.a.r.RESOURE_HOST, redirectHost, this.useSsl)).k();
            this.resourceHost = strK;
            if (TextUtils.isEmpty(strK)) {
                return;
            }
            new com.networkbench.agent.impl.floatbtnmanager.h(getHttpScheme(this.resourceHost), r.u().J()).a();
        } catch (Exception e2) {
            log.f("getResourceHost error:" + e2);
        }
    }

    public synchronized c getResponse(byte[] bArr, com.networkbench.agent.impl.harvest.a.r rVar) {
        c cVarSendDataOutputStream = null;
        if (bArr == null) {
            return null;
        }
        try {
            cVarSendDataOutputStream = this.connectionInterface.sendDataOutputStream(bArr, com.networkbench.agent.impl.harvest.a.l.a(rVar, this.collectorHost, this.useSsl));
        } catch (Exception e2) {
            log.a("send init info failed", e2);
        }
        return cVarSendDataOutputStream;
    }

    public void sendActionDefinerData(l lVar, p pVar, String str) {
        try {
            if (TextUtils.isEmpty(this.actionDefinerUrl)) {
                log.a("sendActionDefinerData report url is empty");
                lVar.a(HOST_ERROR);
                return;
            }
            Logger.debug(TAG, "selectInfo appId:" + pVar.a() + ", acName:" + pVar.b() + ", token:" + pVar.f() + ", filePart:" + pVar.h() + ", actionFetures:" + str);
            StringBuilder sb = new StringBuilder();
            sb.append(this.actionDefinerUrl);
            sb.append("/mobile/operate/api/produceAppData");
            String httpScheme = getHttpScheme(sb.toString());
            e eVar = log;
            StringBuilder sb2 = new StringBuilder("action definer url:");
            sb2.append(httpScheme);
            eVar.a(sb2.toString());
            HttpMultiPart httpMultiPart = new HttpMultiPart(httpScheme, "utf-8");
            httpMultiPart.addFormField("appId", pVar.a());
            httpMultiPart.addFormField("className", "");
            httpMultiPart.addFormField("methodName", "");
            httpMultiPart.addFormField("optTypeId", "64");
            httpMultiPart.addFormField("vcName", "");
            httpMultiPart.addFormField("acName", pVar.b());
            httpMultiPart.addFormField("token", pVar.f());
            httpMultiPart.addFilePart("files", new File(pVar.h()));
            httpMultiPart.addFormField("features", str);
            String strFinish = httpMultiPart.finish();
            eVar.a("upload bitmap result is : " + strFinish);
            if (TextUtils.isEmpty(strFinish)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strFinish);
            int i2 = jSONObject.getInt("status");
            String string = jSONObject.getString("message");
            showUploadActionDefinerLog(i2, lVar);
            eVar.a("upload info statusCode:" + i2 + ", message:" + string);
        } catch (Exception e2) {
            log.a("error process part", e2);
        }
    }

    public c sendConnect() {
        if (!isSoDisable) {
            return this.harvestSoc.sendConnect(this.connectInformation);
        }
        ConnectInformation connectInformation = this.connectInformation;
        if (connectInformation == null) {
            ct0.c();
            return null;
        }
        String jsonString = connectInformation.toJsonString();
        j.b("init request body: " + jsonString);
        c response = getResponse(jsonString, com.networkbench.agent.impl.harvest.a.r.INIT_MOBILE);
        if (response != null && response.j().s != -1) {
            return response;
        }
        redirectHost = a();
        return response;
    }

    public c sendData(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder("send data ");
        com.networkbench.agent.impl.harvest.a.r rVar = com.networkbench.agent.impl.harvest.a.r.VIDEO_CAPTURE;
        sb.append(rVar);
        sb.append(", JSON length:");
        sb.append(bArr.length);
        j.b(sb.toString());
        return getResponse(bArr, rVar);
    }

    public c sendDataPb(String str, int i2, String str2, String str3) {
        return HarvestSoc.sendDataInfo(str, i2, str2, str3);
    }

    public c sendTransactionSpanData(String str) {
        return getResponse(str, com.networkbench.agent.impl.harvest.a.r.TRANSACTION_SPAN_DATA);
    }

    public void sendVisualInfo(l lVar, m mVar, String str) {
        try {
            if (TextUtils.isEmpty(this.actionDefinerUrl)) {
                log.a("sendActionDefinerData report url is empty");
                lVar.a(HOST_ERROR);
                return;
            }
            e eVar = log;
            eVar.a("selectInfo appId:" + mVar.a() + ", name:" + mVar.b() + ", features:" + mVar.c() + ", token:" + mVar.d() + ", filePart:" + mVar.e() + ", actionFetures:" + str);
            StringBuilder sb = new StringBuilder();
            sb.append(this.actionDefinerUrl);
            sb.append("/mobile/api/ux/page/uploadVisualInfo");
            String httpScheme = getHttpScheme(sb.toString());
            StringBuilder sb2 = new StringBuilder("action definer url:");
            sb2.append(httpScheme);
            eVar.a(sb2.toString());
            HttpMultiPart httpMultiPart = new HttpMultiPart(httpScheme, "utf-8");
            httpMultiPart.addFormField("appId", mVar.a());
            httpMultiPart.addFormField("name", mVar.b());
            httpMultiPart.addFormField("features", mVar.c());
            httpMultiPart.addFormField("token", mVar.d());
            httpMultiPart.addFilePart("files", new File(mVar.e()));
            String strFinish = httpMultiPart.finish();
            eVar.a("upload bitmap result is : " + strFinish);
            if (TextUtils.isEmpty(strFinish)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(strFinish);
            int i2 = jSONObject.getInt("status");
            String string = jSONObject.getString("message");
            showUploadActionDefinerLog(i2, lVar);
            eVar.a("upload info statusCode:" + i2 + ", message:" + string);
        } catch (Exception e2) {
            log.a("error process part", e2);
        }
    }

    public void setApplicationToken(String str) {
        this.applicationToken = str;
    }

    public void setCollectorHost(String str) {
        this.collectorHost = str;
    }

    public void setConnectInformation(ConnectInformation connectInformation) {
        this.connectInformation = connectInformation;
    }

    public void setSoDisable(boolean z) {
        isSoDisable = z;
    }

    public void useSsl(boolean z) {
        this.useSsl = z;
    }

    public synchronized c getResponse(String str, com.networkbench.agent.impl.harvest.a.r rVar) {
        c cVarSendDataStr;
        try {
            cVarSendDataStr = this.connectionInterface.sendDataStr(str, com.networkbench.agent.impl.harvest.a.l.a(rVar, this.collectorHost, this.useSsl));
        } catch (Exception e2) {
            log.a("send init info failed", e2);
            cVarSendDataStr = null;
        }
        return cVarSendDataStr;
    }

    public c sendData(String str, com.networkbench.agent.impl.harvest.a.r rVar) {
        return getResponse(str, rVar);
    }

    public c sendData(String str) {
        StringBuilder sb = new StringBuilder("send data JSON ");
        com.networkbench.agent.impl.harvest.a.r rVar = com.networkbench.agent.impl.harvest.a.r.METIRC_DATA;
        sb.append(rVar.name());
        sb.append(":");
        sb.append(str);
        j.b(sb.toString());
        return getResponse(str, rVar);
    }
}

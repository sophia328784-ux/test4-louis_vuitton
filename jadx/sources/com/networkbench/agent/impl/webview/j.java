package com.networkbench.agent.impl.webview;

import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.harvest.RequestMethodType;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.aj;
import com.networkbench.agent.impl.util.r;
import defpackage.o60;
import defpackage.pq0;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f38511b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.networkbench.agent.impl.c.e f38512c = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f38510a = "webview-->";
    private static int d = -4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f38513e = -12;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f38514f = -6;
    private static int g = -11;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f38515h = -13;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f38516i = -14;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f38517j = -2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f38518k = -7;
    private static int l = -5;
    private static int m = -9;
    private static int n = -8;
    private static int o = -15;
    private static int p = -1;
    private static int q = -16;
    private static int r = -3;
    private static int s = -10;
    private static int t = 4;
    private static int u = 1;
    private static int v = 2;
    private static int w = 5;
    private static int x = 6;
    private static int y = 0;
    private static int z = 3;

    public static void a(WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, String str) {
        try {
            String method = webResourceRequest.getMethod();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String string = webResourceRequest.getUrl().toString();
            boolean zHasGesture = webResourceRequest.hasGesture();
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            if (str != null && str.equals(string) && !zIsForMainFrame) {
                f38512c.a("filter main page: isForMainFrame: " + zIsForMainFrame + ",url:" + string);
                return;
            }
            f38512c.a("processHttpErrorUp23 method:" + method + ",url:" + string);
            InputStream data = webResourceResponse.getData();
            String encoding = webResourceResponse.getEncoding();
            String mimeType = webResourceResponse.getMimeType();
            String reasonPhrase = webResourceResponse.getReasonPhrase();
            Map<String, String> responseHeaders = webResourceResponse.getResponseHeaders();
            int statusCode = webResourceResponse.getStatusCode();
            h hVar = new h(string);
            hVar.a(method);
            hVar.a(requestHeaders);
            hVar.a(zHasGesture);
            hVar.f38521c = zIsForMainFrame;
            hVar.d = true;
            hVar.a(data);
            hVar.b(encoding);
            hVar.c(mimeType);
            hVar.d(reasonPhrase);
            hVar.b(responseHeaders);
            hVar.a(statusCode);
            r.A.f("TaskQueue.webviewHttpError.put :url =  " + string + "====>code = " + statusCode + ", isForMainFrame:" + zIsForMainFrame);
            a(string, statusCode);
            ai.a(hVar);
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("processHttpErrorUp23 error:"), r.A);
        }
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder("(function (window) {\n  if (!window.nbsJsBridge) {\n    window.nbsJsBridge = {}\n}nbsJsBridge.context={");
        sb.append("sessionId : '" + NBSBitmapBeansControl.getInstance().getSessionId() + "'");
        sb.append(",");
        sb.append("webviewId : '" + str + "'");
        sb.append(",");
        sb.append("recordEnable : '" + r.u().l() + "'");
        sb.append(",");
        sb.append("userId : '" + r.u().t() + "'");
        sb.append(",");
        sb.append("deviceId : '" + r.u().T() + "'");
        sb.append(",context:{");
        sb.append("appVersion : '" + com.networkbench.agent.impl.e.c.a() + "'");
        sb.append(",");
        sb.append("platform : '" + NBSAgent.getDeviceInformation().getOsName() + "'");
        sb.append("}};})(window);");
        String string = sb.toString();
        com.networkbench.agent.impl.c.j.a("sessionJs: ".concat(string));
        return string;
    }

    public static int a(int i2) {
        if (i2 == f38513e) {
            return 900;
        }
        if (i2 == d || i2 == l) {
            return 907;
        }
        if (i2 == f38514f) {
            return 902;
        }
        if (i2 == g) {
            return 908;
        }
        if (i2 == f38517j) {
            return 901;
        }
        return i2 == n ? 903 : -1;
    }

    public static RequestMethodType a(String str) {
        if (TextUtils.isEmpty(str)) {
            return RequestMethodType.GET;
        }
        if (str.toUpperCase().equals("OPTIONS")) {
            return RequestMethodType.OPTIONS;
        }
        if (str.toUpperCase().equals("GET")) {
            return RequestMethodType.GET;
        }
        if (str.toUpperCase().equals("HEAD")) {
            return RequestMethodType.HEAD;
        }
        if (str.toUpperCase().equals("POST")) {
            return RequestMethodType.POST;
        }
        if (str.toUpperCase().equals("PUT")) {
            return RequestMethodType.PUT;
        }
        if (str.toUpperCase().equals("DELETE")) {
            return RequestMethodType.DELETE;
        }
        if (str.toUpperCase().equals("TRACE")) {
            return RequestMethodType.TRACE;
        }
        return RequestMethodType.GET;
    }

    public static void a(int i2, String str, String str2) {
        g gVar = new g(str2);
        gVar.a(a(i2));
        gVar.a(str);
        a(str2, a(i2));
        com.networkbench.agent.impl.c.e eVar = r.A;
        StringBuilder sbR = pq0.r("TaskQueue.webviewHttpError.put :url =  ", str2, "====>code = ");
        sbR.append(a(i2));
        eVar.f(sbR.toString());
        ai.a(gVar);
    }

    public static void a(WebResourceRequest webResourceRequest, WebResourceError webResourceError, String str) {
        try {
            com.networkbench.agent.impl.c.e eVar = r.A;
            eVar.a("processErrorUp23 : " + str);
            int errorCode = webResourceError.getErrorCode();
            String string = webResourceError.getDescription().toString();
            String method = webResourceRequest.getMethod();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String string2 = webResourceRequest.getUrl().toString();
            webResourceRequest.hasGesture();
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            g gVar = new g(string2);
            gVar.f38521c = zIsForMainFrame;
            gVar.a(a(errorCode));
            gVar.a(string);
            gVar.a(requestHeaders);
            gVar.b(method);
            eVar.a("url:" + string2 + ", method:" + method + ", isForMainFrame:" + zIsForMainFrame);
            a(string2, a(errorCode));
            if (str != null && str.equals(string2)) {
                gVar.f38521c = true;
            }
            ai.a(gVar);
        } catch (Exception e2) {
            r.A.f("processErrorUp23 error:" + e2.getMessage());
        }
    }

    private static void a(String str, int i2) {
        if (TextUtils.isEmpty(str)) {
            NBSAndroidAgentImpl impl = NBSAgent.getImpl();
            HarvestConfiguration harvestConfigurationM = impl != null ? impl.m() : null;
            if (harvestConfigurationM != null && aj.a(str, i2, harvestConfigurationM.getIgnoreErrRules())) {
                i2 = 200;
            }
        }
        ai.a(str, i2);
    }

    public static void a(String str, Throwable th) {
    }

    public static void a(SslError sslError, String str) {
        try {
            sslError.getCertificate();
            int primaryError = sslError.getPrimaryError();
            String url = sslError.getUrl();
            com.networkbench.agent.impl.c.e eVar = r.A;
            eVar.a("processHttpErrorUp23 primaryError:" + primaryError + ",url:" + url);
            i iVar = new i(url);
            iVar.a(primaryError);
            if (str == null || !str.equals(url)) {
                iVar.f38521c = false;
            }
            eVar.f("TaskQueue.webviewHttpError.put :url =  " + url + "====>code = 908");
            ai.a(iVar);
            a(url, 908);
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("processSslError error:"), r.A);
        }
    }

    public static void a(com.tencent.smtt.export.external.interfaces.SslError sslError, String str, String str2) {
        try {
            int primaryError = sslError.getPrimaryError();
            com.networkbench.agent.impl.c.e eVar = r.A;
            eVar.a("processHttpErrorUp23 primaryError:" + primaryError + ",url:" + str);
            i iVar = new i(str);
            iVar.a(primaryError);
            if (str2 == null || !str2.equals(str)) {
                iVar.f38521c = false;
            }
            eVar.f("TaskQueue.webviewHttpError.put :url =  " + str + "====>code = 908");
            ai.a(iVar);
            a(str, 908);
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("processSslError error:"), r.A);
        }
    }

    public static void a(com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest, com.tencent.smtt.export.external.interfaces.WebResourceResponse webResourceResponse, String str) {
        try {
            String method = webResourceRequest.getMethod();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String string = webResourceRequest.getUrl().toString();
            boolean zHasGesture = webResourceRequest.hasGesture();
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            if (str != null && str.equals(string) && !zIsForMainFrame) {
                f38512c.a("filter main page: isForMainFrame: " + zIsForMainFrame + ",url:" + string);
                return;
            }
            f38512c.a("processHttpErrorUp23 method:" + method + ",url:" + string);
            InputStream data = webResourceResponse.getData();
            String encoding = webResourceResponse.getEncoding();
            String mimeType = webResourceResponse.getMimeType();
            String reasonPhrase = webResourceResponse.getReasonPhrase();
            Map<String, String> responseHeaders = webResourceResponse.getResponseHeaders();
            int statusCode = webResourceResponse.getStatusCode();
            h hVar = new h(string);
            hVar.a(method);
            hVar.a(requestHeaders);
            hVar.a(zHasGesture);
            hVar.f38521c = zIsForMainFrame;
            hVar.d = true;
            hVar.a(data);
            hVar.b(encoding);
            hVar.c(mimeType);
            hVar.d(reasonPhrase);
            hVar.b(responseHeaders);
            hVar.a(statusCode);
            r.A.f("TaskQueue.webviewHttpError.put :url =  " + string + "====>code = " + statusCode + ", isForMainFrame:" + zIsForMainFrame);
            a(string, statusCode);
            ai.a(hVar);
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("processHttpErrorUp23 error:"), r.A);
        }
    }

    public static void a(com.tencent.smtt.export.external.interfaces.WebResourceRequest webResourceRequest, com.tencent.smtt.export.external.interfaces.WebResourceError webResourceError, String str) {
        try {
            com.networkbench.agent.impl.c.e eVar = r.A;
            eVar.a("processErrorUp23 : " + str);
            int errorCode = webResourceError.getErrorCode();
            String string = webResourceError.getDescription().toString();
            String method = webResourceRequest.getMethod();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String string2 = webResourceRequest.getUrl().toString();
            webResourceRequest.hasGesture();
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            g gVar = new g(string2);
            gVar.f38521c = zIsForMainFrame;
            gVar.a(a(errorCode));
            gVar.a(string);
            gVar.a(requestHeaders);
            gVar.b(method);
            eVar.a("url:" + string2 + ", method:" + method + ", isForMainFrame:" + zIsForMainFrame);
            a(string2, a(errorCode));
            if (str != null && str.equals(string2)) {
                gVar.f38521c = true;
            }
            ai.a(gVar);
        } catch (Exception e2) {
            r.A.f("processErrorUp23 error:" + e2.getMessage());
        }
    }
}

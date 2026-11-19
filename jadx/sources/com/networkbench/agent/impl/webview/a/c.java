package com.networkbench.agent.impl.webview.a;

import android.text.TextUtils;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.util.NBSAndroidAgentImpl;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.aj;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.g;
import com.networkbench.agent.impl.webview.h;
import com.networkbench.agent.impl.webview.j;
import com.uc.webview.export.WebResourceError;
import com.uc.webview.export.WebResourceRequest;
import com.uc.webview.export.WebResourceResponse;
import defpackage.o60;
import java.io.InputStream;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f38434a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f38435b = f.a();

    public static void a(WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse, String str) {
        try {
            String method = webResourceRequest.getMethod();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String string = webResourceRequest.getUrl().toString();
            boolean zHasGesture = webResourceRequest.hasGesture();
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            if (str != null && str.equals(string) && !zIsForMainFrame) {
                f38435b.a("nebula filter main page: isForMainFrame: " + zIsForMainFrame + ",url:" + string);
                return;
            }
            f38435b.a("nebula processHttpErrorUp23 method:" + method + ",url:" + string);
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
            r.A.f("nebula TaskQueue.webviewHttpError.put :url =  " + string + "====>code = " + statusCode + ", isForMainFrame:" + zIsForMainFrame);
            a(string, statusCode);
            ai.a(hVar);
        } catch (Throwable th) {
            o60.C(th, new StringBuilder("nebula processHttpErrorUp23 error:"), r.A);
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

    public static void a(WebResourceRequest webResourceRequest, WebResourceError webResourceError, String str) {
        try {
            e eVar = r.A;
            eVar.a("nebula processErrorUp23 : " + str);
            int errorCode = webResourceError.getErrorCode();
            String string = webResourceError.getDescription().toString();
            String method = webResourceRequest.getMethod();
            Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
            String string2 = webResourceRequest.getUrl().toString();
            webResourceRequest.hasGesture();
            boolean zIsForMainFrame = webResourceRequest.isForMainFrame();
            g gVar = new g(string2);
            gVar.f38521c = zIsForMainFrame;
            gVar.a(j.a(errorCode));
            gVar.a(string);
            gVar.a(requestHeaders);
            gVar.b(method);
            eVar.a("nebula url:" + string2 + ", method:" + method + ", isForMainFrame:" + zIsForMainFrame);
            a(string2, j.a(errorCode));
            if (str != null && str.equals(string2)) {
                gVar.f38521c = true;
            }
            ai.a(gVar);
        } catch (Exception e2) {
            r.A.f("nebula processErrorUp23 error:" + e2.getMessage());
        }
    }
}

package com.networkbench.agent.impl.webview;

import com.networkbench.agent.impl.harvest.ActionData;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.HttpLibType;
import com.networkbench.agent.impl.util.aj;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    private static com.networkbench.agent.impl.c.e g = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f38519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f38520b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f38523f;
    public boolean d = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f38521c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f38522e = com.networkbench.agent.impl.data.a.h.a();

    public interface a {
        Map<String, String> b();
    }

    public l(String str) {
        this.f38519a = str;
    }

    public abstract ActionData a();

    public void a(ActionData actionData, com.networkbench.agent.impl.data.f fVar) {
        com.networkbench.agent.impl.c.g.d(" WebErrorBase addActionAndError :" + actionData.getUrl());
        if (fVar != null) {
            Harvest.addHttpError(actionData, fVar);
        } else {
            Harvest.addHttpTransaction(actionData);
        }
    }

    public void c() {
        String strD = r.u().d(System.currentTimeMillis());
        ActionData actionDataA = a();
        if (actionDataA != null) {
            actionDataA.setSuuid(strD);
            actionDataA.setDataTag(r.u().e());
            actionDataA.setUrl(ak.b(this.f38519a));
            actionDataA.setTotalTime(0);
            actionDataA.setCarrier("");
            actionDataA.setBytesReceived(0L);
            actionDataA.setBytesSent(0L);
            actionDataA.setAppData("");
            actionDataA.setTimestamp(Long.valueOf(System.currentTimeMillis()));
            HashMap map = null;
            com.networkbench.agent.impl.data.f fVar = null;
            map = null;
            actionDataA.setUrlParams(null);
            if (this.f38521c) {
                actionDataA.setHttpLibType(HttpLibType.Webview);
            } else {
                actionDataA.setHttpLibType(HttpLibType.WebViewResource);
            }
            actionDataA.setTime_to_connect(-1);
            actionDataA.setTime_first_package(0);
            actionDataA.setTime_ssl_handshake(-1);
            actionDataA.setTime_to_dns(-1);
            actionDataA.setIP("");
            aj.a(actionDataA);
            if (aj.a(ak.a(actionDataA.getUrl()))) {
                return;
            }
            if (actionDataA.getStatusCode() >= 400 || actionDataA.getStatusCode() == -1) {
                try {
                    if (this.f38523f != null) {
                        HashMap map2 = new HashMap();
                        try {
                            map2.putAll(this.f38523f.b());
                            map = map2;
                        } catch (Throwable unused) {
                            map = map2;
                            g.f("get response header error !");
                        }
                    }
                } catch (Throwable unused2) {
                }
                com.networkbench.agent.impl.data.f fVar2 = new com.networkbench.agent.impl.data.f(ak.a(actionDataA.getUrl()), "", ak.p(actionDataA.getUrl()), "", actionDataA.getStatusCode(), "", "", map, "", actionDataA.getRequestMethod(), actionDataA.getCdnVendorName(), actionDataA.getHttpLibType(), actionDataA.getAppPhase(), this.f38522e, actionDataA.requestHeaderParam, actionDataA.responseHeaderParam, r.u().e());
                fVar2.c(strD);
                fVar2.a(r.u().e());
                fVar = fVar2;
            }
            if (!this.d) {
                a(actionDataA, fVar);
            }
            g.a("isForMainFrame  :" + this.f38521c);
            if (this.f38521c && !this.d && JsPageUtil.isUpdate) {
                Harvest.addPagePerfData(m.a(System.currentTimeMillis(), this.f38519a, UUID.randomUUID().toString(), -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 0, "", "", actionDataA.getStatusCode()));
            }
        }
    }

    public void a(a aVar) {
        this.f38523f = aVar;
    }
}

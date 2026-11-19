package com.dynatrace.android.agent;

import com.dynatrace.android.agent.util.Utility;
import org.apache.http.Header;
import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes2.dex */
public class ApacheUtil {
    static {
        boolean z = Global.f27307a;
    }

    public static String a(HttpRequest httpRequest, String str) {
        if (httpRequest == null) {
            return null;
        }
        try {
            Header lastHeader = httpRequest.getLastHeader(str);
            if (lastHeader != null) {
                return lastHeader.getValue();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void b(HttpRequest httpRequest) {
        if (httpRequest != null) {
            try {
                httpRequest.removeHeaders("x-dynatrace");
            } catch (Exception unused) {
                Utility.g();
            }
        }
    }

    public static WebReqTag c(DTXAutoAction dTXAutoAction, HttpRequest httpRequest) {
        WebReqTag webReqTagS;
        if (!dTXAutoAction.t() || httpRequest == null || !dTXAutoAction.f27297h.f27481i.a(EventType.WEB_REQUEST) || (webReqTagS = dTXAutoAction.s()) == null) {
            return null;
        }
        Object obj = Dynatrace.f27305a;
        httpRequest.setHeader("x-dynatrace", webReqTagS.toString());
        dTXAutoAction.o(new CustomSegment(webReqTagS.toString(), 110, EventType.PLACEHOLDER, dTXAutoAction.q, dTXAutoAction.f27297h, dTXAutoAction.f27298i, true));
        return webReqTagS;
    }

    public static WebReqTag d(HttpRequest httpRequest) {
        WebReqTag webReqTagA;
        if (!Dynatrace.c() || httpRequest == null || (webReqTagA = AgentUtil.a()) == null) {
            return null;
        }
        httpRequest.setHeader("x-dynatrace", webReqTagA.toString());
        return webReqTagA;
    }
}

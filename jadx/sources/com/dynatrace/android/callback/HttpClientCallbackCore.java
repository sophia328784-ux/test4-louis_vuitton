package com.dynatrace.android.callback;

import com.dynatrace.android.agent.ApacheUtil;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.WebReqTag;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;

/* JADX INFO: loaded from: classes2.dex */
abstract class HttpClientCallbackCore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final WeakHashMap f27606a;

    static {
        boolean z = Global.f27307a;
        f27606a = new WeakHashMap();
    }

    public static CbWebReqTracker a(HttpRequest httpRequest, HttpHost httpHost) {
        WebReqTag webReqTagD;
        if (httpRequest != null && Dynatrace.c() && Session.a().f27481i.a(EventType.WEB_REQUEST)) {
            CbURIDesc cbURIDescA = CbURIDesc.a(httpRequest, httpHost);
            if (Global.f27307a) {
                Utility.n("Add WR to " + cbURIDescA.f27593a);
            }
            if (CallbackCore.f27589a.get()) {
                if (CallbackCore.f27590b.n) {
                    DTXAutoAction dTXAutoAction = DTXAutoAction.N;
                    if (dTXAutoAction == null || (webReqTagD = ApacheUtil.c(dTXAutoAction, httpRequest)) == null) {
                        webReqTagD = ApacheUtil.d(httpRequest);
                    }
                    if (webReqTagD != null) {
                        CbWebReqTracker cbWebReqTracker = new CbWebReqTracker(dTXAutoAction, webReqTagD.f27314b);
                        WeakHashMap weakHashMap = f27606a;
                        synchronized (weakHashMap) {
                            weakHashMap.put(httpRequest, cbWebReqTracker);
                        }
                        cbWebReqTracker.f27599e = webReqTagD;
                        return cbWebReqTracker;
                    }
                }
            } else if (Global.f27307a) {
                Utility.n("OneAgent not correctly initialized");
                return null;
            }
        }
        return null;
    }

    public static void b(UriReqStateParms uriReqStateParms) {
        HttpRequest httpRequest = uriReqStateParms.n;
        if (httpRequest == null || !CallbackCore.f27590b.n) {
            return;
        }
        if (Global.f27307a) {
            Utility.n(uriReqStateParms.f27616c + " of " + uriReqStateParms.f27615b + " of " + httpRequest.getClass().getSimpleName() + " to " + uriReqStateParms.c());
        }
        WeakHashMap weakHashMap = f27606a;
        CbWebReqTracker cbWebReqTrackerA = (CbWebReqTracker) weakHashMap.get(uriReqStateParms.n);
        if (cbWebReqTrackerA == null) {
            if (CbConstants$WrStates.PRE_EXEC != uriReqStateParms.f27616c) {
                return;
            } else {
                cbWebReqTrackerA = a(uriReqStateParms.n, uriReqStateParms.o);
            }
        }
        if (cbWebReqTrackerA == null) {
            return;
        }
        HttpRequest httpRequest2 = uriReqStateParms.n;
        Object obj = Dynatrace.f27305a;
        if (cbWebReqTrackerA.a(ApacheUtil.a(httpRequest2, "x-dynatrace"), ApacheUtil.a(httpRequest2, "x-dtc"))) {
            ApacheUtil.b(httpRequest2);
        }
        cbWebReqTrackerA.b(uriReqStateParms);
        if (cbWebReqTrackerA.f27598c) {
            synchronized (weakHashMap) {
                weakHashMap.remove(uriReqStateParms.n);
            }
            cbWebReqTrackerA.c(uriReqStateParms);
        }
    }
}

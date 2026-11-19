package com.dynatrace.android.callback;

import com.dynatrace.agent.events.enrichment.OkHttpModifierRegistry;
import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.android.agent.AgentUtil;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.WebReqTag;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import defpackage.ag0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public class OkCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f27607a = 0;

    static {
        boolean z = Global.f27307a;
    }

    public static void a(Call call, okhttp3.Callback callback) {
        if (!Global.f27308b.get()) {
            call.r(callback);
            return;
        }
        if (call == null) {
            return;
        }
        OkRequestStateParms okRequestStateParms = new OkRequestStateParms(call.getF77119c(), CbConstants$WrMethod.enqueue, CbConstants$WrStates.PRE_EXEC);
        f(okRequestStateParms);
        try {
            call.r(callback);
        } catch (RuntimeException e2) {
            Utility.b("tracked failed 'enqueue' method call");
            okRequestStateParms.f27621j = e2;
            g(okRequestStateParms, 0, null, e2.toString(), CbConstants$WrStates.POST_EXEC_ERR);
            throw e2;
        }
    }

    public static Response b(Call call) {
        if (!Global.f27308b.get()) {
            return call.execute();
        }
        OkRequestStateParms okRequestStateParms = new OkRequestStateParms(call.getF77119c(), CbConstants$WrMethod.execute, CbConstants$WrStates.PRE_EXEC);
        try {
            f(okRequestStateParms);
            Response responseExecute = call.execute();
            okRequestStateParms.j(responseExecute);
            okRequestStateParms.a(responseExecute.g.n("Server-Timing"));
            Protocol protocol = responseExecute.f76985c;
            g(okRequestStateParms, responseExecute.f76986e, (protocol == Protocol.HTTP_1_0 || protocol == Protocol.HTTP_1_1) ? responseExecute.d : null, null, CbConstants$WrStates.POST_EXEC_OK);
            return responseExecute;
        } catch (Exception e2) {
            Utility.b("tracked failed 'execute' method call");
            okRequestStateParms.f27621j = e2;
            g(okRequestStateParms, 0, null, e2.toString(), CbConstants$WrStates.POST_EXEC_ERR);
            throw e2;
        }
    }

    public static void c(OkHttpClient.Builder builder) {
        try {
            ArrayList arrayList = builder.f76962c;
            ArrayList arrayList2 = builder.d;
            OkInterceptor okInterceptor = OkInterceptor.f27609a;
            arrayList.remove(okInterceptor);
            arrayList.add(0, okInterceptor);
            OkHeaderInterceptor okHeaderInterceptor = OkHeaderInterceptor.f27608a;
            arrayList2.remove(okHeaderInterceptor);
            arrayList2.add(okHeaderInterceptor);
        } catch (Exception e2) {
            e2.getMessage();
            Utility.g();
        }
    }

    public static void d(Call call, IOException iOException) {
        CbWebReqTracker cbWebReqTracker;
        if (!Global.f27308b.get() || call == null || (cbWebReqTracker = (CbWebReqTracker) OkInterceptor.f27610b.get(call.getF77119c())) == null) {
            return;
        }
        OkRequestStateParms okRequestStateParms = cbWebReqTracker.d;
        okRequestStateParms.f27621j = iOException;
        g(okRequestStateParms, 0, null, iOException.toString(), CbConstants$WrStates.POST_EXEC_ERR);
    }

    public static void e(Call call, Response response) {
        CbWebReqTracker cbWebReqTracker;
        if (!Global.f27308b.get() || call == null || (cbWebReqTracker = (CbWebReqTracker) OkInterceptor.f27610b.get(call.getF77119c())) == null) {
            return;
        }
        cbWebReqTracker.d.j(response);
        cbWebReqTracker.d.getClass();
        cbWebReqTracker.d.a(response.g.n("Server-Timing"));
        Protocol protocol = response.f76985c;
        g(cbWebReqTracker.d, response.f76986e, (protocol == Protocol.HTTP_1_0 || protocol == Protocol.HTTP_1_1) ? response.d : null, null, CbConstants$WrStates.POST_EXEC_OK);
    }

    public static void f(OkRequestStateParms okRequestStateParms) {
        WebReqTag webReqTagA;
        if (okRequestStateParms.m == null || !CallbackCore.f27590b.n) {
            return;
        }
        if (Global.f27307a) {
            Utility.n(String.format("%s of %s of %s to %s (%d)", okRequestStateParms.f27616c, okRequestStateParms.f27615b, Request.class.getName(), okRequestStateParms.c(), Integer.valueOf(okRequestStateParms.m.hashCode())));
        }
        WeakHashMap weakHashMap = OkInterceptor.f27610b;
        CbWebReqTracker cbWebReqTracker = (CbWebReqTracker) weakHashMap.get(okRequestStateParms.m);
        WebContext webContextA = null;
        if (cbWebReqTracker == null && CbConstants$WrStates.PRE_EXEC == okRequestStateParms.f27616c) {
            Request request = okRequestStateParms.m;
            if (request != null) {
                if (CallbackCore.f27589a.get()) {
                    if (Dynatrace.c() && Session.a().f27481i.a(EventType.WEB_REQUEST)) {
                        if (request.f76971c.a("x-dynatrace") == null) {
                            String strA = request.f76971c.a("x-dtc");
                            if (strA != null) {
                                if (Global.f27307a) {
                                    Utility.n("Ignore WR, request already tagged with x-dtc: ".concat(strA));
                                }
                            } else if (!CallbackCore.i(request.f76969a.f76925i)) {
                                if (Global.f27307a) {
                                    Utility.n(String.format("Add WR %s to %s (hc=%d)", Request.class.getName(), okRequestStateParms.c(), Integer.valueOf(okRequestStateParms.m.hashCode())));
                                }
                                if (CallbackCore.f27590b.n) {
                                    DTXAutoAction dTXAutoAction = DTXAutoAction.N;
                                    if (dTXAutoAction == null || (webReqTagA = dTXAutoAction.u()) == null) {
                                        webReqTagA = AgentUtil.a();
                                    }
                                    if (webReqTagA != null) {
                                        CbWebReqTracker cbWebReqTracker2 = new CbWebReqTracker(dTXAutoAction, webReqTagA.f27314b);
                                        cbWebReqTracker2.d = okRequestStateParms;
                                        cbWebReqTracker2.f27599e = webReqTagA;
                                        synchronized (weakHashMap) {
                                            weakHashMap.put(request, cbWebReqTracker2);
                                        }
                                        cbWebReqTracker = cbWebReqTracker2;
                                    }
                                }
                            } else if (Global.f27307a) {
                                Utility.n("Skip WR (URL filtered): " + request.f76969a);
                            }
                        } else if (Global.f27307a) {
                            Utility.n(String.format("Ignore WR %s to %s (hc=%d)", Request.class.getName(), okRequestStateParms.c(), Integer.valueOf(okRequestStateParms.m.hashCode())));
                        }
                    }
                } else if (Global.f27307a) {
                    Utility.n("OneAgent not correctly initialized");
                }
                cbWebReqTracker = null;
            } else {
                cbWebReqTracker = null;
            }
        }
        if (cbWebReqTracker == null) {
            return;
        }
        cbWebReqTracker.b(okRequestStateParms);
        if (cbWebReqTracker.f27598c) {
            synchronized (weakHashMap) {
                weakHashMap.remove(okRequestStateParms.m);
            }
            Response response = okRequestStateParms.n;
            if (response != null) {
                ConcurrentLinkedQueue concurrentLinkedQueue = OkHttpModifierRegistry.f26768a;
                Request request2 = okRequestStateParms.m;
                request2.getClass();
                if (!OkHttpModifierRegistry.f26768a.isEmpty()) {
                    webContextA = OkHttpModifierRegistry.a(new ag0(request2, response, 22));
                }
            } else {
                Exception exc = okRequestStateParms.f27621j;
                if (exc != null) {
                    ConcurrentLinkedQueue concurrentLinkedQueue2 = OkHttpModifierRegistry.f26768a;
                    Request request3 = okRequestStateParms.m;
                    request3.getClass();
                    if (!OkHttpModifierRegistry.f26768a.isEmpty()) {
                        webContextA = OkHttpModifierRegistry.a(new ag0(request3, exc, 23));
                    }
                } else if (Global.f27307a) {
                    Utility.n("Both response and exception are null");
                }
            }
            okRequestStateParms.o = webContextA;
            cbWebReqTracker.c(okRequestStateParms);
        }
    }

    public static void g(WebReqStateParms webReqStateParms, int i2, String str, String str2, CbConstants$WrStates cbConstants$WrStates) {
        if (webReqStateParms != null) {
            webReqStateParms.d = i2;
            if (str != null) {
                webReqStateParms.f27617e = str;
                webReqStateParms.f27618f = str;
            } else {
                webReqStateParms.f27617e = str2;
            }
            webReqStateParms.f27616c = cbConstants$WrStates;
            f((OkRequestStateParms) webReqStateParms);
        }
    }
}

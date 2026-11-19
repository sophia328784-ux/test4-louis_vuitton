package com.dynatrace.android.callback;

import com.dynatrace.agent.events.TracestateHeader;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.WebReqTag;
import com.dynatrace.android.agent.mixed.WebRequestTraceContext;
import com.dynatrace.android.agent.mixed.WebRequestTraceContextInitializer;
import com.dynatrace.android.agent.util.Utility;
import defpackage.fc;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Reflection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes2.dex */
class OkInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OkInterceptor f27609a = new OkInterceptor();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f27610b;

    static {
        boolean z = Global.f27307a;
        f27610b = new WeakHashMap();
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        Request request;
        WebReqTag webReqTag;
        Request request2;
        if (!Global.f27308b.get()) {
            RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
            return realInterceptorChain.b(realInterceptorChain.f77173e);
        }
        RealInterceptorChain realInterceptorChain2 = (RealInterceptorChain) chain;
        Request request3 = realInterceptorChain2.f77173e;
        WeakHashMap weakHashMap = f27610b;
        if (request3 == null) {
            request = null;
            break;
        }
        if (weakHashMap.containsKey(request3)) {
            request = request3;
        } else {
            Object objA = request3.a(Reflection.f71922a.b(Object.class));
            request = request3;
            while (true) {
                if (request == objA || !(objA instanceof Request)) {
                    request = null;
                    break;
                }
                request = (Request) objA;
                if (weakHashMap.containsKey(request)) {
                    break;
                }
                objA = request.a(Reflection.f71922a.b(Object.class));
            }
        }
        CbWebReqTracker cbWebReqTracker = request == null ? null : (CbWebReqTracker) f27610b.get(request);
        if (cbWebReqTracker == null) {
            if (Global.f27307a) {
                String str = request3.f76969a.f76925i;
                int iHashCode = request != null ? request.hashCode() : 0;
                int iHashCode2 = request3.hashCode();
                StringBuilder sbR = fc.r(iHashCode, "missed request ", str, " - orig hc=", ", cur hc=");
                sbR.append(iHashCode2);
                Utility.n(sbR.toString());
            }
            return realInterceptorChain2.b(request3);
        }
        Object obj = Dynatrace.f27305a;
        request3.getClass();
        String strA = request3.f76971c.a("x-dynatrace");
        if (strA != null) {
            if (Global.f27307a) {
                Utility.n("Existing " + strA + " - linked to hc=" + (request != null ? request.hashCode() : 0));
            }
            WeakHashMap weakHashMap2 = f27610b;
            synchronized (weakHashMap2) {
                weakHashMap2.remove(request);
            }
            DTXAutoAction dTXAutoAction = cbWebReqTracker.f27597b;
            if (dTXAutoAction != null && (webReqTag = cbWebReqTracker.f27599e) != null) {
                dTXAutoAction.F(webReqTag.d);
            }
            cbWebReqTracker.f27599e = null;
            return realInterceptorChain2.b(request3);
        }
        Request.Builder builder = new Request.Builder(request3);
        OkRequestStateParms okRequestStateParms = cbWebReqTracker.d;
        WebReqTag webReqTag2 = cbWebReqTracker.f27599e;
        if (webReqTag2 != null) {
            if (webReqTag2.f27314b.f27483k) {
                TracestateHeader.TracestateContext tracestateContext = TracestateHeader.f26755a;
                if (TracestateHeader.b(request3.f76971c.a("tracestate"))) {
                    Utility.b("Request already instrumented by Dynatrace, skipping Gen3 monitoring");
                } else {
                    WebRequestTraceContextInitializer.TraceInitializationResult traceInitializationResultA = WebRequestTraceContextInitializer.a(request3.f76971c.a("traceparent"), request3.f76971c.a("tracestate"), TracestateHeader.f26756b);
                    String str2 = traceInitializationResultA.f27583b;
                    if (str2 != null) {
                        builder.b("traceparent", str2);
                        Utility.b("Set traceparent: ".concat(str2));
                    }
                    String str3 = traceInitializationResultA.f27584c;
                    if (str3 != null) {
                        builder.b("tracestate", str3);
                        Utility.b("Set tracestate: ".concat(str3));
                    }
                    WebRequestTraceContext webRequestTraceContext = traceInitializationResultA.f27582a;
                    cbWebReqTracker.m = webRequestTraceContext;
                    Utility.b("traceId: " + webRequestTraceContext.f27579a + " spanId: " + webRequestTraceContext.f27580b + " hint: " + webRequestTraceContext.f27581c);
                }
            }
            builder.b("x-dynatrace", webReqTag2.toString());
            request2 = new Request(builder);
            if (Global.f27307a) {
                Utility.n(String.format("Tagged WR %s (hc=%d) with %s", okRequestStateParms.c(), Integer.valueOf(okRequestStateParms.m.hashCode()), webReqTag2));
            }
        } else {
            cbWebReqTracker.f27599e = null;
            request2 = new Request(builder);
        }
        return realInterceptorChain2.b(request2);
    }
}

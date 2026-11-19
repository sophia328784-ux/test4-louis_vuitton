package com.dynatrace.android.callback;

import com.dynatrace.android.agent.util.Utility;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes2.dex */
public class OkHeaderInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OkHeaderInterceptor f27608a = new OkHeaderInterceptor();

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Request request = realInterceptorChain.f77173e;
        request.f76971c.i();
        Response responseB = realInterceptorChain.b(request);
        responseB.g.i();
        Utility.b("okhttp headers tracked");
        return responseB;
    }
}

package com.vuitton.android.data.net.auth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.net.interceptor.SuspendInterceptor;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/net/auth/ProactiveTokenRefreshInterceptor;", "Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;", "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;", "tokenRefreshCoordinator", "<init>", "(Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProactiveTokenRefreshInterceptor extends SuspendInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TokenRefreshCoordinator f47020a;

    public ProactiveTokenRefreshInterceptor(TokenRefreshCoordinator tokenRefreshCoordinator) {
        tokenRefreshCoordinator.getClass();
        this.f47020a = tokenRefreshCoordinator;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.net.interceptor.SuspendInterceptor
    public final Object a(RealInterceptorChain realInterceptorChain, ContinuationImpl continuationImpl) {
        ProactiveTokenRefreshInterceptor$interceptSuspendable$1 proactiveTokenRefreshInterceptor$interceptSuspendable$1;
        if (continuationImpl instanceof ProactiveTokenRefreshInterceptor$interceptSuspendable$1) {
            proactiveTokenRefreshInterceptor$interceptSuspendable$1 = (ProactiveTokenRefreshInterceptor$interceptSuspendable$1) continuationImpl;
            int i2 = proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47023e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47023e = i2 - Integer.MIN_VALUE;
            } else {
                proactiveTokenRefreshInterceptor$interceptSuspendable$1 = new ProactiveTokenRefreshInterceptor$interceptSuspendable$1(this, continuationImpl);
            }
        } else {
            proactiveTokenRefreshInterceptor$interceptSuspendable$1 = new ProactiveTokenRefreshInterceptor$interceptSuspendable$1(this, continuationImpl);
        }
        Object obj = proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47022c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47023e;
        if (i3 == 0) {
            ResultKt.b(obj);
            proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47021b = realInterceptorChain;
            proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47023e = 1;
            if (this.f47020a.b(proactiveTokenRefreshInterceptor$interceptSuspendable$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            realInterceptorChain = proactiveTokenRefreshInterceptor$interceptSuspendable$1.f47021b;
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return realInterceptorChain.b(realInterceptorChain.getF77173e());
    }
}

package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/GuestAuthenticatorInterceptor;", "Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lkotlin/Function0;", "", "isTwist", "<init>", "(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lkotlin/jvm/functions/Function0;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GuestAuthenticatorInterceptor extends SuspendInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TwistAuthRepository f47071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f47072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f47073c;

    public GuestAuthenticatorInterceptor(TwistAuthRepository twistAuthRepository, AuthTokenRepository authTokenRepository, Function0<Boolean> function0) {
        twistAuthRepository.getClass();
        authTokenRepository.getClass();
        function0.getClass();
        this.f47071a = twistAuthRepository;
        this.f47072b = authTokenRepository;
        this.f47073c = function0;
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006d, code lost:
    
        if (r5.f47071a.d(r0) == r1) goto L25;
     */
    @Override // com.vuitton.android.data.net.interceptor.SuspendInterceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(okhttp3.internal.http.RealInterceptorChain r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor$interceptSuspendable$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor$interceptSuspendable$1 r0 = (com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor$interceptSuspendable$1) r0
            int r1 = r0.f47076e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47076e = r1
            goto L18
        L13:
            com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor$interceptSuspendable$1 r0 = new com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor$interceptSuspendable$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f47075c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47076e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L32
            okhttp3.Interceptor$Chain r5 = r0.f47074b
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            r7.getClass()
            r6 = r5
            goto L70
        L32:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L39:
            okhttp3.Interceptor$Chain r6 = r0.f47074b
            kotlin.ResultKt.b(r7)
            goto L5d
        L3f:
            kotlin.ResultKt.b(r7)
            kotlin.jvm.functions.Function0 r7 = r5.f47073c
            java.lang.Object r7 = r7.mo47invoke()
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L70
            r0.f47074b = r6
            r0.f47076e = r4
            com.vuitton.android.domain.repository.AuthTokenRepository r7 = r5.f47072b
            java.lang.Object r7 = r7.d(r0)
            if (r7 != r1) goto L5d
            goto L6f
        L5d:
            com.vuitton.foundation.model.domain.model.authentication.AuthToken r7 = (com.vuitton.foundation.model.domain.model.authentication.AuthToken) r7
            boolean r7 = r7 instanceof com.vuitton.foundation.model.domain.model.authentication.AuthToken.Twist
            if (r7 != 0) goto L70
            r0.f47074b = r6
            r0.f47076e = r3
            com.vuitton.android.domain.repository.TwistAuthRepository r5 = r5.f47071a
            java.lang.Object r5 = r5.d(r0)
            if (r5 != r1) goto L70
        L6f:
            return r1
        L70:
            okhttp3.Request r5 = r6.getF77173e()
            okhttp3.Response r5 = r6.b(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor.a(okhttp3.internal.http.RealInterceptorChain, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

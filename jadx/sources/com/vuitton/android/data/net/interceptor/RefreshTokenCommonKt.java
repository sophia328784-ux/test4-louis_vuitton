package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {DbParams.KEY_DATA}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RefreshTokenCommonKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
    
        if (r7.invoke(r0) == r1) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(retrofit2.Response r5, kotlin.jvm.functions.Function2 r6, kotlin.jvm.functions.Function1 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) throws com.vuitton.foundation.model.domain.error.session.SessionException.RefreshTokenUnknownException, com.vuitton.foundation.model.domain.error.session.SessionException.RefreshTokenExpiredException {
        /*
            boolean r0 = r8 instanceof com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt$mapRefreshResponseOrThrow$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt$mapRefreshResponseOrThrow$1 r0 = (com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt$mapRefreshResponseOrThrow$1) r0
            int r1 = r0.f47088c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47088c = r1
            goto L18
        L13:
            com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt$mapRefreshResponseOrThrow$1 r0 = new com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt$mapRefreshResponseOrThrow$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f47087b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47088c
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 == r3) goto L2d
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L2d:
            kotlin.ResultKt.b(r8)
            goto L66
        L31:
            kotlin.ResultKt.b(r8)
            return r8
        L35:
            kotlin.ResultKt.b(r8)
            okhttp3.Response r8 = r5.f79449a
            boolean r2 = r8.r
            if (r2 == 0) goto L4c
            java.lang.Object r5 = r5.f79450b
            if (r5 == 0) goto L4c
            r0.f47088c = r4
            java.lang.Object r5 = r6.invoke(r5, r0)
            if (r5 != r1) goto L4b
            goto L65
        L4b:
            return r5
        L4c:
            int r5 = r8.f76986e
            r6 = 401(0x191, float:5.62E-43)
            if (r5 == r6) goto L5d
            r6 = 400(0x190, float:5.6E-43)
            if (r5 != r6) goto L57
            goto L5d
        L57:
            com.vuitton.foundation.model.domain.error.session.SessionException$RefreshTokenUnknownException r5 = new com.vuitton.foundation.model.domain.error.session.SessionException$RefreshTokenUnknownException
            r5.<init>()
            throw r5
        L5d:
            r0.f47088c = r3
            java.lang.Object r5 = r7.invoke(r0)
            if (r5 != r1) goto L66
        L65:
            return r1
        L66:
            com.vuitton.foundation.model.domain.error.session.SessionException$RefreshTokenExpiredException r5 = new com.vuitton.foundation.model.domain.error.session.SessionException$RefreshTokenExpiredException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt.a(retrofit2.Response, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}

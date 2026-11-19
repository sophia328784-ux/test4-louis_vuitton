package com.vuitton.android.data.net.auth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.auth.ProactiveTokenRefreshInterceptor", f = "ProactiveTokenRefreshInterceptor.kt", l = {19}, m = "interceptSuspendable", v = 2)
final class ProactiveTokenRefreshInterceptor$interceptSuspendable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RealInterceptorChain f47021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47022c;
    public final /* synthetic */ ProactiveTokenRefreshInterceptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47023e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProactiveTokenRefreshInterceptor$interceptSuspendable$1(ProactiveTokenRefreshInterceptor proactiveTokenRefreshInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = proactiveTokenRefreshInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47022c = obj;
        this.f47023e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}

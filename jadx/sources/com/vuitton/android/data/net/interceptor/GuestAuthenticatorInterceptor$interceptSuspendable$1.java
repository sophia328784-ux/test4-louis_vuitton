package com.vuitton.android.data.net.interceptor;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.interceptor.GuestAuthenticatorInterceptor", f = "GuestAuthenticatorInterceptor.kt", l = {16, 19}, m = "interceptSuspendable", v = 2)
final class GuestAuthenticatorInterceptor$interceptSuspendable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Interceptor.Chain f47074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47075c;
    public final /* synthetic */ GuestAuthenticatorInterceptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47076e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GuestAuthenticatorInterceptor$interceptSuspendable$1(GuestAuthenticatorInterceptor guestAuthenticatorInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = guestAuthenticatorInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47075c = obj;
        this.f47076e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}

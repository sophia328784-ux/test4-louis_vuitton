package com.vuitton.android.data.net.interceptor;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.interceptor.DeviceIdInterceptor", f = "DeviceIdInterceptor.kt", l = {16}, m = "interceptSuspendable", v = 2)
final class DeviceIdInterceptor$interceptSuspendable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RealInterceptorChain f47067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47068c;
    public final /* synthetic */ DeviceIdInterceptor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47069e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceIdInterceptor$interceptSuspendable$1(DeviceIdInterceptor deviceIdInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deviceIdInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47068c = obj;
        this.f47069e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}

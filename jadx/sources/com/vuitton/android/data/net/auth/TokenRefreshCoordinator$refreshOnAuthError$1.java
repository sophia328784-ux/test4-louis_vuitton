package com.vuitton.android.data.net.auth;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.auth.TokenRefreshCoordinator", f = "TokenRefreshCoordinator.kt", l = {156, 110, 121}, m = "refreshOnAuthError-0E7RQCE", v = 2)
final class TokenRefreshCoordinator$refreshOnAuthError$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47042c;
    public Mutex d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47044f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TokenRefreshCoordinator f47045h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f47046i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenRefreshCoordinator$refreshOnAuthError$1(TokenRefreshCoordinator tokenRefreshCoordinator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47045h = tokenRefreshCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.g = obj;
        this.f47046i |= Integer.MIN_VALUE;
        Object objC = this.f47045h.c(null, null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}

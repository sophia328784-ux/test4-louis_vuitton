package com.vuitton.android.data.net.auth;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.auth.TokenRefreshCoordinator", f = "TokenRefreshCoordinator.kt", l = {126, CertificateBody.profileType}, m = "performRefresh-gIAlu-s", v = 2)
final class TokenRefreshCoordinator$performRefresh$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AuthToken f47030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47031c;
    public final /* synthetic */ TokenRefreshCoordinator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47032e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenRefreshCoordinator$performRefresh$1(TokenRefreshCoordinator tokenRefreshCoordinator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = tokenRefreshCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47031c = obj;
        this.f47032e |= Integer.MIN_VALUE;
        int i2 = TokenRefreshCoordinator.f47024h;
        Object objA = this.d.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

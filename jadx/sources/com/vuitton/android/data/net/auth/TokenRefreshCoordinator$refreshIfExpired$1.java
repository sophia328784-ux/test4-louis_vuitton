package com.vuitton.android.data.net.auth;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.Mutex;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.auth.TokenRefreshCoordinator", f = "TokenRefreshCoordinator.kt", l = {EACTags.ADDRESS, 158, 76, 92}, m = "refreshIfExpired-IoAF18A", v = 2)
final class TokenRefreshCoordinator$refreshIfExpired$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47034c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47036f;
    public Mutex g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f47037h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f47038i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ TokenRefreshCoordinator f47039j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f47040k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenRefreshCoordinator$refreshIfExpired$1(TokenRefreshCoordinator tokenRefreshCoordinator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47039j = tokenRefreshCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47038i = obj;
        this.f47040k |= Integer.MIN_VALUE;
        Object objB = this.f47039j.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}

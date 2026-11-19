package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {173, 177, 182, 193, 194}, m = "refreshToken-gIAlu-s", v = 2)
final class TwistAuthRepositoryImpl$refreshToken$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AuthToken.Twist f48127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AuthToken.Twist f48128c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f48130f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48131h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f48132i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$refreshToken$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48131h = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f48132i |= Integer.MIN_VALUE;
        Object objO = this.f48131h.o(null, this);
        return objO == CoroutineSingletons.COROUTINE_SUSPENDED ? objO : new Result(objO);
    }
}

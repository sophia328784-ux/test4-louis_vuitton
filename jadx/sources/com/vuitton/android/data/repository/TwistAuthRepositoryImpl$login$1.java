package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {118}, m = "login-gIAlu-s", v = 2)
final class TwistAuthRepositoryImpl$login$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48112c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$login$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48112c = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48111b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f48112c.h(null, this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}

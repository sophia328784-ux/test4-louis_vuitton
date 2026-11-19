package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {296}, m = "forgetPasswordInitiate-gIAlu-s", v = 2)
final class TwistAuthRepositoryImpl$forgetPasswordInitiate$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f48102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48103c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$forgetPasswordInitiate$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48103c = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48102b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objL = this.f48103c.l(null, this);
        return objL == CoroutineSingletons.COROUTINE_SUSPENDED ? objL : new Result(objL);
    }
}

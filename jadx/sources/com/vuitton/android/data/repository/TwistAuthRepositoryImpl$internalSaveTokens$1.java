package com.vuitton.android.data.repository;

import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {495, 497}, m = "internalSaveTokens-gIAlu-s", v = 2)
final class TwistAuthRepositoryImpl$internalSaveTokens$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Result f48108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f48109c;
    public final /* synthetic */ TwistAuthRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f48110e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$internalSaveTokens$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48109c = obj;
        this.f48110e |= Integer.MIN_VALUE;
        Set set = TwistAuthRepositoryImpl.f48080j;
        Object objR = this.d.r(null, this);
        return objR == CoroutineSingletons.COROUTINE_SUSPENDED ? objR : new Result(objR);
    }
}

package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {76}, m = "activateDynamicYield-IoAF18A", v = 2)
final class DynamicYieldRepositoryImpl$activateDynamicYield$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldRepositoryImpl f47660c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$activateDynamicYield$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47660c = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47659b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objK = this.f47660c.k(this);
        return objK == CoroutineSingletons.COROUTINE_SUSPENDED ? objK : new Result(objK);
    }
}

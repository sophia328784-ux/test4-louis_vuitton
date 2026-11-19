package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ExclusiveSalesRepositoryImpl", f = "ExclusiveSalesRepositoryImpl.kt", l = {13}, m = "getUserExclusiveSalesInfo-oSX4g0Q", v = 2)
final class ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ExclusiveSalesRepositoryImpl f47711c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExclusiveSalesRepositoryImpl$getUserExclusiveSalesInfo$1(ExclusiveSalesRepositoryImpl exclusiveSalesRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47711c = exclusiveSalesRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47710b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47711c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

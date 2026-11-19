package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesBffRepositoryImpl", f = "CareServicesBffRepositoryImpl.kt", l = {33}, m = "getCareServiceDetail-6ahOT10", v = 2)
final class CareServicesBffRepositoryImpl$getCareServiceDetail$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRepositoryImpl f47442c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRepositoryImpl$getCareServiceDetail$1(CareServicesBffRepositoryImpl careServicesBffRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47442c = careServicesBffRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47441b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objH = this.f47442c.h(null, this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}

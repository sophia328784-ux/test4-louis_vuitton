package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.dynamicyield.DYPageType;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {102, 109, 120}, m = "getChooseVariation-0E7RQCE", v = 2)
final class DynamicYieldRepositoryImpl$getChooseVariation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DYPageType f47669c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DynamicYieldRepositoryImpl f47670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47671f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$getChooseVariation$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47670e = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f47671f |= Integer.MIN_VALUE;
        Object objF = this.f47670e.f(null, null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}

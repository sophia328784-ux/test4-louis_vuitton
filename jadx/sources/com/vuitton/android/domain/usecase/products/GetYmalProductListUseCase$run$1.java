package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.GetYmalProductListUseCase", f = "GetYmalProductListUseCase.kt", l = {17, 18, 19}, m = "run-TPjgr7Q", v = 2)
final class GetYmalProductListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50338c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GetYmalProductListUseCase f50339e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f50340f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetYmalProductListUseCase$run$1(GetYmalProductListUseCase getYmalProductListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50339e = getYmalProductListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f50340f |= Integer.MIN_VALUE;
        Object objA = this.f50339e.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

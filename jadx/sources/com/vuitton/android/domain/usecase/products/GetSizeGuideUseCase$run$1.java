package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.products.GetSizeGuideUseCase", f = "GetSizeGuideUseCase.kt", l = {18, 22, 26}, m = "run-Uw3ZIDA", v = 2)
final class GetSizeGuideUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f50329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f50330c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GetSizeGuideUseCase f50331e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f50332f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSizeGuideUseCase$run$1(GetSizeGuideUseCase getSizeGuideUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50331e = getSizeGuideUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f50332f |= Integer.MIN_VALUE;
        Object objA = this.f50331e.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

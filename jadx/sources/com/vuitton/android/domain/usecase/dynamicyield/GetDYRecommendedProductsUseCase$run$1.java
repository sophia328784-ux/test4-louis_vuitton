package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.foundation.model.domain.model.dynamicyield.DYVariation;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.dynamicyield.GetDYRecommendedProductsUseCase", f = "GetDYRecommendedProductsUseCase.kt", l = {23, 35}, m = "run-IoAF18A", v = 2)
final class GetDYRecommendedProductsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f49932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f49933c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public DYVariation f49934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f49935f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetDYRecommendedProductsUseCase f49936h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f49937i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetDYRecommendedProductsUseCase$run$1(GetDYRecommendedProductsUseCase getDYRecommendedProductsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49936h = getDYRecommendedProductsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f49937i |= Integer.MIN_VALUE;
        Object objA = this.f49936h.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}

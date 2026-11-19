package com.vuitton.android.domain.usecase.pdp.vto;

import com.vuitton.android.domain.repository.ProductRepository;
import com.vuitton.foundation.model.domain.model.product.vto.ShadeFinderRequest;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;", "", "Lcom/vuitton/android/domain/repository/ProductRepository;", "productRepository", "<init>", "(Lcom/vuitton/android/domain/repository/ProductRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetShadeFinderRecommendationsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductRepository f50197a;

    @Inject
    public GetShadeFinderRecommendationsUseCase(ProductRepository productRepository) {
        productRepository.getClass();
        this.f50197a = productRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ShadeFinderRequest shadeFinderRequest, ContinuationImpl continuationImpl) {
        GetShadeFinderRecommendationsUseCase$run$1 getShadeFinderRecommendationsUseCase$run$1;
        if (continuationImpl instanceof GetShadeFinderRecommendationsUseCase$run$1) {
            getShadeFinderRecommendationsUseCase$run$1 = (GetShadeFinderRecommendationsUseCase$run$1) continuationImpl;
            int i2 = getShadeFinderRecommendationsUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getShadeFinderRecommendationsUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getShadeFinderRecommendationsUseCase$run$1 = new GetShadeFinderRecommendationsUseCase$run$1(this, continuationImpl);
            }
        } else {
            getShadeFinderRecommendationsUseCase$run$1 = new GetShadeFinderRecommendationsUseCase$run$1(this, continuationImpl);
        }
        Object obj = getShadeFinderRecommendationsUseCase$run$1.f50198b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getShadeFinderRecommendationsUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getShadeFinderRecommendationsUseCase$run$1.d = 1;
            Object objC = this.f50197a.c(shadeFinderRequest, getShadeFinderRecommendationsUseCase$run$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
